# 开发指南

## 模块职责

`hznu-ai-thesis.cls` 继承 `ctexbook`，负责页面、字体、标题、页眉页码、图表和文献格式。`main.tex` 负责论文结构；`thesis-info.tex` 负责元数据；各内容目录维护正文和示例。

参考文献样式位于 `hznu-gbt7714-numerical.bst`。该文件独立采用 LPPL 许可，修改时保留上游版权及变更说明。

## 开发环境

使用包含中文组件的 TeX 发行版、XeLaTeX、BibTeX 和 latexmk。字体配置见 `fonts/README.md`。规范字体验证使用 `fonts=windows` 或 `fonts=files`，持续集成使用 `fonts=fandol`。

在仓库根目录运行：

```sh
latexmk -xelatex main.tex
```

清理中间文件：

```sh
latexmk -c main.tex
```

## 排版与内容分离

- 公共字号、页边距、行距、标题和编号在类文件中修改。
- 封面字段通过 `\thesissetup{...}` 设置，字段定义位于类文件的 `hznuinfo` 键值配置中。
- 论文内容调用 `cnabstract`、`enabstract`、`thesistable`、`abbreviationtable` 等公开环境。
- 后置部分通过 `\thesisappendix`、`\thesisunnumberedchapter`、`\achievementheading` 编排。
- 新增接口应在 README 或本文件中说明，并在示例中保留最小用例。

涉及规范的修改，应先更新 `FORMAT-CHECKLIST.md` 中的依据和实现说明，再修改对应样式。规范原文摘录位于 `SOURCE-REQUIREMENTS.md`。

## 修改与验证流程

1. 修改对应模块，正文示例保持可独立理解。
2. 编译默认示例，重复处理目录和引用，直至结果稳定。
3. 检查日志中的缺字、未定义引用、重复标签和 Overfull/Underfull 警告。
4. 检查封面、声明、摘要、目录、三级标题、奇偶页页眉和两套页码。
5. 检查图表字号、三线表线宽、续表题与重复表头、公式编号、参考文献和附录。
6. 修改字体或类选项时，分别编译受影响的配置。
7. 更新 `example/thesis-example.pdf` 和 `VALIDATION.md`。兼容性变化同时更新接口说明。

GitHub 工作流位于 `.github/workflows/compile.yml`，使用 Fandol 字体进行草稿构建。规范字体的度量和分页应在具有对应字体的环境中验证。

## 发布

以包含 `main.tex` 和 `README.md` 的目录作为仓库根目录。发布包包含源码、文档、资源、许可和示例PDF，保留 `.github`、`.gitignore`、`.gitattributes` 和 `.latexmkrc`。

编译中间文件、系统字体、个人论文数据及开发缓存不进入发布包。第三方样式的源码和授权文件随仓库保留。发布前检查文档中的相对链接、文件名大小写和压缩包解压后的目录结构。
