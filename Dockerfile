FROM wordpress:latest
RUN apt-get -y update && apt-get install -y wget unzip git nano
RUN cd /usr/src/wordpress/wp-content/plugins && \
    wget https://downloads.wordpress.org/plugin/wp-appkit.1.5.5.zip && \
    wget https://downloads.wordpress.org/plugin/child-theme-configurator.2.5.8.zip && \
    wget https://downloads.wordpress.org/plugin/custom-css-js.3.36.zip && \
    wget https://downloads.wordpress.org/plugin/wp-rss-aggregator.4.17.4.zip && \
    wget https://github.com/versionpress/versionpress/releases/download/4.0-beta2/versionpress-4.0-beta2.zip && \
    wget https://github.com/leandrolivera/site/tree/master/plugins/wp-appkit-ssl.zip && \
    wget https://github.com/leandrolivera/site/tree/master/plugins/child-theme-configurator.2.5.8.zip && \
    wget https://github.com/leandrolivera/site/tree/master/plugins/custom-css-js.3.36.zip && \
    wget https://downloads.wordpress.org/plugin/category-tag-pages.zip && \
    unzip \*.zip && \
    rm *.zip
RUN cd /var/www/html/wp-content/uploads/2021/03 && \
    wget https://github.com/leandrolivera/site/tree/master/media/CategoriasEspecificas.zip && \
    wget https://github.com/leandrolivera/site/tree/master/media/CategoriasEspecificas.zip && \
    wget https://github.com/leandrolivera/site/tree/master/media/CategoriasEspecificas.zip && \
    unzip \*.zip && \
    rm *.zip