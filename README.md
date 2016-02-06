# LaTeX2EBook

Utility commands for LaTeX/Bibtex/LaTeXML ebook publishing.

##How to use

1. prepare latex and bibtex sources using utf8
2. perform latex
3. perform bibtex
4. perform latex twice
5. perform dvipdfmx (PDF file will be generated)
6. process latex sources by convert4latexml.pl
    perl convert4latexml.pl < foo.tex > foo.temp.tex
7. process latex sources by latexml in LaTeXML
    latexml --xml --nocomments --inputencoding=utf8 --destination=foo.xml foo.temp.tex
8. process xml files by convertxml2xml.pl
    perl convertxml2xml.pl < foo.xml > foo.temp.xml
9. process xml files by latexmlpost in LaTeXML
    latexmlpost --format=html5 --crossref --index --mathimages --graphicimages --destination=foo.html foo.temp.xml
10. process html files by converthtml2html.en.pl (for English) or converthtml2html.ja.pl (for Japanese)
    perl converthtml2html.ja.pl < foo.html > foo.temp.html
11. process html files by ebook-convert in Calibre (EPUB3 file will be generated)
    ebook-convert foo.temp.html foo.epub --max-toc-links=0 --toc-threshold=1 --level1-toc=//h:h2 --level2-toc=//h:h3 --level3-toc=//h:h4 --read-metadata-from-opf=foo.opf --cover=foo.png --preserve-cover-aspect-ratio
12. process epub files by kindlegen (mobi file will be generated)
    kindlegen foo.epub
