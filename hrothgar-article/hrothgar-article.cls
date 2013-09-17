% hrothgar-article class
% 
% requires xelatex to compile because of the fonts
%-------------------------------------------------------------------
\ProvidesClass{hrothgar-article}
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
\RequirePackage{libertine}
\RequirePackage{amsmath} % always load before mathspec or unicode-math
\RequirePackage[math-style=ISO]{unicode-math} % try sans-style=upright
\defaultfontfeatures{Scale=MatchLowercase,Mapping=tex-text}
\setmainfont[Numbers={OldStyle,Proportional},SmallCapsFeatures={LetterSpace=6},%
             BoldFont={Minion Pro Bold},BoldFeatures={LetterSpace=3}]{Minion Pro}
\setsansfont[Numbers={OldStyle,Proportional},LetterSpace=3]{Myriad Pro}
\setmonofont{Consolas}
\setmathfont{xits-math.otf}
\setmathfont[range=\mathup/{num,latin,Latin,greek,Greek}]{Minion Pro}
\setmathfont[range=\mathsf/{num,latin,Latin,greek,Greek}]{Myriad Pro}
\setmathfont[range=\mathbfsf/{num,latin,Latin,greek,Greek}]{Myriad Pro Bold}
\setmathfont[range=\mathit/{num,latin,Latin,greek,Greek}]%
            {Minion Pro Italic}
\setmathfont[range=\mathsfit/{num,latin,Latin,greek,Greek}]%
            {Myriad Pro Italic}
\setmathfont[range=\mathbfsfit/{num,latin,Latin,greek,Greek}]%
            {Myriad Pro Bold Italic}
\setmathfont[range=\mathtt->\mathup]{Consolas}
\let\mathbf\mathbfsf
\let\mathbfit\mathbfsfit
\AtBeginDocument{\let\phi\varphi}


%-------------------------------------------------------------------
% Page geometry

\RequirePackage[letterpaper,left=1in,top=1in,headsep=2\baselineskip,textwidth=26pc,marginparsep=2pc,marginparwidth=12pc,textheight=44\baselineskip,headheight=\baselineskip]{geometry}

\newlength{\wholewidth}
\setlength{\wholewidth}{\dimexpr\textwidth+\marginparwidth+\marginparsep\relax}

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
\RequirePackage[explicit]{titlesec}

\newcommand\schead[1]{%
  \noindent\normalfont\scshape\MakeLowercase{\textls[50]{#1}}}

\titleformat {\section}
             {\normalfont}
             {\schead{\thesection}}
             {1em}
             {\schead{#1}}
\titlespacing*{\section}{0pt}{.9\onelineskip}{.9\onelineskip}

\titleformat {\subsection}
             {\normalfont}
             {\schead{\thesubsection}}
             {1em}
             {\itshape{#1}}
\titlespacing*{\subsection}{0pt}{.9\onelineskip}{.9\onelineskip}

\titleformat {\subsubsection}
             {\normalfont}
             {}
             {1em}
             {\itshape{#1}}
\titlespacing*{\subsubsection}{0pt}{.9\onelineskip}{.9\onelineskip}


%-------------------------------------------------------------------
% Division styles


%-------------------------------------------------------------------
% Constants

%\newcommand{\hrothgar}{\lowercaps{hrothgar}}


%-------------------------------------------------------------------
% End of file
\endinput
