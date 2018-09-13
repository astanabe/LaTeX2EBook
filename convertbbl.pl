use utf8;
use open ':encoding(utf8)';
use open ':std';
while (<>) {
	while (/(\\href\{[^\{\}]+\}\{[^\{\}]+)\_([^\{\}]+\})/) {
		s/(\\href\{[^\{\}]+\}\{[^\{\}]+)\_([^\{\}]+\})/$1\\textunderscore$2/;
	}
	print;
}
