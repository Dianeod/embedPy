/ exclude packages from tests/requirements.txt based on python major minor version
\l p.q
show pexclude:select py37:enlist"tensorflow*",py38:enlist"tensorflow*" from (0#`)!()
show pver:`$"py",raze string .p.import[`sys;`:version_info][;`]each`:major`:minor
`:tests/requirements_filtered.txt 0:u where not any(u:read0`:tests/requirements.txt)like/:0N!pexclude pver
\\
