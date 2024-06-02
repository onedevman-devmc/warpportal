const path = require("path");
const fs = require("fs");
const archiver = require("archiver");

// 

const rootDir = path.join(__dirname, "../../");
const packageInfo = require(path.join(rootDir, "package.json"))

const archiveFilepath = `${path.join(rootDir, `dist/${packageInfo.name}`)}.zip`;
fs.mkdirSync(path.dirname(archiveFilepath), { recursive: true });

const out = fs.createWriteStream(archiveFilepath)
const archive = archiver("zip", {
    zlib: { level: 9 }
});

try {
    archive.pipe(out);

    for(let i = 0; i < packageInfo.files.length; i++) {
        const file = packageInfo.files[i]
        const filepath = path.join(rootDir, file);
        
        if(fs.existsSync(filepath)) {
            if(fs.statSync(filepath).isDirectory()) {
                archive.directory(filepath, file);
            }
            else {
                archive.file(filepath, { name: file });
            }
        }
        else {
            throw new Error(`File '${file}' is missing.`);
        }
    }

    archive.finalize();
}
catch(e) {
    archive.abort();
    out.close();
    if(fs.existsSync(archiveFilepath)) fs.unlinkSync(archiveFilepath);
    console.error(e);
}