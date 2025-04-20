FROM php:7.4-apache

# Copia os arquivos do projeto para o diretório padrão do Apache
COPY . /var/www/html/

# Configura permissões
RUN chown -R www-data:www-data /var/www/html

# Ativa reescrita de URLs (mod_rewrite), se necessário
RUN a2enmod rewrite

# Expondo a porta padrão do Apache
EXPOSE 80

# Inicia o Apache em modo foreground
CMD ["apache2-foreground"]
