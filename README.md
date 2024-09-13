# Vanilla $\LaTeX$ Homework Template

This project is a vanilla $\LaTeX$ homework template. It defines the page style and the title to show necessary info, and may not be too fancy.

## Installation

To install this template, put the `cls` file into your `texmf` folder. Usually, you can find it by executing this command:

```sh
kpsewhich -var-value=TEXMFHOME
```

- On Linux or Unix, it may be `~/texmf`.
- On macOS, it may be `~/Library/texmf`.
- On Windows, it may be `C:\Users\USER\texmf`.

Be sure to create subfolders inside it and put the `cls` file into `$TEXMFHOME/tex/latex/`. You may also create a subfolder in `latex` and put the template inside your custom subfolder if necessary.

## Usage

After installation, `homework` can be used as a $\LaTeX$ class.

```latex
\documentclass{homework}
\title{Homework}
\author{Jane Doe}
\begin{document}
\maketitle
Write your homework here.
\end{document}
```

In addition to the title and author you need to specify when writing a regular $\LaTeX$ article, you can also configure your student ID, course ID, and course name so they show up in the title and header on each page.

```latex
\hwsetup{
	author     = Jane Doe,	% Same as \author{Jane Doe}
	studentid  = 65535,
	courseid   = Math 131,
	coursename = Calculus I,
}
```

If you need to write multiple homework for the same course, you can save the above snippet to a separate file and use `\input{}` command to include it in every homework. Furthermore, you can even write a package for every class, so you can use more packages and define new symbols frequently used in this course. Be sure to put your custom `sty` file in the same folder as the `cls` file.

```latex
% math131.sty
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{math131}[2024/09/12 Math 131]

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}

\newenvironment{solution}{\begin{proof}[Sol]}{\end{proof}}
\DeclareMathOperator*\argmax{arg\,max}
\DeclareMathOperator*\argmin{arg\,min}

\hwsetup{
	author     = Jane Doe,
	studentid  = 65535,
	courseid   = Math 131,
	coursename = Calculus I,
}
```

So you can use `\usepackage{math131}` to apply the settings in `math131.sty`.
