% hrothgar-memo class
% 
% requires xelatex to compile because of the fonts
%-------------------------------------------------------------------
\ProvidesClass{hrothgar-memo}
\NeedsTeXFormat{LaTeX2e}

% Based on the scrartcl class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions
\LoadClass{scrartcl}

% Import the standard stuff
\input{hrothgar-common.def}


%-------------------------------------------------------------------
% Fonts
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{amsmath} % always load before mathspec or unicode-math
\RequirePackage[math-style=ISO]{unicode-math} % try sans-style=upright
\defaultfontfeatures{Scale=MatchLowercase,Mapping=tex-text}
\setmainfont[Numbers={OldStyle,Proportional},SmallCapsFeatures={LetterSpace=6}]{CMU Serif}
\let\mathbf\mathbfsf
\let\mathbfit\mathbfsfit
\AtBeginDocument{\let\phi\varphi}


%-------------------------------------------------------------------
% Page geometry

%\RequirePackage[letterpaper,left=1in,top=1in,bottom=1in,right=1in]{geometry}
\RequirePackage{fullpage}

%-------------------------------------------------------------------
% Document title
% FIXME: the \cdot should be conditional

\RequirePackage{titling}
\usepackage[overload]{textcase}

\newenvironment*{romantitle}[1]{%
    \addfontfeature{LetterSpace=12}%
    {\MakeUppercase{#1}}%
}

\pretitle{\vspace{-.5in}\noindent\begin{romantitle}}
\posttitle{\end{romantitle}\par}
\preauthor{\noindent}
\postauthor{}
\predate{~$\cdot$~\,\begin{scenv}}
\postdate{\end{scenv}\vskip.5\onelineskip\noindent\rule{\textwidth}{0.4pt}\vspace{-.25\onelineskip}}


%-------------------------------------------------------------------
% Section titles

\RequirePackage{microtype}
\RequirePackage{textcomp}

\parindent0pt
\parskip5pt
\renewcommand{\refname}{}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {.1ex \@plus.2ex}%
                                   {\normalfont\normalsize\sffamily\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {.1ex \@plus .2ex}%
                                     {\normalfont\normalsize\sffamily\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {.1ex \@plus .2ex}%
                                     {\normalfont\normalsize\sffamily\bfseries}}

%-------------------------------------------------------------------
% Division styles


%-------------------------------------------------------------------
% Constants

%\newcommand{\hrothgar}{\lowercaps{hrothgar}}


%-------------------------------------------------------------------
% End of file
\endinput
