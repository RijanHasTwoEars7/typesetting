% create define and provide class
\ProvidesClass{CustomCV}[2023/03/20 CV class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

% Package Imports
\usepackage[lmargin=0.9cm, vmargin=0.85cm, rmargin=0.9cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{enumitem}
\usepackage{graphicx}
\usepackage{pifont}
\usepackage[document]{ragged2e}


% Publications -- not sure that I will be using this one.
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

%define colors using RGB
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{RGB}{102,102,102}
\definecolor{title}{RGB}{29,118,226}
\definecolor{primary}{RGB}{43,43,43}
\definecolor{headings}{RGB}{106,106,106}
\definecolor{subheadings}{RGB}{51,51,51}

% for fonts
% use def to define multiple fonts to make things stand out.
% there is apparently no way around this.
\usepackage{fontspec}
\setmainfont{LiberationSans}
\def \firstnamefont{LiberationSans-Bold}
\def \secondnamefont{LiberationSans}
\def \titlefont{LiberationMono}

% defining environments

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}[label=\ding{212}]\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}


\newcommand{\namesection}[4]{\RaggedRight{\color{title}\fontsize{50pt}{60pt}\fontspec{\firstnamefont}#1 \fontspec{\secondnamefont}#2}\\[5pt] % evidenlty this [5pt] is for explicit line separation 

\noindent\makebox[\linewidth]{\color{title}\rule{\paperwidth}{0pt}}
\vspace{-15pt}

\RaggedRight{\fontsize{14pt}{14pt}\fontspec{\titlefont}#3}

\noindent\makebox[\linewidth]{\color{title}\rule{\paperwidth}{0pt}}
\vspace{-15pt}

\RaggedRight{#4}

\noindent\makebox[\linewidth]{\color{title}\rule{\paperwidth}{0pt}} % this adds the space after the section
\vspace{-15pt}
}


%Contact Line
% adjust the scale accordigly if your image is too big
\newcommand{\contactline}[5]{\begingroup
\setbox0=\hbox{
\includegraphics[scale=0.04,trim={1.4cm 1.25cm -0.4cm 0cm}]{icons/orcid.png}{#1}\hspace{0.3cm} % insert icon location
\includegraphics[scale=0.04,trim={0cm 1.25cm -0.4cm 0cm}]{icons/Git.png}{#2}\hspace{0.3cm} 
\includegraphics[scale=0.04,trim={0cm 1.25cm -0.4cm 0cm}]{icons/Website.png}{#3}\hspace{0.3cm}
\includegraphics[scale=0.23,trim={0cm 1.25cm -0.4cm 0cm}]{icons/E-mail.png}{#4}\hspace{0.3cm}
\includegraphics[scale=0.23,trim={0cm 1.25cm -0.4cm 0cm}]{icons/Phone.png}{#5}
}\parbox{\wd0}{\box0}\endgroup}

% Section separators
\usepackage{titlesec} % laod the right package
\titlespacing{\section}{0pt}{5pt}{5pt} % define spacing elements for the \section
\titlespacing{\subsection}{0pt}{0pt}{0pt} % define spacing elements for the \subsection
\newcommand{\sectionsep}{\vspace{5pt}} % define a new macro that inserts a vertical space of 5pt

% Headings command
\titleformat{\section}{\color{title} % set color to the section
\scshape\fontsize{16pt}{32pt}\selectfont\raggedright}{}{0em}{} % oem is the the horizontal separation between the label and the title.

% Subheadings command
\titleformat{\subsection}{
\color{subheadings}\fontsize{9.5pt}{14pt}\selectfont\bfseries\uppercase}{}{0em}{}

%Subheadings on the right
\newcommand{\runsubsection}[1]{
\color{subheadings}\fontsize{10pt}{14pt}\selectfont\bfseries\uppercase {#1}\normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontsize{10pt}{13pt} {#1 \\}\normalfont}

% Location command
\newcommand{\location}[1]{
{\color{headings}\raggedright\fontsize{9.5pt}{12pt}{#1\\}\normalfont}}

\usepackage{multicol}
\newcommand{\fivemulticol}[5]{
\begin{minipage}{\textwidth}
\begin{multicols}{5}
\textbf{#1}\par
\textbf{#2}\par
\textbf{#3}\par
\textbf{#4}\par
\textbf{#5}\par
\end{multicols}
\end{minipage}
}

\newcommand{\fivebulltes}[5]{
    \begin{itemize}
        \item #1
        \item #2
        \item #3
        \item #4
        \item #5
    \end{itemize}
}