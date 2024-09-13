\NeedsTeXFormat{LaTeX2e}
\ProvidesExplClass{homework}{2024/09/09}{v0.1}{Vanilla Homework Template}

\DeclareOption{nodate}{\date{}}
\DeclareOption*{\PassOptionsToClass\CurrentOption{article}}
\ProcessOptions\relax
\LoadClass[11pt]{article}

\RequirePackage[hmargin=.75in,vmargin=1in]{geometry}
\RequirePackage{newpxtext}
\RequirePackage{fancyhdr}
\RequirePackage{tabu}
\RequirePackage{booktabs}
\RequirePackage[iso]{datetime}
\RequirePackage[inline]{enumitem}
\RequirePackage{amsmath,amssymb,amsthm}

\keys_define:nn{hw}{
	author     .str_set:N = \@author,
	studentid  .str_set:N = \l_hw_studentid_str,
	courseid   .str_set:N = \l_hw_courseid_str,
	coursename .str_set:N = \l_hw_coursename_str,
	title      .str_set:N = \@title,
	title      .initial:n = Homework,
}
\NewDocumentCommand\hwsetup{}{\keys_set:nn{hw}}

\renewcommand\maketitle{
	\thispagestyle{plain}
	{\bfseries\Large
	\begin{tabu}{XcX[r]}
		\toprule
		\@author&\l_hw_courseid_str&\@title\\
		\l_hw_studentid_str&\l_hw_coursename_str&\@date\\
		\bottomrule
	\end{tabu}}
}

\pagestyle{fancy}
\fancyhead[L]{\textbf\@author}
\fancyhead[C]{\textbf\l_hw_courseid_str}
\fancyhead[R]{\textbf\@title}
\addtolength\headheight{1.6pt}
\addtolength\headsep{-1.6pt}

\setlength\parindent{0pt}
\setlength\parskip{.5\baselineskip}
\setitemize{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setenumerate{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}

\newenvironment{solution}{\begin{proof}[Sol]}{\end{proof}}
