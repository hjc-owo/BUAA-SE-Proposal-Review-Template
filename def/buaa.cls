%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% <UTF-8>
%% %% 北航软件学院研究生开题报告/文献综述模板 - LaTeX 13-12-2025
%% %% 论文样式参考自二〇二五年九月版《北京航空航天大学研究生学位论文撰写规范》、北航软件学院开题报告/文献综述模版
%% %% 基于ctexbook
%% %%
%% %% 初始版本作者:
%% %%   Wei Quanmao (weiqm@buaa.edu.cn)
%% %% 当前版本作者：
%% %%   Hu Juncheng (hujuncheng@buaa.edu.cn)
%% %% 参与修改:
%% %%   Cao Yan, Chen Yiwu, Cui Yikai，Dong Hanyuan, Du Huipeng, Fan Yu, Guo Yanpei, Ling Sucheng, Pu Guohang, Sheng Jie, Wu Jiayan, Zhu Leyan, Han Zhexin, Hu Juncheng
%% %%
%% %% Versions:
%% %%   v4.2.0 HuJC (13-12-2025)
%% %%   v4.1.0 WeiXY (01-09-2025)
%% %%   v4.0.2 WeiXY (03-06-2025)
%% %%   v4.0.1 WeiXY (14-04-2025)
%% %%   v4.0.0 WeiXY (14-02-2025)
%% %%   v3.2.4 HanZX WeiXY (11-24-2023)
%% %%   v3.2.3 HanZX WeiXY (08-30-2023)
%% %%   v3.2.2 HanZX WeiXY (07-23-2023)
%% %%   v3.2.1 HanZX WeiXY (06-05-2023)
%% %%   v3.2  HanZX WeiXY (05-09-2023)
%% %%   v3.1  WeiQM (01-24-2022)
%% %%   v3.0  WeiQM (03-07-2020)
%% %%   v2.2  WeiQM (11-30-2019)
%% %%   v2.1  QiaoJF, WeiQM (12-19-2018)
%% %%   v2.0  WeiQM, QiaoJF (11-22-2018)
%% %%   v1.3  Wei Quanmao (10-15-2018)
%% %%   v1.2  Wei Quanmao (07-31-2018)
%% %%   v1.1  Wei Quanmao (01-04-2018)
%% %%   v1.0a Wei Quanmao (12-17-2017)
%% %%
%% %% 建议采用等宽字体查看本文档
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 模板标识
\RequirePackage[T1]{fontenc} 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{buaa}[2025/12/13 v4.2.0 BUAA thesis class]
\typeout{This is LaTeX template buaa. Version 4.2.0 (based on XeLaTeX) 13-12-2025}

%% 选项
%% 论文类型
\DeclareOption{master}{\gdef\@thesis{master}}             % 学术硕士论文
\DeclareOption{professional}{\gdef\@thesis{professional}} % 专业硕士论文
\DeclareOption{doctor}{\gdef\@thesis{doctor}}             % 博士论文
\DeclareOption{prodoctor}{\gdef\@thesis{prodoctor}}       % 专业博士论文
\DeclareOption{thesis}{\ClassWarning{buaa}{%
		You have not specified the THESIS option. The word thesis should be replaced by one of the following thesis type: master(default), professional, doctor, prodoctor.
}}

\DeclareOption{review}{\gdef\@doctype{review}}
\DeclareOption{proposal}{\gdef\@doctype{proposal}}
\DeclareOption{doctype}{\ClassWarning{buaa}{%
		You have not specified the DOCTYPE option. The word thesis should be replaced by one of the following doc type: review (default), proposal.
}}

%% 密级
\DeclareOption{public}{\gdef\@permission{public}}             % 公开
\DeclareOption{privacy}{\gdef\@permission{privacy}}           % 内部
\DeclareOption{secret}{\gdef\@permission{secret3}}            % 秘密 = 秘密3年
\DeclareOption{secret3}{\gdef\@permission{secret3}}           % 秘密3年
\DeclareOption{secret5}{\gdef\@permission{secret5}}           % 秘密5年
\DeclareOption{secret10}{\gdef\@permission{secret10}}         % 秘密10年
\DeclareOption{secret*}{\gdef\@permission{secret*}}           % 秘密永久
\DeclareOption{classified}{\gdef\@permission{classified5}}    % 机密 = 机密5年
\DeclareOption{classified3}{\gdef\@permission{classified3}}   % 机密3年
\DeclareOption{classified5}{\gdef\@permission{classified5}}   % 机密5年
\DeclareOption{classified10}{\gdef\@permission{classified10}} % 机密10年
\DeclareOption{classified*}{\gdef\@permission{classified*}}   % 机密永久
\DeclareOption{topsecret}{\gdef\@permission{topsecret10}}     % 绝密 = 绝密10年
\DeclareOption{topsecret3}{\gdef\@permission{topsecret3}}     % 绝密3年
\DeclareOption{topsecret5}{\gdef\@permission{topsecret5}}     % 绝密5年
\DeclareOption{topsecret10}{\gdef\@permission{topsecret10}}   % 绝密10年
\DeclareOption{topsecret*}{\gdef\@permission{topsecret*}}     % 绝密永久
\DeclareOption{permission}{\ClassWarning{buaa}{%
		You have not specified the PERMISSION option. The word permission should be replaced by one of the following thesis type: public, privacy, secret, classified, topsecret.
}}

%% 打印设置
\DeclareOption{library}{\gdef\@printtype{library}} % 图书馆版本，不留空白页
\DeclareOption{print}{\gdef\@printtype{print}} % 打印版本，留空白页
\DeclareOption{printtype}{\ClassWarning{buaa}{%
		You have not specified the PRINTTYPE option. The word printtype should be replaced by one of the following thesis type: library, print.
}}

%% 系统设置
\DeclareOption{win}{\gdef\@ostype{win}}     % windows
\DeclareOption{linux}{\gdef\@ostype{linux}} % linux
\DeclareOption{mac}{\gdef\@ostype{mac}}     % mac
\DeclareOption{ostype}{\ClassWarning{buaa}{%
		You have not specified the OSTYPE option. The word ostype should be replaced by one of the following thesis type: win, linux, mac.
}}

%% 标题长度
\DeclareOption{short}{\gdef\@titlelength{short}}     % 短标题
\DeclareOption{long}{\gdef\@titlelength{long}} % 长标题
\DeclareOption{titlelength}{\ClassWarning{buaa}{%
		You have not specified the TITLELENGTH option. The word titlelength should be replaced by one of the following thesis type: short, long.
}}

%% 学科类型
\DeclareOption{STEM}{\gdef\@subjecttype{STEM}}     % 理工类
\DeclareOption{HSS}{\gdef\@subjecttype{HSS}} % 社科及文学类
\DeclareOption{subjecttype}{\ClassWarning{buaa}{%
		You have not specified the SUBJECTTYPE option. The word subjecttype should be replaced by one of the following thesis type: STEM, HSS.
}}

%% 适应首字母大写
\DeclareOption{Master}{\gdef\@thesis{master}}
\DeclareOption{Professional}{\gdef\@thesis{professional}}
\DeclareOption{Doctor}{\gdef\@thesis{doctor}}
\DeclareOption{ProDoctor}{\gdef\@thesis{prodoctor}}
\DeclareOption{Review}{\gdef\@doctype{review}}
\DeclareOption{Proposal}{\gdef\@doctype{proposal}}
\DeclareOption{Public}{\gdef\@permission{public}}
\DeclareOption{Privacy}{\gdef\@permission{privacy}}
\DeclareOption{Secret}{\gdef\@permission{secret3}}
\DeclareOption{Secret3}{\gdef\@permission{secret3}}
\DeclareOption{Secret5}{\gdef\@permission{secret5}}
\DeclareOption{Secret10}{\gdef\@permission{secret10}}
\DeclareOption{Secret*}{\gdef\@permission{secret*}}
\DeclareOption{Classified}{\gdef\@permission{classified5}}
\DeclareOption{Classified3}{\gdef\@permission{classified3}}
\DeclareOption{Classified5}{\gdef\@permission{classified5}}
\DeclareOption{Classified10}{\gdef\@permission{classified10}}
\DeclareOption{Classified*}{\gdef\@permission{classified*}}
\DeclareOption{TopSecret}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret3}{\gdef\@permission{topsecret3}}
\DeclareOption{TopSecret5}{\gdef\@permission{topsecret5}}
\DeclareOption{TopSecret10}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret*}{\gdef\@permission{topsecret*}}
\DeclareOption{Library}{\gdef\@printtype{library}}
\DeclareOption{Print}{\gdef\@printtype{print}}
\DeclareOption{Win}{\gdef\@ostype{win}}
\DeclareOption{Linux}{\gdef\@ostype{linux}}
\DeclareOption{Mac}{\gdef\@ostype{mac}}
\DeclareOption{Short}{\gdef\@titlelength{short}}
\DeclareOption{Long}{\gdef\@titlelength{long}}

%% 选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption,fontset=none}{ctexbook}}

%% 默认选项配置
\ExecuteOptions{master,review,public,library,win,short,STEM,a4paper,sub4section}
\ProcessOptions\relax

%% 引用ctexbook: 小4,1.5倍行距
\LoadClass[UTF8,zihao=-4,linespread=1.7]{ctexbook}%1.5+0.2行间距
\setcounter{secnumdepth}{5}

%% BUAAThesis字样及版本信息
\usepackage{graphicx}
\def\BUAAThesisVer{v4.2.0 13-12-2025}
\def\BUAAThesis{%
	B%
	{\fontsize{0.8em}{\baselineskip}\selectfont
		\kern-.12em\lower.5ex\hbox{U}%
		\kern-.46em\raise.47ex\hbox{A}%
		\kern-.12em A%
	}
	\kern-.35emT%
	\kern-.22em\lower.5ex\hbox{H}%
	\kern-.08em E%
	\kern-.05em\lower.5ex\hbox{S}%
	\kern-.26em I%
	\kern-.26em\raise.5ex\hbox{\rotatebox[origin=c]{180}{S}}%
}

%% 预声明
\RequirePackage{ifthen}       % ifthenelse/equal/isundefined等判断比较命令
\RequirePackage{etoolbox}     % \AtBeginDocument等宏命令
\RequirePackage{titletoc}     % 目录
\RequirePackage{remreset}     % 计数器设置
\RequirePackage{geometry}     % 设置页边距
\RequirePackage{fancyhdr}     % 设置页眉页脚
\RequirePackage[nodisplayskipstretch]{setspace}     % 设置行间距
\RequirePackage{float}        % 图片
\RequirePackage{graphicx}     % 图片
\RequirePackage{subcaption}    % 子图
\RequirePackage{epstopdf}     % 图片
\RequirePackage{array}        % 列举
\RequirePackage{enumitem}     % 列举
\RequirePackage{booktabs}     % 表格上下粗线
\RequirePackage{longtable}    % 长表格
\RequirePackage{multirow}     % 多行表格
\RequirePackage{caption}      % 标题设置
\RequirePackage{listings}     % 代码环境
\RequirePackage{algorithm2e}  % 算法环境
\RequirePackage{amsmath}      % 数学
\RequirePackage{amsthm}       % 定理
\RequirePackage[hypertexnames=false]{hyperref}      % 超链接
\RequirePackage{pifont}       % 画五角星
\RequirePackage[symbol*,perpage,marginal]{footmisc} % 重绘脚注编号
\RequirePackage{color}        % To provide color for soul
\RequirePackage{soul}         % To highlight text
\RequirePackage[sort&compress]{natbib}              % BibTex
\DeclareGraphicsExtensions{.eps,.ps,.png,.jpg,.bmp,.pdf} % 声明使用图像格式
\newcommand{\highlight}[1]{\colorbox{yellow}{#1}}   % 高亮注释

% 根据不同系统调整
\ifthenelse{\equal{\@ostype}{win}}{ % win 配置
	\RequirePackage{times}        % Times New Roman字体
}{}
\ifthenelse{\equal{\@ostype}{linux}}{ % linux 配置
	\RequirePackage{newtxtext}    % Times New Roman字体
	\RequirePackage{newtxmath}    % 公式的Times New Roman字体 (!After package amsthm!)
}{}
\ifthenelse{\equal{\@ostype}{mac}}{ % mac 配置
	\RequirePackage{times}        % Times New Roman字体
	\RequirePackage{fontspec}     % 字体设置 (!Only for XeLaTeX!)
}{}

% 根据不同编译系统选择正确的 Times New Roman字体
\usepackage{iftex}
\ifPDFTeX
\else
\setmainfont{Times New Roman}
\newfontfamily\SimSunPageNum{simsun}[
Path = ./def/ ,
Extension = .ttc
]
\fi

\ifthenelse{\equal{\@nameuse{g__ctex_fontset_tl}}{none}}{%
	\setCJKmainfont{simsun.ttc}[Path=./def/]
	\setCJKsansfont{simhei.ttf}[Path=./def/]
	\setCJKmonofont{simfang.ttf}[Path=./def/]
	\setCJKfamilyfont{zhsong}{simsun.ttc}[Path=./def/]
	\setCJKfamilyfont{zhhei}{simhei.ttf}[Path=./def/]
	\setCJKfamilyfont{zhkai}{simkai.ttf}[Path=./def/]
	\setCJKfamilyfont{zhfs}{simfang.ttf}[Path=./def/]
    \setCJKfamilyfont{hwxk}{huawenxingkai.ttf}[Path=./def/]
	\newcommand*{\songti}{\CJKfamily{zhsong}}
	\newcommand*{\heiti}{\CJKfamily{zhhei}}
	\newcommand*{\kaishu}{\CJKfamily{zhkai}}
	\newcommand*{\fangsong}{\CJKfamily{zhfs}}
    \newcommand*{\huawenxingkai}{\CJKfamily{hwxk}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 数学环境
% 数学符号：
\newcommand\eu{\mathrm{e}}
\newcommand\iu{\mathrm{i}}
\newcommand*{\diff}{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

% 数学定理：
% 以下定义数学定理环境默认风格为 buaa
\newtheoremstyle{buaa}%
{0pt}% measure of space to leave above the theorem.
{0pt}% measure of space to leave below the theorem.
{}% name of font to use in the body of the theorem.
{2\ccwd}% measure of space to indent.
{\bfseries}% name of head font.
{.}% punctuation between head and body.
{\ccwd}% space after theorem head; " " = normal interword space
{}% manually specify head (can be left empty, meaning `normal').
\theoremstyle{buaa}

% 定义新的定理
\newcommand{\theoremname}{定理}
\newcommand{\assertionname}{断言}
\newcommand{\axiomname}{公理}
\newcommand{\corollaryname}{推论}
\newcommand{\lemmaname}{引理}
\newcommand{\propositionname}{命题}
\newcommand{\definitionname}{定义}
\newcommand{\examplename}{例}
\newcommand{\remarkname}{注}
\renewcommand{\proofname}{证明}
\renewcommand{\lstlistingname}{代码}
\renewcommand{\algorithmcfname}{算法}

\newtheorem{theorem}                {\theoremname}     [chapter]
\newtheorem{assertion}  [theorem]   {\assertionname}
\newtheorem{axiom}      [theorem]   {\axiomname}
\newtheorem{corollary}  [theorem]   {\corollaryname}
\newtheorem{lemma}      [theorem]   {\lemmaname}
\newtheorem{proposition}[theorem]   {\propositionname}
\newtheorem{definition}             {\definitionname}  [chapter]
\newtheorem{example}                {\examplename}     [chapter]
\newtheorem*{remark}                {\remarkname}

% From MDPI.cls
%\renewcommand{\qed}{\unskip\nobreak\quad\qedsymbol} %% This places the symbol right after the text instead of placing it at the end on the line.
\renewenvironment{proof}[1][\proofname]{\par %% \proofname allows to have "Proof of my theorem"
	\pushQED{\qed}%
	\normalfont \topsep6\p@\@plus6\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\bfseries %% "Proof" is bold
	#1\@addpunct{.}]\ignorespaces %% Period instead of colon
}{%
	\popQED\endtrivlist\@endpefalse
}

% 代码环境
\lstset{
	basicstyle=\small\ttfamily,
	xleftmargin=2pc,
	xrightmargin=2pc,
	frame=single,
	columns=flexible,
	numbers=left,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 输入
\def\@refcolor{} % 给注释及引用使用颜色 on/off
\newcommand{\refcolor}[1]{\gdef\@refcolor{#1}}
\def\@emptypagewords{} % 空白页留字
\newcommand{\emptypagewords}[1]{\gdef\@emptypagewords{#1}}
%\def\@beginright{} % 第一章右侧页起 on/off
%\newcommand{\beginright}[1]{\gdef\@beginright{#1}}

\newcommand{\Title}[2]{\gdef\@titlecn{#1} \gdef\@titleen{#2}}
\newcommand{\Subtitle}[2]{\gdef\@subtitlecn{#1} \gdef\@subtitleen{#2}}
\newcommand{\Department}[2]{\gdef\@department{#1} \gdef\@departmenten{#2}}
\def\@branch{\ifthenelse{\equal{\@thesis}{master} \OR \equal{\@thesis}{doctor}}{工学}{ \ifthenelse{\equal{\@thesis}{professional} \OR \equal{\@thesis}{prodoctor}}{工程}{}}} % 学科大类
\newcommand{\Branch}[1]{\gdef\@branch{#1}}
\newcommand{\Degree}[1]{\gdef\@degree{#1}}
\newcommand{\Major}[1]{\gdef\@major{#1}}
\newcommand{\Feild}[1]{\gdef\@feild{#1}}
\newcommand{\Discipline}[1]{\gdef\@discipline{#1}}
\newcommand{\Direction}[1]{\gdef\@direction{#1}}
\newcommand{\Tutor}[3]{\gdef\@tutorcn{#1} \gdef\@tutoren{#2} \gdef\@tutordegree{#3}}
\newcommand{\Cotutor}[3]{%
	\gdef\@cotutorcn{#1}
	\gdef\@cotutoren{#2}
	\gdef\@cotutordegree{#3}}
\newcommand{\Author}[2]{\gdef\@authorcn{#1} \gdef\@authoren{#2}}
\newcommand{\StudentID}[1]{\gdef\@studentid{#1}}
\newcommand{\SpecialProg}[1]{\gdef\@specialprog{#1}}

\newcommand{\CLC}[1]{\gdef\@clc{#1}}
\newcommand{\DateEnroll}[3]{%
	\gdef\@dateenrollm{#1}
	\gdef\@dateenrolld{#2}
	\gdef\@dateenrolly{#3}}
\newcommand{\DateGraduate}[3]{%
	\gdef\@dategraduatem{#1}
	\gdef\@dategraduated{#2}
	\gdef\@dategraduatey{#3}}
\newcommand{\DateDefence}[3]{%
	\gdef\@datedefencem{#1}
	\gdef\@datedefenced{#2}
	\gdef\@datedefencey{#3}}
\newcommand{\DateStart}[2]{%
	\gdef\@datestartyear{#1}
	\gdef\@datestartmonth{#2}}
\newcommand{\DateEnd}[2]{%
	\gdef\@dateendyear{#1}
	\gdef\@dateendmonth{#2}}
\newcommand{\DateSubmit}[2]{%
	\gdef\@datesubmityear{#1}
	\gdef\@datesubmitmonth{#2}}

\newcommand{\Abstract}[2]{\gdef\@abstrctcn{#1} \gdef\@abstrcten{#2}}
\newcommand{\Keyword}[2]{\gdef\@keywordcn{#1} \gdef\@keyworden{#2}}
\newcommand{\Listfigtab}[1]{\gdef\@listfigtab{#1}} % on/off
\newcommand{\Abbreviations}[1]{\gdef\@abbreviations{#1}}
\newcommand{\Signs}[1]{\gdef\@signs{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 页面设置
% 设置页面大小
% 页边距均25mm
\geometry{papersize={210mm,297mm}}
\ifthenelse{\equal{\@printtype}{print}}{% 打印版本
	\geometry{top=25mm,bottom=25mm,inner=25mm,outer=25mm}
}{%
	\ifthenelse{\equal{\@printtype}{library}}{% 图书馆版本
		\geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}}{}
}

% 设置空白页眉页脚
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}

% 脚注环境设置
\DefineFNsymbols{circled}{% 设置圆数字序号
	{\ding{192}}{\ding{193}}{\ding{194}}%
	{\ding{195}}{\ding{196}}{\ding{197}}%
	{\ding{198}}{\ding{199}}{\ding{200}}{\ding{201}}}
\setfnsymbol{circled}
% 修改行内标记
\renewcommand{\@makefnmark}{%
	\hbox{\@textsuperscript{% 上标模式
			\@thefnmark% 实际编号
		}}%
}
% 修改底部标记
\renewcommand{\@makefntext}[1]{%
	\zihao{-5}\songti % 字号：小五宋体
	\setlength{\hangindent}{2em}% 悬挂缩进1.5em
	\noindent% 取消首行缩进
	\hb@xt@2em{\hss\normalfont\@thefnmark\hspace{0.8em}}% 编号右对齐于2em宽度
	#1% 脚注内容
}

% 设置目录格式
\ifthenelse{\equal{\@subjecttype}{STEM}}{
	\titlecontents{chapter}[0pt]{\addvspace{0.5em}\settowidth{\hangindent}{\thecontentslabel}\heiti\zihao{-4}}
	{\thecontentslabel}{}
	{\hspace{.25em}\songti\zihao{-4}\titlerule*[4pt]{$\cdot$}\contentspage}
	
	\titlecontents{section}[1.0\ccwd]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{-4}}
	{\thecontentslabel\ \ }{}
	{\hspace{.25em}\songti\zihao{-4}\titlerule*[4pt]{$\cdot$}\contentspage}
	
	\titlecontents{subsection}[2.0\ccwd]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{5}}
	{\thecontentslabel\ \ }{}
	{\hspace{.25em}\songti\zihao{-4}\titlerule*[4pt]{$\cdot$}\contentspage}
}{
	\titlecontents{chapter}[0pt]{\addvspace{0.5em}\settowidth{\hangindent}{\thecontentslabel}\heiti\zihao{-4}}
	{\thecontentslabel}{}
	{\hspace{.25em}\songti\zihao{-4}\titlerule*[4pt]{$\cdot$}\contentspage}
	
	\titlecontents{section}[1.0\ccwd]{\settowidth{\hangindent}{\thecontentslabel}\songti\zihao{-4}}
	{\thecontentslabel}{}
	{\hspace{.25em}\songti\zihao{-4}\titlerule*[4pt]{$\cdot$}\contentspage}
	
	\titlecontents{subsection}[2.0\ccwd]{\settowidth{\hangindent}{\thecontentslabel}\songti\zihao{5}}
	{\thecontentslabel}{}
	{\hspace{.25em}\songti\zihao{-4}\titlerule*[4pt]{$\cdot$}\contentspage}
}


\titlecontents{figure}[0pt]{\settowidth{\hangindent}{图~\thecontentslabel\ \ }\songti\zihao{-4}}
{图~\thecontentslabel\ \ }{}
{\hspace{.25em}\songti\zihao{-4}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{table}[0pt]{\settowidth{\hangindent}{表~\thecontentslabel\ \ }\songti\zihao{-4}}
{表~\thecontentslabel\ \ }{}
{\hspace{.25em}\songti\zihao{-4}\titlerule*[4pt]{$\cdot$}\contentspage}

% 图表环境设置
\let\org@table\table
\let\org@endtable\endtable
\renewenvironment{table}[1][h!]
{\begin{spacing}{1.2} \org@table[#1] \songti\zihao{5}\renewcommand{\arraystretch}{1.4}}
	{\org@endtable \end{spacing}}

\let\org@longtable\longtable
\let\org@endlongtable\endlongtable
\renewenvironment{longtable}[1][h!]
{\begin{spacing}{1.2} \songti\zihao{5}\renewcommand{\arraystretch}{1.4}\org@longtable[#1]}
	{\org@endlongtable \end{spacing}}

\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}
\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
\renewcommand{\thetable}{\thechapter.\arabic{table}}
\renewcommand{\p@subfigure}{\thefigure}

% 图表题字体、距离
\DeclareCaptionFormat{tabfigformat}{\bf\songti\zihao{5}{#1\hspace{10pt}#3}}
\captionsetup[figure]{
	position=bottom, margin=0mm, format=tabfigformat,
	aboveskip=6pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table]{
	position=top, margin=0mm, format=tabfigformat,
	aboveskip=6pt, belowskip=0pt, justification=centerlast}
% 子图题字体、距离
\DeclareCaptionFormat{subfigureformat}{\songti\zihao{5}{#1\hspace{10pt}#3}}
\captionsetup[subfigure]{
	position=bottom, margin=0mm, format=subfigureformat, aboveskip=6pt, belowskip=0pt, singlelinecheck=off, justification=centerlast}

%出现在页面中间的浮动对象与上下方文本之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt。
%\setlength{\intextsep}{12pt \@plus2pt \@minus 2pt}

%出现在页面的顶部或底部的浮动对象之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt
%\setlength{\floatsep}{12pt \@plus2pt \@minus2pt}

%出现在页面的顶部或底部的浮动对象与文本之间的垂直距离
% 缺省为 20pt plus 2pt minus 4pt。
%\setlength{\textfloatsep}{20bp \@plus2pt \@minus4pt}

% 设置行间距
\setlength{\parskip}{0pt}

\AtBeginDocument{
	\setlength{\abovedisplayskip}{5pt}
	\setlength{\belowdisplayskip}{5pt}
	\setlength{\abovedisplayshortskip}{5pt}
	\setlength{\belowdisplayshortskip}{5pt}
}

% 列表间接设置
\setlist{
	topsep=0pt, % 列表环境与上文距离
	itemsep=0pt, % 条目间距离
	parsep=\parskip, % 条目内段落距离
	partopsep=0pt % 列表环境与下文距离
}

% 设置参考文献格式
\usepackage{notoccite}
% 设置编号字体和间距
\renewcommand{\NAT@biblabelnum}[1]{%
	{\songti\zihao{5} [#1]\hspace{0.1em}}
}
% 设置内容字体和字号
\renewcommand{\bibfont}{
	\songti\fontsize{10.5pt}{10.5pt}\selectfont
	}
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\bibpunct{[}{]}{,}{n}{}{}
\setlength{\bibsep}{0pt}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

% 设置PDF
\hypersetup{%
	colorlinks=true,
	bookmarksnumbered=true,
	bookmarksopen=true,
	pdffitwindow=true,
	pdfsubject={BUAAers},
	pdfcreator={BUAA Template v4.1.0}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\clearautopage}{%右侧起新页
	\clearpage
	\ifthenelse{\equal{\@printtype}{print}}{% 打印版本
		\ifodd\c@page
		\else
		\hbox{}
		\vspace*{\fill}
		\begin{center}
			{\textcolor[rgb]{0.75,0.75,0.75}{\@emptypagewords}}
		\end{center}
		\vspace{\fill}
		\thispagestyle{empty}
		\newpage
		\if@twocolumn \hbox{} \newpage \fi
		\fi
	}{}
}

\newcommand{\emptypage}{%插入不计页码的空白页
	\clearpage
	\hbox{}
	\vspace*{\fill}
	\begin{center}
		{\textcolor[rgb]{0.75,0.75,0.75}{\@emptypagewords}}
	\end{center}
	\vspace{\fill}
	\thispagestyle{empty}
	\addtocounter{page}{-1}
	\newpage
	\if@twocolumn \hbox{} \newpage \fi
}

\newcommand{\sethyper}{%设置链接引用颜色
	\hypersetup{%
		pdftitle={\@titlecn},
		pdfkeywords={\@keywordcn},
		pdfauthor={\@authorcn}
	}
	\ifthenelse{\equal{\@refcolor}{on}}{%
		\hypersetup{
			allcolors=blue,
		}
	}{%
		\hypersetup{
			allcolors=black,
		}
	}
}
\newcommand{\TranSecretLevel}[1]{%密级翻译
	\ifthenelse{\equal{\@permission}{public}}{\relax}{%
		\ifthenelse{\equal{\@permission}{privacy}}{内~~部}{%
			\ifthenelse{\equal{\@permission}{secret3}}{秘密~\ding{72}~{\bfseries 3}年}{%
				\ifthenelse{\equal{\@permission}{secret5}}{秘密~\ding{72}~{\bfseries 5}年}{%
					\ifthenelse{\equal{\@permission}{secret10}}{秘密~\ding{72}~{\bfseries 10}年}{%
						\ifthenelse{\equal{\@permission}{secret*}}{秘密~\ding{72}~永久}{%
							\ifthenelse{\equal{\@permission}{classified3}}{机密~\ding{72}~{\bfseries 3}年}{%
								\ifthenelse{\equal{\@permission}{classified5}}{机密~\ding{72}~{\bfseries 5}年}{%
									\ifthenelse{\equal{\@permission}{classified10}}{机密~\ding{72}~{\bfseries 10}年}{%
										\ifthenelse{\equal{\@permission}{classified*}}{机密~\ding{72}~永久}{%
											\ifthenelse{\equal{\@permission}{topsecret3}}{绝密~\ding{72}~{\bfseries 3}年}{%
												\ifthenelse{\equal{\@permission}{topsecret5}}{绝密~\ding{72}~{\bfseries 5}年}{%
													\ifthenelse{\equal{\@permission}{topsecret10}}{绝密~\ding{72}~{\bfseries 10}年}{%
														\ifthenelse{\equal{\@permission}{topsecret*}}{绝密~\ding{72}~永久}{%
															\ifthenelse{\equal{\@permission}{permission*}}{密级~\ding{72}~保密期限}{%
	}}}}}}}}}}}}}}}
}
\newcommand{\TranDegree}[1]{%职称翻译
	\frenchspacing
	\ifthenelse{\equal{#1}{教授}}{Prof.}{%
		\ifthenelse{\equal{#1}{副教授}}{A.P.}{%
			\ifthenelse{\equal{#1}{讲师}}{Teacher}{%
				\ifthenelse{\equal{#1}{高工}}{Engineer}{%
					\ifthenelse{\equal{#1}{研究员}}{Researcher}{%
						\ifthenelse{\equal{#1}{副研究员}}{Researcher}{%
	}}}}}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CTeX调整
% 半角/缩进/行伸缩设置
\ctexset{%
	punct=quanjiao, % 全角
	autoindent=2,  % 缩进
	linestretch=2, % 行伸缩
}
% 部分标题修改
\ctexset{%
	contentsname={\zihao{-2} \heiti 目\hspace{\ccwd}录},
	listfigurename={\zihao{3} \heiti 插图清单},
	listtablename={\zihao{3} \heiti 附表清单},
}
% 标题样式修改
\ifthenelse{\equal{\@subjecttype}{STEM}}
{\ctexset{%
	chapter={%章标题 : 三号黑体居中 单倍行距 段前/段后0.5行 另起新页
    	name = {},
		number = \arabic{chapter},
		format=\zihao{3} \heiti \raggedright \thispagestyle{fancy},
		fixskip=true,
		beforeskip=19.27pt,
		afterskip=22.48pt,
		break={},
	},
	section={%节标题 : 四号黑体居左 单倍行距 段前/段后0.5行
		format=\zihao{4} \heiti \raggedright,
		beforeskip=8.43pt,
		afterskip=11.24pt,
	},
	subsection={%二级节标题 : 小四号黑体居左 单倍行距 段前/段后0.5行
		format=\zihao{-4} \heiti \raggedright,
		beforeskip=3.61pt,
		afterskip=3.61pt,
	},
	subsubsection={%三级节标题 : 小四号黑体居左
		format=\zihao{-4} \heiti \raggedright,
		beforeskip=3.61pt,
		afterskip=3.61pt,
	},
	paragraph={% 附加四级标题 : 小四号宋体居左
		format=\zihao{-4} \songti \raggedright,
		beforeskip=3.61pt,
		afterskip=3.61pt,
	},
	subparagraph={% 附加五级标题 : 小四号宋体居左
		format=\zihao{-4} \songti \raggedright,
		beforeskip=3.61pt,
		afterskip=3.61pt,
	}
}}
{\ctexset{
	chapter={%章标题 : 三号黑体居中 单倍行距 段前/段后0.5行 另起新页
		name = {,、},
		number = {\chinese{chapter}},
		format=\zihao{3} \heiti \centering \thispagestyle{fancy},
		fixskip=true,
		beforeskip=19.27pt,
		afterskip=22.48pt,
		aftername = \hspace{0.2\ccwd},
		break=\clearpage,
	},
	section={%节标题 : 四号黑体居左 单倍行距 段前/段后0.5行
		name = {（,）},
		number = {\chinese{section}},
		format=\zihao{4} \heiti \raggedright,
		beforeskip=8.43pt,
		afterskip=11.24pt,
		aftername = \hspace{0.2\ccwd},
	},
	subsection={%二级节标题 : 小四号黑体居左 单倍行距 段前/段后0.5行
		name = {,、},
		number = {\arabic{subsection}},
		format=\zihao{-4} \heiti \raggedright,
		beforeskip=3.61pt,
		afterskip=3.61pt,
		aftername = \hspace{0.2\ccwd},
	},
	subsubsection={%三级节标题 : 小四号黑体居左
		name = {（,）},
		number = {\arabic{subsubsection}},
		format=\zihao{-4} \heiti \raggedright,
		beforeskip=3.61pt,
		afterskip=3.61pt,
		aftername = \hspace{0.2\ccwd},
	}
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AfterPreamble = AtBeginDocument
% AtEndPreamble -> AtBeginDocument -> AfterEndPreamble -> AtEndDocument -> AfterEndDocument
\AtBeginDocument{%
	% \checkinput
	\sethyper
}
\AfterEndPreamble{%
	\makecovercn
	% \makecoveren
	% \makecoverinner
	% \makestatementbuaa
	
 %  \fancyfoot[C]{\zihao{5} \uppercase\expandafter{\romannumeral \thepage}}
	\setcounter{page}{1}
	\abstructkeyword
	\makecontextlist
	\sign
	\abbreviation
	
	% 自定义全局页眉
	\renewcommand{\headrulewidth}{0.4pt}
	\fancyfoot[C]{\zihao{5}{\thepage}}
	%\fancyhead[CE]{\zihao{-5} \leftmark}
    \fancyhead[L]{\zihao{-5} School of Software}
    \fancyhead[C]{\zihao{-5}%
        \ifthenelse{\equal{\@doctype}{review}}{文献综述}{%
            \ifthenelse{\equal{\@doctype}{proposal}}{开题报告}{}% <--- 这里加了一对空括号
        }%
    }
    \fancyhead[R]{\zihao{-5} 北航软件学院}

	\setcounter{page}{1}
}

\fancypagestyle{postref}{% 参考文献及之后的页眉页脚
	\renewcommand{\headrulewidth}{0.4pt}
	\fancyfoot[C]{\zihao{5}\thepage}
	\fancyhead[CE,CO]{\vspace{-6pt} \zihao{-5} {\SimSunPageNum \parbox{15cm}{\centering \leftmark \\ {\quad } }}}
}

%% 制作封面及声明
\newcommand{\makecovercn}{% 中文封面
	{\pdfbookmark[0]{中文封面}{makecovercn}
		\vspace{50pt}
		
		\begin{figure}[h]
			\centering
			\includegraphics[width=0.5\linewidth]{pic/software_logo}
		\end{figure}
		\vspace{-20pt}
        \centering
        \huawenxingkai \zihao{0}
        \ifthenelse{\equal{\@thesis}{doctor} \OR \equal{\@thesis}{prodoctor}}{博士毕业论文}{硕士毕业论文}\\
		\vspace{-20pt}
        \ifthenelse{\equal{\@doctype}{review}}{文献综述}{%
            \ifthenelse{\equal{\@doctype}{proposal}}{开题报告}{}%
        }
		\centering

		\vspace{50pt}
		\begin{spacing}{1.2}
			\ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{}
			\fontsize{32pt}{38.4pt}\selectfont \songti \bfseries \@titlecn
			\ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{%
				\\ \vspace{10pt}
				\zihao{1} \@subtitlecn
			}
		\end{spacing}
		
		\vspace{50pt}
		\begin{spacing}{1.8}
			\zihao{4} \heiti
			\hspace{100pt}
			\begin{tabular}{p{6cm}<{\centering}p{8cm}<{\raggedright}}
				作~~~~者~~~~姓~~~~名  & \@authorcn \\
                作~~~~者~~~~学~~~~号  & \@studentid \\
				\ifthenelse{\equal{\@thesis}{master} \OR \equal{\@thesis}{doctor}}{学~~~~科~~~~专~~~~业}{\ifthenelse{\equal{\@thesis}{professional} \OR \equal{\@thesis}{prodoctor}}{专业名称}{}}  & \@major \\
				指~~~~导~~~~教~~~~师  & \@tutorcn\hspace{1.4em}\@tutordegree \\
				\ifthenelse{\isundefined{\@cotutorcn}}{}{%
					& \@cotutorcn\hspace{1.4em}\@cotutordegree\\
				}
				培~~~~养~~~~学~~~~院  & \@department
				\ifthenelse{\isundefined{\@specialprog}}{}{
				\\ 专~~~~项~~~~计~~~~划 & \@specialprog
				} \\
                论~文~起~止~时~间 & \@datestartyear~年~\@datestartmonth~月 $\sim$ \@dateendyear~年~\@dateendmonth~月 \\
                \ifthenelse{\equal{\@thesis}{review}}{文献综述}{%
                    \ifthenelse{\equal{\@thesis}{proposal}}{开题报告}{论文}%
                }提交时间 & \@datesubmityear~年~\@datesubmitmonth~月
			\end{tabular}
		\end{spacing}
		\clearautopage
}}

\newcommand{\abstructkeyword}{% 摘要
	{\pdfbookmark[0]{中英摘要}{abstructkeyword}
		
		\begin{spacing}{1.7}%1.5+0.2
			
			{\zihao{3} \heiti  \centerline{摘~~~~要}}
			{\vspace{10pt} \zihao{-4} \songti ~\par
				\@abstrctcn \par
				{\zihao{-4} \heiti {\bfseries 关键词}：\@keywordcn}
			}
			
			\clearpage
			%\ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
			
			{\zihao{3} \bfseries  \centerline{Abstract}}
			{\zihao{-4} ~\par
				\@abstrcten \par
				{\bfseries Keywords}: \@keyworden
			}
			
		\end{spacing}
		
		\clearpage
}}
\newcommand{\makecontextlist}{% 目录
	{\pdfbookmark[0]{目录}{makecontextlist}
        \ctexset{
            chapter/format = \zihao{3} \heiti \centering \thispagestyle{fancy}
        }
		\tableofcontents
		\renewcommand\addvspace[1]{}
		\ifthenelse{\isundefined{\@listfigtab}}{}{%
			\ifthenelse{\equal{\@listfigtab}{on}}{%
				\renewcommand{\addvspace}[1]{}
				\clearpage
				\pdfbookmark[0]{图目录}{listoffigures}
				\listoffigures
				\clearpage
				\pdfbookmark[0]{表目录}{listoftables}
				\listoftables
			}{}
		}
		\clearpage
}}

\newcommand{\sign}{% 符号定义
	{\ifthenelse{\isundefined{\@signs}}{}{%
			\pdfbookmark[0]{主要符号表}{sign}
			\chapter*{\heiti \zihao{3} 主要符号表}
			%\centering
			%\begin{tabular}{cl}
			\songti \zihao{-4}
			\@signs
			%\end{tabular}%
			\clearpage
		}
}}

\newcommand{\abbreviation}{% 缩写定义
	{\ifthenelse{\isundefined{\@abbreviations}}{}{%
			\pdfbookmark[0]{缩略语说明}{abbreviation}
			\chapter*{\heiti \zihao{3} 缩略语说明}
			%\centering
			%\begin{tabular}{cl}
			\songti \zihao{-4}
			\@abbreviations
			%\end{tabular}%
			\clearpage
		}
}}

\newcommand{\chaptera}[1]{%无章号但编入目录
	\ctexset{chapter/numbering=false}
	\chapter{#1}
	\setcounter{section}{0}%
	\setcounter{subsection}{0}%
	\setcounter{subsubsection}{0}%
	%
	\gdef\thesection{\@Alph\c@section}%
	\gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
	%
	
	\renewcommand{\thefigure}{A\arabic{figure}}
	\setcounter{figure}{0}
	\renewcommand{\thetable}{A\arabic{table}}
	\setcounter{table}{0}
	\renewcommand{\theequation}{A\arabic{equation}}
	\setcounter{equation}{0}
}
\newcommand{\summary}{%结论
	\ctexset{chapter/numbering=false}
	\chapter{结~~~~论}
	\setcounter{section}{0}%
	\setcounter{subsection}{0}%
	\setcounter{subsubsection}{0}%
	%
	\gdef\thesection{\@Alph\c@section}%
	\gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
	%
	
	\renewcommand{\thefigure}{A\arabic{figure}}
	\setcounter{figure}{0}
	\renewcommand{\thetable}{A\arabic{table}}
	\setcounter{table}{0}
	\renewcommand{\theequation}{A\arabic{equation}}
	\setcounter{equation}{0}
}

\newcommand{\Bib}[2]{%参考文献
	\bibliographystyle{#1}
	% \clearpage
	\pagestyle{postref}
	\phantomsection
	\addcontentsline{toc}{chapter}{参考文献}
	\bibliography{#2}
}

\renewcommand{\appendix}{%
	\par
	\ctexset{chapter/numbering=true}
	\setcounter{chapter}{0}%
	\setcounter{section}{0}%
	\setcounter{subsection}{0}%
	\gdef\thechapter{\@Alph\c@chapter}% 强制章节编号为字母
	\ctexset{
		chapter = {
			name = {附录,},
			number = \thechapter, % 使用已定义的编号
			aftername = \hspace{1em},
		},
		section = {
			number = \thechapter.\@arabic\c@section,
			aftername = \hspace{\ccwd},
		}
	}
	% 图表公式编号设置
	\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
	\renewcommand{\thetable}{\thechapter.\arabic{table}}
	\renewcommand{\theequation}{(\thechapter.\arabic{equation})} % 
	% 计数器关联与重置
	\counterwithin{figure}{chapter}
	\counterwithin{table}{chapter}
	\counterwithin{equation}{chapter}
}

\newcommand{\achievement}{%学术成果
	\ctexset{chapter/numbering=false}
	\ifthenelse{\equal{\@thesis}{master}}{\chapter{攻读硕士学位期间取得的研究成果}}{
		\ifthenelse{\equal{\@thesis}{professional}}{\chapter{攻读硕士学位期间取得的研究成果}}{
			\ifthenelse{\equal{\@thesis}{doctor}}{\chapter{攻读博士学位期间取得的研究成果}}{
				\ifthenelse{\equal{\@thesis}{prodoctor}}{\chapter{攻读博士学位期间取得的研究成果}}{
	}}}}
	
	\setcounter{section}{0}%
	\setcounter{subsection}{0}%
	\setcounter{subsubsection}{0}%
	%
	\gdef\thesection{\zhnum{section}}%
	\gdef\thesubsection{\@arabic\c@section.\@arabic\c@subsection}%
	%
	
	\renewcommand{\thefigure}{A\arabic{figure}}
	\setcounter{figure}{0}
	\renewcommand{\thetable}{A\arabic{table}}
	\setcounter{table}{0}
	\renewcommand{\theequation}{A\arabic{equation}}
	\setcounter{equation}{0}
}
\newcommand{\acknowledgments}{%致谢
	\ctexset{chapter/numbering=false}
	\chapter{致~~~~谢}
	
	\setcounter{section}{0}%
	\setcounter{subsection}{0}%
	\setcounter{subsubsection}{0}%
	%
	\gdef\thesection{\@Alph\c@section}%
	\gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
	%
	
	\renewcommand{\thefigure}{A\arabic{figure}}
	\setcounter{figure}{0}
	\renewcommand{\thetable}{A\arabic{table}}
	\setcounter{table}{0}
	\renewcommand{\theequation}{A\arabic{equation}}
	\setcounter{equation}{0}
}
\newcommand{\biography}{%作者简介
	\ctexset{chapter/numbering=false}
	\chapter{作者简介}
	
	\setcounter{section}{0}%
	\setcounter{subsection}{0}%
	\setcounter{subsubsection}{0}%
	%
	\gdef\thesection{\@Alph\c@section}%
	\gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
	%
	
	\renewcommand{\thefigure}{A\arabic{figure}}
	\setcounter{figure}{0}
	\renewcommand{\thetable}{A\arabic{table}}
	\setcounter{table}{0}
	\renewcommand{\theequation}{A\arabic{equation}}
	\setcounter{equation}{0}
}

%% --END--
\endinput
