% hrothgar-talk class
% 
% this was all taken from the code given to me by Mark Embree
%-------------------------------------------------------------------
\ProvidesClass{hrothgar-talk}
\NeedsTeXFormat{LaTeX2e}

% Based on the beamer class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions
\LoadClass{beamer}

% % Import the standard stuff
% \input{hrothgar-common.def}

%-------------------------------------------------------------------
% set up beamer templates, fonts, etc.

\usetheme{default}
\usecolortheme{seahorse}
\usecolortheme{rose}
\usefonttheme[onlylarge]{structurebold}

% make the background behind the slide title a light shade of green
%\setbeamercolor{frametitle}{fg=blue!50!black,bg=green!65!blue!20!white}

% make the background behind the slide title a light shade of blue
\setbeamercolor{frametitle}{fg=blue!50!black,bg=blue!15!white}

% make the text dark blue
\setbeamercolor{normal text}{fg=blue!50!black}

% remove the Beamer navigation icons in the lower right corner.
\beamertemplatenavigationsymbolsempty


%-------------------------------------------------------------------
% formatting tweaks

\parskip0.5em

\colorlet{greentext}{green!90}
\colorlet{hottext}{red!90}
\def\hot#1{\textcolor{hottext}{#1}}
\colorlet{blktext}{black!100}
\def\dark#1{\textcolor{blktext}{#1}}
\def\green#1{\textcolor{greentext}{#1}}
\def\hemph#1{\hot{\emph{#1}}}
\def\hemph#1{\hot{\emph{#1}}}

\colorlet{cooltext}{blue!90}
\def\cool#1{\textcolor{cooltext}{#1}}
\def\cemph#1{\cool{\emph{#1}}}