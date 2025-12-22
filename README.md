# BUAA Software School Graduate Literature Review / Proposal Report LaTeX Template
# 北航软件学院研究生 文献综述/开题报告 LaTeX 模板

*花开一季 叶落一地*

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![LaTeX](https://img.shields.io/badge/language-LaTeX-green.svg)](https://www.latex-project.org/)

> ⚠️ **注意**：本项目基于[北航官方硕博毕业论文 Latex 模版](https://graduate.buaa.edu.cn/info/1275/10411.htm)修改而来，专门适配**软件学院**对于**文献综述**和**开题报告**的格式要求。

## 📖 简介（Introduction）

本模板旨在解决北航软件学院研究生在撰写 **文献综述（Literature Review）** 和 **开题报告（Proposal Report）** 时，格式与学校毕业论文模板不一致的问题。

本模板使用了 fontspec、xeCJK 等依赖系统字体与 Unicode 的宏包，以确保中文、英文字体及数学符号的正确渲染，因此请使用 **`XeLaTeX`** 编译。

`README_buaa.md` 是北京航空航天大学硕博学位论文 LaTeX 模板的 readme 原文。

## 环境配置

常见的 `LaTeX` 写作环境有两种，一种是使用 Overleaf 的在线环境，另一种是使用 `TexLive` 的本地环境。两种写作环境各有优劣：
- 在线环境基本无需配置，本地环境需要较复杂的配置
- 在线环境的免费账户有着**严苛**的编译时长限制，类似毕业论文这样的长篇文章**基本不可能**通过编译，需要开通订阅才能解锁编译时长限制

我使用的方法：使用 [Overleaf Toolkit](https://github.com/overleaf/toolkit)，在私有服务器上部署自己的本地 Overleaf 环境。部署之后可以使用服务器的计算资源进行编译，无编译时长限制，支持无人数上限的多人在线协同编辑。

### 1. Overleaf 环境

将项目压缩包上传至 [Overleaf](https://cn.overleaf.com/) 后，修改编译选项为 `XeLaTeX` 即可开始写作。

### 2. 本地编译环境

我不会在本地安装 LaTeX 环境。

参考 `README_buaa.md` 中的 `本地编译环境` 部分进行配置。

## 写作提示

-  参看示例模板 `main.tex` 或 `example.tex` 及其中插入的各章节 `tex/*.tex` 或 `example_tex/*.tex` 熟悉模板结构和 $LaTeX$ 语法，撰写论文正文。
-  在写公式时，请不要在公式之后加入额外的空行，避免空行所导致的公式与下一行距离过大的问题。
-  在编译时，请使用xelatex进行编译。
-  在写参考文献时，可以先选用GBT7714-2015.bst来查看缺少哪些关键内容，进行补全，如果存在某些内容找不到的问题，则可以使用GBT7714-2015-NoWarning.bst来不表示这些缺乏信息。
-  在写表时，如果存在上下两个线加粗的需求，可以使用\toprule[], \midrule[] 和 \bottomrule[] 来加粗三线表的三条线。
-  在写论文时，可根据tex文件里的注释信息来修改本文的密级，专硕学硕，开题报告或者文献综述等内容。
-  在编译时，可能会出现参考文献无法出现的现象，此时，可以先运行texstudio界面上方工具栏的参考文献，然后进行重新的构建和编译，即可出现参考文献内容。
-  在编译时，有可能会出现两行间距过小的情况，这是由于本页的图的大小导致的，当遇到这种情况时，可在间距较小的第二行之前加入\newpage使其进入下一页，可解决这个问题。
