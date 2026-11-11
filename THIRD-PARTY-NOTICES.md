# 第三方内容与来源

## 排版规范与学校标识

版式参考文档为《湖州师范大学硕士学位论文撰写模版（人工智能学院2026版）.doc》。`assets/school-name.jpg` 和 `assets/school-emblem.jpg` 中的学校标识，以及声明文字和规范摘录，均来自该文档。相关权利归原权利人，适用范围见 `LICENSE`。

规范摘录与文件校验值见 `docs/SOURCE-REQUIREMENTS.md`。Word文档原件不随仓库分发。

## gbt7714 BibTeX 样式

- 上游：Zeping Lee, gbt7714-bibtex-style，版本 v2.1.5，2022-10-03。
- 来源：[上游仓库](https://github.com/zepinglee/gbt7714-bibtex-style/tree/v2.1.5)。
- 上游文件：`gbt7714-numerical.bst`，保留其中的版权与授权声明。
- 修改后文件：`hznu-gbt7714-numerical.bst`。修改日期：2026-11-11。
- 修改内容：`uppercase.name` 从1改为0以保留姓氏大小写；`show.doi` 从1改为0以对齐学校模板示例；添加修改说明并更改文件名。
- 许可：LaTeX Project Public License 1.3c 或更新版本；见 `licenses/LPPL-1.3c.txt`。原始完整源码及安装文件置于 `third-party/gbt7714/`，可生成未修改的上游样式。
- 本地修改由本项目维护，原维护者不对修改版负责。

## 字体和宏包

系统字体、TeX 发行版及宏包分别适用各自的许可。Fandol、TeX Gyre、CTeX、fontspec 和 unicode-math 保留上游授权。`fonts/` 仅包含配置说明，字体文件不随仓库分发。
