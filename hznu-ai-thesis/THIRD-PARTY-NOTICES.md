# 第三方内容与来源

## 学校模板

本项目参考用户提供的《湖州师范大学硕士学位论文撰写模版（人工智能学院2026版）.doc》。`assets/school-name.jpg`、`assets/school-emblem.jpg` 为从该文件提取的原始图片，未修改。学校名称、校徽、声明内容和学校模板转录内容的权利归原权利人，未重新授予 MIT 许可。使用者应遵守相关使用要求。

本项目是非官方转换成果；不构成学校认证或对学校规定的独立修订。没有分发原始Word文件。

## gbt7714 BibTeX 样式

- 上游：Zeping Lee, gbt7714-bibtex-style，版本 v2.1.5，2022-10-03。
- 来源：[上游仓库](https://github.com/zepinglee/gbt7714-bibtex-style/tree/v2.1.5)。
- 上游文件：`gbt7714-numerical.bst`，保留其中的版权与授权声明。
- 修改后文件：`hznu-gbt7714-numerical.bst`。修改日期：2026-11-11。
- 修改内容：`uppercase.name` 从1改为0以保留姓氏大小写；`show.doi` 从1改为0以对齐学校模板示例；添加修改说明并更改文件名。
- 许可：LaTeX Project Public License 1.3c 或更新版本；见 `licenses/LPPL-1.3c.txt`。原始完整源码及安装文件置于 `third-party/gbt7714/`，可生成未修改的上游样式。
- 本地修改由本项目维护，原维护者不对修改版负责。

## 字体和宏包

项目不分发系统字体，也不把 TeX 发行版中的宏包纳入本项目授权。Fandol、TeX Gyre、CTeX、fontspec、unicode-math 等各自保留其原许可。编译得到的示例PDF使用当前机器上已安装的字体；字体文件本身不包含在项目中。
