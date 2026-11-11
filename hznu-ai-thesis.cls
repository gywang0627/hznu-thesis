% SPDX-License-Identifier: MIT
% Thesis class for Huzhou University School of AI, 2026 layout.
\NeedsTeXFormat{LaTeX2e}[2020/10/01]
\ProvidesClass{hznu-ai-thesis}[2026/11/11 v1.0.1 HZNU AI master thesis]
\RequirePackage{iftex}
\ifXeTeX\else
  \ClassError{hznu-ai-thesis}{Compile with XeLaTeX}{Select XeLaTeX as the compiler.}
\fi
\RequirePackage{kvoptions}
\SetupKeyvalOptions{family=hznu,prefix=hznu@}
\DeclareStringOption[windows]{fonts}
\DeclareBoolOption[true]{printblank}
\ProcessKeyvalOptions*
\LoadClass[UTF8,a4paper,twoside,openany,zihao=-4,fontset=none,linespread=1]{ctexbook}
\RequirePackage{etoolbox}
\RequirePackage{geometry}
% Word header distance refers to the top of the header; footer distance to
% the footer baseline. The text block excludes header and footer.
\geometry{a4paper,top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm,
  headheight=13.65bp,headsep=\dimexpr1.04cm-13.65bp\relax,footskip=0.79cm}
\RequirePackage{fontspec}
\newcommand\hznu@missingfont[1]{\ClassError{hznu-ai-thesis}{Required font #1 not found}{Install the required fonts or use fonts=files. fonts=fandol is for drafts only.}}
\ifdefstring{\hznu@fonts}{windows}{
  \IfFontExistsTF{SimSun}{}{\hznu@missingfont{SimSun}}
  \IfFontExistsTF{SimHei}{}{\hznu@missingfont{SimHei}}
  \IfFontExistsTF{KaiTi}{}{\hznu@missingfont{KaiTi}}
  \IfFontExistsTF{Times New Roman}{}{\hznu@missingfont{Times New Roman}}
  \setmainfont{Times New Roman}
  \setsansfont{Times New Roman}
  \setCJKmainfont[AutoFakeBold=2.17]{SimSun}
  \setCJKsansfont[AutoFakeBold=2.17]{SimHei}
  \setCJKmonofont{KaiTi}
  \setCJKfamilyfont{zhsong}[AutoFakeBold=2.17]{SimSun}
  \setCJKfamilyfont{zhhei}[AutoFakeBold=2.17]{SimHei}
  \setCJKfamilyfont{zhkai}[AutoFakeBold=2.17]{KaiTi}
}{\ifdefstring{\hznu@fonts}{files}{
  \setmainfont{times.ttf}[Path=fonts/,BoldFont=timesbd.ttf,ItalicFont=timesi.ttf,BoldItalicFont=timesbi.ttf]
  \setsansfont{times.ttf}[Path=fonts/,BoldFont=timesbd.ttf]
  \setCJKmainfont[Path=fonts/,AutoFakeBold=2.17]{simsun.ttc}
  \setCJKsansfont[Path=fonts/,AutoFakeBold=2.17]{simhei.ttf}
  \setCJKmonofont[Path=fonts/]{simkai.ttf}
  \setCJKfamilyfont{zhsong}[Path=fonts/,AutoFakeBold=2.17]{simsun.ttc}
  \setCJKfamilyfont{zhhei}[Path=fonts/,AutoFakeBold=2.17]{simhei.ttf}
  \setCJKfamilyfont{zhkai}[Path=fonts/,AutoFakeBold=2.17]{simkai.ttf}
}{\ifdefstring{\hznu@fonts}{fandol}{
  \setmainfont{texgyretermes-regular.otf}[BoldFont=texgyretermes-bold.otf,ItalicFont=texgyretermes-italic.otf,BoldItalicFont=texgyretermes-bolditalic.otf]
  \setsansfont{texgyretermes-regular.otf}[BoldFont=texgyretermes-bold.otf]
  \setCJKmainfont{FandolSong-Regular.otf}[BoldFont=FandolSong-Bold.otf]
  \setCJKsansfont{FandolHei-Regular.otf}[BoldFont=FandolHei-Bold.otf]
  \setCJKmonofont{FandolKai-Regular.otf}
  \setCJKfamilyfont{zhsong}{FandolSong-Regular.otf}[BoldFont=FandolSong-Bold.otf]
  \setCJKfamilyfont{zhhei}{FandolHei-Regular.otf}[BoldFont=FandolHei-Bold.otf]
  \setCJKfamilyfont{zhkai}[AutoFakeBold=2.17]{FandolKai-Regular.otf}
  \ClassWarningNoLine{hznu-ai-thesis}{Draft fonts enabled; not the Word template fonts}
}{\ClassError{hznu-ai-thesis}{Unknown fonts option}{Use windows, files or fandol.}}}}
\providecommand\songti{\CJKfamily{zhsong}}
\providecommand\heiti{\CJKfamily{zhhei}}
\providecommand\kaishu{\CJKfamily{zhkai}}
\RequirePackage{setspace}
% Single-line base is 1.3 times the font size; setspace applies the requested
% 1.5 multiplier. Use bp (Word points), not TeX pt, for all specified sizes.
\newcommand\hznu@bodyfont{\songti\fontsize{12bp}{15.6bp}\selectfont}
\renewcommand\normalsize{\@setfontsize\normalsize{12bp}{15.6bp}}
\setstretch{1.5}
\normalsize
\setlength\parindent{2\ccwd}
\setlength\parskip{0pt}
\raggedbottom
\ctexset{
  chapter={name={},number=\arabic{chapter},format=\centering\heiti\bfseries\fontsize{15bp}{19.5bp}\selectfont,
    aftername=\hspace{2\ccwd},beforeskip=23.4bp,afterskip=23.4bp,fixskip=true},
  section={format=\songti\bfseries\fontsize{14bp}{18.2bp}\selectfont,
    aftername=\hspace{2\ccwd},beforeskip=0pt,afterskip=0pt},
  subsection={format=\songti\bfseries\fontsize{12bp}{15.6bp}\selectfont,
    aftername=\hspace{2\ccwd},beforeskip=0pt,afterskip=0pt},
  contentsname={目\quad 录},listfigurename={插图清单},listtablename={附表清单},
  bibname={参考文献},figurename={图},tablename={表}}
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{2}
\RequirePackage{graphicx}
\graphicspath{{figures/}{assets/}}
\RequirePackage{amsmath,amssymb}
\RequirePackage{unicode-math}
\setmathfont{texgyretermes-math.otf}
\RequirePackage{booktabs,array,longtable,tabularx}
\setlength\heavyrulewidth{1.5bp}
\setlength\lightrulewidth{0.5bp}
\setlength\cmidrulewidth{0.5bp}
\setlength\LTpre{23.4bp}
\setlength\LTpost{23.4bp}
\RequirePackage{caption,subcaption}
\DeclareCaptionFont{hznu}{\songti\fontsize{10.5bp}{13.65bp}\selectfont}
\DeclareCaptionLabelFormat{hznu}{#1#2}
\DeclareCaptionLabelSeparator{hznu}{\hspace{2\ccwd}}
\DeclareCaptionListFormat{hznufigure}{图#2}
\DeclareCaptionListFormat{hznutable}{表#2}
\captionsetup{font=hznu,labelfont=normalfont,labelformat=hznu,labelsep=hznu,justification=centering,singlelinecheck=false}
\captionsetup[figure]{position=bottom,skip=6bp,listformat=hznufigure}
\captionsetup[table]{position=top,skip=6bp,listformat=hznutable}
\captionsetup[subfigure]{font=hznu,labelsep=space,labelformat=parens}
\renewcommand\thefigure{\thechapter.\arabic{figure}}
\renewcommand\thetable{\thechapter.\arabic{table}}
\renewcommand\theequation{\thechapter.\arabic{equation}}
\setlength\textfloatsep{23.4bp}
\setlength\intextsep{23.4bp}
\setlength\floatsep{23.4bp}
\newenvironment{thesistable}{\par\begingroup\setstretch{1}\songti\fontsize{10.5bp}{13.65bp}\selectfont}{\par\endgroup}
\newenvironment{abbreviationtable}{\begingroup\setstretch{1}\hznu@bodyfont
  \setlength\extrarowheight{\dimexpr0.85cm-15.6bp\relax}\par\noindent\tabularx{\linewidth}{l X l}\toprule
  缩略词&英文全称&中文全称\\\midrule}{\\\bottomrule\endtabularx\par\endgroup}
\newcommand\tablenote[1]{\par\begingroup\setstretch{1}\songti\fontsize{10.5bp}{13.65bp}\selectfont
  \leftskip=0pt\rightskip=0pt\parfillskip=0pt plus 1fil
  \setlength\parindent{2\ccwd}\indent 注：#1\par\endgroup}
\RequirePackage[super,sort&compress]{natbib}
\setcitestyle{super,square,comma}
\bibliographystyle{hznu-gbt7714-numerical}
\renewcommand\bibfont{\hznu@bodyfont\setstretch{1.5}}
\setlength\bibsep{0pt}
\setlength\bibhang{2em}
\renewcommand\@biblabel[1]{[#1]\hspace{0.5em}}
\RequirePackage{fancyhdr}
\fancypagestyle{hznu-front}{\fancyhf{}\renewcommand\headrulewidth{0pt}
  \fancyfoot[C]{\setstretch{1}\normalfont\fontsize{10.5bp}{13.65bp}\selectfont\thepage}}
\fancypagestyle{hznu-main}{\fancyhf{}\renewcommand\headrulewidth{0.4pt}
  \fancyhead[CO]{\setstretch{1}\songti\fontsize{10.5bp}{13.65bp}\selectfont 湖州师范大学硕士学位论文}
  \fancyhead[CE]{\setstretch{1}\songti\fontsize{10.5bp}{13.65bp}\selectfont\hznu@runningtitle}
  \fancyfoot[C]{\setstretch{1}\normalfont\fontsize{10.5bp}{13.65bp}\selectfont\textemdash\,\thepage\,\textemdash}}
\fancypagestyle{plain}{\fancyhf{}
  \if@mainmatter
    \renewcommand\headrulewidth{0.4pt}
    \fancyhead[CO]{\setstretch{1}\songti\fontsize{10.5bp}{13.65bp}\selectfont 湖州师范大学硕士学位论文}
    \fancyhead[CE]{\setstretch{1}\songti\fontsize{10.5bp}{13.65bp}\selectfont\hznu@runningtitle}
    \fancyfoot[C]{\setstretch{1}\normalfont\fontsize{10.5bp}{13.65bp}\selectfont\textemdash\,\thepage\,\textemdash}
  \else
    \renewcommand\headrulewidth{0pt}
    \fancyfoot[C]{\setstretch{1}\normalfont\fontsize{10.5bp}{13.65bp}\selectfont\thepage}
  \fi}
\RequirePackage{titletoc}
\titlecontents{chapter}[0pt]{\songti\bfseries\fontsize{12bp}{15.6bp}\selectfont}
  {\thecontentslabel\hspace{2\ccwd}}{}{\titlerule*[0.5em]{.}\contentspage}
\titlecontents{section}[2\ccwd]{\songti\fontsize{12bp}{15.6bp}\selectfont}
  {\thecontentslabel\hspace{2\ccwd}}{}{\titlerule*[0.5em]{.}\contentspage}
\titlecontents{subsection}[4\ccwd]{\songti\fontsize{12bp}{15.6bp}\selectfont}
  {\thecontentslabel\hspace{2\ccwd}}{}{\titlerule*[0.5em]{.}\contentspage}
\RequirePackage[hidelinks,unicode,bookmarksnumbered]{hyperref}
\pdfstringdefDisableCommands{\def\quad{ }}
\urlstyle{same}
\newcommand\hznu@title{请填写中文论文题目}
\newcommand\hznu@titleen{Please Enter the English Thesis Title}
\newcommand\hznu@runningtitle{\hznu@title}
\newcommand\hznu@author{姓名}
\newcommand\hznu@studentid{学号}
\newcommand\hznu@supervisor{姓名\quad 教授}
\newcommand\hznu@degreetype{学术学位}
\newcommand\hznu@major{计算机科学与技术}
\newcommand\hznu@direction{按培养方案填写}
\newcommand\hznu@college{人工智能学院}
\newcommand\hznu@date{20XX年XX月XX日}
\newcommand\hznu@clc{TP39}
\newcommand\hznu@udc{待填写}
\newcommand\hznu@secret{公开}
\newcommand\hznu@releaseyear{\underline{\hspace{2em}}}
\newbool{hznu@confidential}
\define@key{hznuinfo}{title}{\renewcommand\hznu@title{#1}}
\define@key{hznuinfo}{title-en}{\renewcommand\hznu@titleen{#1}}
\define@key{hznuinfo}{running-title}{\renewcommand\hznu@runningtitle{#1}}
\define@key{hznuinfo}{author}{\renewcommand\hznu@author{#1}}
\define@key{hznuinfo}{student-id}{\renewcommand\hznu@studentid{#1}}
\define@key{hznuinfo}{supervisor}{\renewcommand\hznu@supervisor{#1}}
\define@key{hznuinfo}{degree-type}{\renewcommand\hznu@degreetype{#1}}
\define@key{hznuinfo}{major}{\renewcommand\hznu@major{#1}}
\define@key{hznuinfo}{direction}{\renewcommand\hznu@direction{#1}}
\define@key{hznuinfo}{college}{\renewcommand\hznu@college{#1}}
\define@key{hznuinfo}{date}{\renewcommand\hznu@date{#1}}
\define@key{hznuinfo}{clc}{\renewcommand\hznu@clc{#1}}
\define@key{hznuinfo}{udc}{\renewcommand\hznu@udc{#1}}
\define@key{hznuinfo}{secret}{\renewcommand\hznu@secret{#1}}
\define@key{hznuinfo}{confidential}[true]{\setbool{hznu@confidential}{#1}}
\define@key{hznuinfo}{release-year}{\renewcommand\hznu@releaseyear{#1}}
\newcommand\thesissetup[1]{\setkeys{hznuinfo}{#1}}
\newcommand\hznu@blankback{\ifhznu@printblank\null\thispagestyle{empty}\newpage\fi}
\newcommand\hznu@checked{\leavevmode\hbox{\ooalign{\hfil$\square$\hfil\cr\hfil$\checkmark$\hfil\cr}}}
\newcommand\hznu@coverfield[2]{\makebox[4.5em][s]{#1}：&\underline{\makebox[8cm][c]{#2}}\\[8bp]}
\newcommand\makethesiscover{%
  \clearpage\pagestyle{empty}\hypersetup{pageanchor=false}
  \begingroup\setstretch{1}\setlength\parindent{0pt}
  {\songti\bfseries\fontsize{12bp}{15.6bp}\selectfont
    中图分类号：\underline{\makebox[1.5cm]{\hznu@clc}}\hfill 学校代码：\underline{10347}\par\vspace{10bp}
    UDC分类号：\underline{\makebox[1.5cm]{\hznu@udc}}\hfill 密\quad 级：\underline{\hznu@secret}\par}
  \vspace{16bp}
  \begin{center}
    \includegraphics[width=8.8cm]{school-name.jpg}\par\vspace{15bp}
    {\kaishu\bfseries\fontsize{36bp}{43bp}\selectfont 硕\;士\;学\;位\;论\;文}\par\vspace{10bp}
    \includegraphics[width=2.7cm]{school-emblem.jpg}\par\vspace{24bp}
    {\heiti\bfseries\fontsize{18bp}{23.4bp}\selectfont\hznu@title\par}
    \vspace{2bp}\hrule\vspace{5bp}
    {\rmfamily\bfseries\fontsize{16bp}{20.8bp}\selectfont\hznu@titleen\par}
    \vspace{2bp}\hrule\vspace{24bp}
    {\kaishu\fontsize{16bp}{20.8bp}\selectfont
    \begin{tabular}{@{}r@{}l@{}}
      \hznu@coverfield{论文作者}{\hznu@author}
      \hznu@coverfield{学\hfill 号}{\hznu@studentid}
      \hznu@coverfield{指导教师}{\hznu@supervisor}
      \hznu@coverfield{学位类型}{\hznu@degreetype}
      \hznu@coverfield{学科专业}{\hznu@major}
      \hznu@coverfield{研究方向}{\hznu@direction}
      \hznu@coverfield{培养单位}{\hznu@college}
      \hznu@coverfield{提交日期}{\hznu@date}
    \end{tabular}}
  \end{center}\endgroup\clearpage\hznu@blankback
}
\newcommand\makethesisdeclarations{%
  \clearpage\thispagestyle{empty}\begingroup\hznu@bodyfont\setstretch{1.5}
  \begin{center}{\heiti\fontsize{15bp}{19.5bp}\selectfont 湖州师范大学学位论文原创性声明}\end{center}
  \vspace{12bp}
  \noindent\hspace*{2\ccwd}本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得\textbf{\underline{湖州师范大学}}或其他教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。\par
  \vspace{22bp}\noindent\textbf{论文作者签名：}\hfill 签字日期：\quad 年\quad 月\quad 日\par
  \vspace{24bp}
  \begin{center}{\heiti\fontsize{15bp}{19.5bp}\selectfont 湖州师范大学学位论文版权使用授权书}\end{center}
  \vspace{12bp}
  \noindent\hspace*{2\ccwd}本学位论文作者完全了解\textbf{\underline{湖州师范大学}}有权保留并向国家有关部门或机构送交本论文的复印件和磁盘，允许论文被查阅和借阅。本人授权\textbf{\underline{湖州师范大学}}可以将学位论文的全部或部分内容编入有关数据库进行检索和传播，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。\par
  本学位论文属于（请在以下相应方框内打“√”）\par
  \noindent\ifbool{hznu@confidential}{\hznu@checked}{$\square$}\ 保密，在\hznu@releaseyear 年解密后适用本授权书。\par
  \noindent\ifbool{hznu@confidential}{$\square$}{\hznu@checked}\ 不保密。\par
  \vspace{22bp}\noindent\textbf{论文作者签名：}\hfill\textbf{指导教师签名：}\hspace{2em}\par
  \noindent 签字日期：\quad 年\quad 月\quad 日\hfill 签字日期：\quad 年\quad 月\quad 日\par
  \endgroup\clearpage\hznu@blankback
}
\newcommand\thesisfrontmatter{\clearpage\@mainmatterfalse\pagenumbering{Roman}
  \hypersetup{pageanchor=true}\pagestyle{hznu-front}}
\newcommand\thesismainmatter{\clearpage\ifodd\c@page\else\null\thispagestyle{empty}\newpage\fi
  \@mainmattertrue\pagenumbering{arabic}\pagestyle{hznu-main}}
\newcommand\thesisunnumberedchapter[1]{\chapter*{#1}\phantomsection\addcontentsline{toc}{chapter}{#1}}
\renewcommand\listoffigures{\thesisunnumberedchapter{\listfigurename}\@starttoc{lof}}
\renewcommand\listoftables{\thesisunnumberedchapter{\listtablename}\@starttoc{lot}}
\newenvironment{cnabstract}{\thesisunnumberedchapter{摘\quad 要}\hznu@bodyfont}{\par}
\newenvironment{enabstract}{\thesisunnumberedchapter{Abstract}\rmfamily}{\par}
\newcommand\cnkeywords[1]{\par\vspace{\baselineskip}\noindent\textbf{关键词：}#1\par}
\newcommand\enkeywords[1]{\par\vspace{\baselineskip}\begingroup\raggedright\hyphenpenalty=10000
  \exhyphenpenalty=10000\noindent\textbf{Key Words: }#1\par\endgroup}
\newcommand\thesisbibliography[1]{\clearpage\phantomsection
  \addcontentsline{toc}{chapter}{参考文献}\bibliography{#1}}
\newcommand\achievementheading[1]{\par\noindent{\songti\bfseries\fontsize{12bp}{15.6bp}\selectfont #1}\par}
\newcommand\thesisappendix{\appendix\ctexset{chapter={name={附录\space,},number=\Alph{chapter}}}}
\AtBeginDocument{\hypersetup{pdftitle={\hznu@title},pdfauthor={\hznu@author},pdfsubject={湖州师范大学人工智能学院硕士学位论文}}}
\endinput
