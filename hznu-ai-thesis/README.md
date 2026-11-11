# 湖州师范大学人工智能学院硕士论文 LaTeX 模板

根据用户提供的《湖州师范大学硕士学位论文撰写模版（人工智能学院2026版）.doc》转换的非官方模板。保留完整论文结构，按原文件正文和批注框中的明确要求设置格式。该项目未获得学校官方认证。

## 开始使用

1. 安装包含中文组件的 TeX Live，或安装 MacTeX / MiKTeX 并补全所需宏包。
2. 编辑 `thesis-info.tex`，填写题目、姓名、学号、导师、学位类型、专业、研究方向、提交日期和分类号。
3. 将示例章节、摘要、创新性成果及致谢替换为自己的内容。
4. 在项目根目录执行 `latexmk -xelatex main.tex`，生成 `main.pdf`。Windows 也可运行 `./build.ps1`，macOS/Linux 可运行 `sh build.sh`。

没有 latexmk 时依次运行：

```sh
xelatex -interaction=nonstopmode -halt-on-error main.tex
bibtex main
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
```

编译器必须为 **XeLaTeX**。参考文献使用 **BibTeX**。不要改为 pdfLaTeX 或 Biber。

## 字体与 Overleaf

默认 `fonts=windows` 严格使用宋体、黑体、楷体和 Times New Roman。缺少任一字体时会报错，不会静默替换。

在 Overleaf 中上传整个项目，选择 `main.tex` 为主文件、XeLaTeX 为编译器。正式排版请依照 [字体说明](fonts/README.md) 自行提供合法字体并改为 `fonts=files`。只需试编译时可改为 `fonts=fandol`，但它不满足原模板的字体要求。项目不包含受限字体。

## 项目结构

| 文件或目录 | 用途 |
| --- | --- |
| `main.tex` | 论文入口，控制各部分顺序 |
| `thesis-info.tex` | 封面与论文信息 |
| `hznu-ai-thesis.cls` | 页面、字体、标题、页眉页码、图表等格式 |
| `frontmatter/` | 中英文摘要、缩略词表 |
| `chapters/` | 正文五章及图表、公式和引用示例 |
| `backmatter/` | 附录、简历与创新性成果、致谢 |
| `references.bib` | 参考文献数据 |
| `hznu-gbt7714-numerical.bst` | 按原模板调整的顺序编码参考文献样式 |
| `assets/` | 从原Word提取的校名与校徽，保持原图片不变 |
| `docs/` | 格式核对、来源记录及验证结果 |
| `example/` | 经过编译的示例PDF |

## 主要格式

使用 A4；上下边距 2.54 cm，左右 3.17 cm；页眉距上边缘 1.5 cm，页脚基线距下边缘 1.75 cm。正文中文宋体、英文及数字 Times New Roman，小四号，首行缩进两个汉字，1.5 倍行距。一级标题黑体小三加粗居中，二级标题宋体四号加粗，三级标题宋体小四加粗。

封面和声明无页眉页码；默认各自带一个空白背页，支持从摘要开始双面打印。摘要起使用大写罗马数字，正文另从 1 开始，正文页码形如 `- 1 -`。奇数页页眉为“湖州师范大学硕士学位论文”，偶数页为完整中文论文题目。`printblank=false` 可关闭封面和声明后的空白背页，用于预览；打印前恢复 `true`。

具体来源和细节见 [格式核对表](docs/FORMAT-CHECKLIST.md)。

## 修改内容

- 章节使用 `\chapter`、`\section`、`\subsection` 自动编号；不在标题文本中手动写编号。
- 图题用 `\caption` 放在图片之后，表题放在表格之前；编号使用 `\label`、`\ref`。
- 表内使用 `thesistable` 环境得到五号字体，三线表使用 `\toprule`、`\midrule`、`\bottomrule`。
- 跨页表使用示例中的 `longtable`，续页重复表头并注明“（续）”；删除示例演示用的 `\pagebreak` 后自动分页。
- 公式使用 `equation`；转置、微分及自然对数底分别写作 `\mathrm{T}`、`\mathrm{d}`、`\mathrm{e}`。
- `\cite{键}` 为顺序编码上标引用；同处多篇用 `\cite{键1,键2}`。仅引用过的条目出现在参考文献中。
- 如无需图表清单或缩略词表，删除 `main.tex` 中对应命令。
- 附录使用 `\thesisappendix` 后的 `\chapter`，自动生成附录 A、B 等。
- 简历与成果部分有单独的格式要求，用 `\achievementheading{标题}` 生成小四宋体加粗标题；成果中的本人姓名手动用 `\textbf{姓名}` 加粗。

学硕填写“学术学位 / 计算机科学与技术”，专硕填写“专业学位 / 计算机技术”。研究方向应采用培养方案中的名称；导师填写姓名与职称，有二导时一并填写和签名；提交日期应在毕业答辩日期之后。请根据真实情况填写，模板不会推测这些信息。

## 参考文献

项目统一使用顺序编码制。原模板也允许著者出版年制，但本项目未提供该模式，以免混用。样式基于 gbt7714 v2.1.5 的 2015 顺序编码实现，保留原模板要求的人名大小写并省略示例中没有的 DOI。原模板未明确 GB/T 7714 年份，本项目未据此推定应自动切换到其他版本。若学院另行指定年份，请以该要求重新核对。

英文作者的姓按正确大小写录入，名可写首字母；英文题名自动按句首大写处理，需保持大小写的专有名词用 `{}` 保护。期刊名由作者按原模板要求录入大小写。参考文献采用悬挂缩进，小四号、1.5倍行距。

特殊文献可用 `@misc` 的 `mark` 和 `medium` 明确标识，例如：

```bibtex
@misc{dataset,
  author = {真实作者},
  title = {真实数据集题名},
  mark = {DS},
  medium = {OL},
  year = {2025},
  date = {2025-07-07},
  urldate = {2026-11-11},
  publisher = {发布平台},
  url = {实际访问地址}
}
```

预印本可用 `mark={PP}`，网站用 `mark={EB}`，数据库用 `mark={DB}`；复杂条目应逐条对照原模板示例人工核查。示例 `.bib` 中的文献来自原Word模板，用于展示格式，不代表作者已完成文献审核。

## 上传 GitHub

将本文件所在目录作为仓库根目录，保留 `.gitignore`、`.gitattributes` 和 `.github` 等隐藏文件。可在 GitHub 创建空仓库后上传解压后的文件，或在本地执行：

```sh
git init
git add .
git commit -m "Add HZNU AI 2026 thesis LaTeX template"
git branch -M main
git remote add origin <你的仓库地址>
git push -u origin main
```

示例PDF可作为仓库中的版式预览；编译临时文件已忽略。不要把整个ZIP作为唯一文件上传，否则GitHub无法直接浏览源码。附带的自动编译工作流仅使用Fandol草稿字体验证源码可编译，不代表正式字体审核。

## 印制和最终核查

封面页按 A4 生成。原模板另要求纸质外封面使用 A3 青色皮纹纸；A3展开外封面、书脊宽度和装订尺寸由印制方按论文厚度确定。默认PDF中的空白背页用于整本双面打印时保持封面和声明单面。

格式配置不能自动验证真实论文的字数、摘要长度、图表自明性、文献真实性、研究方向名称或签名。替换内容后，应重新编译并检查长标题、长页眉、表格宽度、图表分页和参考文献。正文一般不少于2.5万字，中文摘要一般300至1000字，关键词3至5个。

## 授权

本项目自编代码采用 MIT 许可；修改后的参考文献样式及其上游源码采用 LPPL 1.3c 或更新版本。校名、校徽、声明文字及从学校模板转录的内容不属于本项目 MIT 授权范围，相关权利归原权利人。本项目未附原始Word文件和商业字体。详见 [第三方声明](THIRD-PARTY-NOTICES.md)。
