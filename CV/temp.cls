\ProvidesClass{temp}[2016/02/01 CV]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[utf8]{inputenc}
\usepackage[T2A]{fontenc}
\usepackage[russian,english]{babel}

\usepackage{amsmath,amsfonts,amsthm}
\usepackage{graphicx}
\usepackage[hmargin=1.25cm,vmargin=0.7cm]{geometry}
\usepackage[dvipsnames]{xcolor}
\usepackage{url}
\usepackage{float}
\usepackage{ifthen}

\frenchspacing
\pagestyle{empty}

\definecolor{headings}{HTML}{025178}
\definecolor{subheadings}{HTML}{002648}

\newlength{\spacebox}
\settowidth{\spacebox}{8888888888}

\newcommand{\sepspace}{\vspace*{1em}}

\newcommand{\MyName}[1]{
    \huge\bfseries\hfill\textcolor{headings}{#1}
    \par\normalsize\normalfont
}

\newcommand{\NewPart}[2]{
    \section*{\textcolor{headings}{#1}}
    \vspace{-0.7em}
    {\color{headings}\rule{\linewidth}{1.5pt}}
    \vspace{0.4em}
}

\newcommand{\PersonalEntry}[2]{
    \noindent\hangindent=2em\hangafter=0
    \parbox{\spacebox}{\textit{#1}}
    \hspace{1.5em} #2 \par
}

\newcommand{\SkillsEntry}[2]{
    \noindent\hangindent=2em\hangafter=0
    \parbox{\spacebox}{\textit{#1}}
    \hspace{1.5em} #2 \par
}

\newcommand{\workEntry}[5]{
    \begin{minipage}{0.08\linewidth}
        \ifthenelse{\equal{#5}{}}{}{\includegraphics[width=1.2cm]{#5}}
    \end{minipage}%
    \begin{minipage}{0.84\linewidth}
        \noindent{\color{subheadings}\bfseries #1},
        {\color{subheadings}\textit{#3}}
        \hfill{\color{headings}\fontsize{10pt}{12pt}\selectfont #2}
        \par
        \noindent\hangindent=2em\hangafter=0 \small #4
        \normalsize\par
    \end{minipage}
}

\newcommand{\EducationEntry}[5]{
    \begin{minipage}{0.08\linewidth}
        \includegraphics[width=1.2cm]{#5}
    \end{minipage}%
    \begin{minipage}{0.84\linewidth}
        \noindent{\color{subheadings}\bfseries #1}
        \hfill{\color{headings}\fontsize{10pt}{12pt}\selectfont #2}
        \par
        \noindent{\color{subheadings}\textit{#3}}\par
        \noindent\hangindent=2em\hangafter=0 \small #4
        \normalsize\par
    \end{minipage}
}

\newcommand{\flag}[1]{
    \includegraphics[height=9pt,width=15pt]{#1}
}

\newcommand{\software}[1]{
    \includegraphics[height=9pt]{#1}
}

\newcommand{\softwareb}[1]{
    \raisebox{-.6\height}{\includegraphics[height=18pt]{#1}}
}