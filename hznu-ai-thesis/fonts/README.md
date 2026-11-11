# 字体文件

正式排版需要宋体、黑体、楷体和 Times New Roman。

Windows 已安装这四种字体时，直接保留 `main.tex` 中的 `fonts=windows`。

在其他系统或 Overleaf 上使用相同字体时，在确认自己具有合法使用权限后，将以下文件放入本目录，并将选项改为 `fonts=files`：

- `simsun.ttc`：宋体
- `simhei.ttf`：黑体
- `simkai.ttf`：楷体
- `times.ttf`、`timesbd.ttf`、`timesi.ttf`、`timesbi.ttf`：Times New Roman 常规、粗体、斜体、粗斜体

文件名区分大小写。不随模板分发这些字体；本目录已加入 Git 忽略规则。不要把系统字体文件上传到公开 GitHub 仓库。

`fonts=fandol` 使用 Fandol 和 TeX Gyre，仅供跨平台草稿编译。它会改变字体和断行，不能据此认定满足原 Word 的字体要求。
