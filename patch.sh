
cd /usr/local/tomcat/webapps/ROOT
wget https://github.com/benxiaohai061/tomcat/raw/master/pages/error_404.html
wget https://github.com/benxiaohai061/tomcat/raw/master/pages/error_500.html


perl -i.bak -ne 'push @a, $_; if ( eof ) { print for ( @a[0 .. ($#a-1)], "<error-page>\n  <error-code>404</error-code>\n  <location>/error_404.html</location>\n</error-page>\n", $a[-1] ); }' web.xml

perl -i.bak -ne 'push @a, $_; if ( eof ) { print for ( @a[0 .. ($#a-1)], "<error-page>\n  <error-code>500</error-code>\n  <location>/error_500.html</location>\n</error-page>\n", $a[-1] ); }' web.xml
