# hznu-ai-thesis

湖州师范大学人工智能学院硕士学位论文 LaTeX 模板，适用于2026版论文排版规范。

模板采用 XeLaTeX 和 BibTeX 构建，统一管理封面、声明、摘要、正文、图表、参考文献及附录的格式。论文内容按章节拆分，封面信息集中配置，便于写作和维护。

[示例 PDF](example/thesis-example.pdf) · [排版规则](docs/FORMAT-CHECKLIST.md) · [开发指南](docs/DEVELOPMENT.md)

## 功能

- 封面信息配置，支持学术学位、专业学位和双导师填写。
- 中英文摘要、目录、图表清单、缩略词表及后置部分。
- 三级标题编号、奇偶页页眉、前置罗马页码和正文阿拉伯页码。
- 三线表、跨页续表、分图、按章编号的公式和交叉引用。
- GB/T 7714 顺序编码参考文献及上标引用。
- Windows 系统字体、外部字体文件和 Fandol 草稿字体三种配置。

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

编译器使用 **XeLaTeX**，参考文献工具使用 **BibTeX**。

## 字体与 Overleaf

默认 `fonts=windows` 严格使用宋体、黑体、楷体和 Times New Roman。缺少任一字体时会报错，不会静默替换。

在 Overleaf 中上传整个项目，选择 `main.tex` 为主文件、XeLaTeX 为编译器。使用规范字体时，依照[字体说明](fonts/README.md)添加有权使用的字体文件，并设置 `fonts=files`。跨平台草稿和持续集成使用 `fonts=fandol`；提交论文时应切回规范字体。字体文件不随仓库分发。

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
| `hznu-gbt7714-numerical.bst` | 定制的顺序编码参考文献样式 |
| `assets/` | 封面校名与校徽 |
| `docs/` | 排版规则、规范摘录、开发指南和验证记录 |
| `example/` | 经过编译的示例PDF |

## 主要格式

使用 A4；上下边距 2.54 cm，左右 3.17 cm；页眉距上边缘 1.5 cm，页脚基线距下边缘 1.75 cm。正文中文宋体、英文及数字 Times New Roman，小四号，首行缩进两个汉字，1.5 倍行距。一级标题黑体小三加粗居中，二级标题宋体四号加粗，三级标题宋体小四加粗。

封面和声明无页眉页码；默认各自带一个空白背页，支持从摘要开始双面打印。摘要起使用大写罗马数字，正文另从 1 开始，正文页码形如 `— 1 —`。奇数页页眉为“湖州师范大学硕士学位论文”，偶数页为完整中文论文题目。`printblank=false` 可关闭封面和声明后的空白背页。

具体参数和规范差异的处理见[格式对照表](docs/FORMAT-CHECKLIST.md)。

## 写作接口

- 章节使用 `\chapter`、`\section`、`\subsection` 自动编号；不在标题文本中手动写编号。
- 图题用 `\caption` 放在图片之后，表题放在表格之前；编号使用 `\label`、`\ref`。
- 表内使用 `thesistable` 环境得到五号字体，三线表使用 `\toprule`、`\midrule`、`\bottomrule`。
- 跨页表使用示例中的 `longtable`，续页重复表头并注明“（续）”；删除示例演示用的 `\pagebreak` 后自动分页。
- 公式使用 `equation`；转置、微分及自然对数底分别写作 `\mathrm{T}`、`\mathrm{d}`、`\mathrm{e}`。
- `\cite{键}` 为顺序编码上标引用；同处多篇用 `\cite{键1,键2}`。仅引用过的条目出现在参考文献中。
- 如无需图表清单或缩略词表，删除 `main.tex` 中对应命令。
- 附录使用 `\thesisappendix` 后的 `\chapter`，自动生成附录 A、B 等。
- 简历与成果部分有单独的格式要求，用 `\achievementheading{标题}` 生成小四宋体加粗标题；成果中的本人姓名手动用 `\textbf{姓名}` 加粗。

学硕填写“学术学位 / 计算机科学与技术”，专硕填写“专业学位 / 计算机技术”。研究方向采用培养方案中的名称；导师信息包含姓名与职称，有二导时一并填写和签名；提交日期按答辩后的实际提交时间填写。

## 参考文献

参考文献采用顺序编码制。样式基于 gbt7714 v2.1.5 的 GB/T 7714—2015 实现，保留英文姓氏大小写，关闭 DOI 输出。版本及样式修改记录见[第三方说明](THIRD-PARTY-NOTICES.md)。规范未标明 GB/T 7714 的版本年份；学院另有版本要求时，应同步调整样式与验证样例。

英文作者的姓按正确大小写录入，名可写首字母；英文题名按句首大写处理，需保持大小写的专有名词用 `{}` 保护。期刊名按规定录入大小写。参考文献采用悬挂缩进，小四号、1.5倍行距。

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



