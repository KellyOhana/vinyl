FROM ruby:3.3.0

WORKDIR /app

# Instala dependências do sistema
RUN apt-get update -y && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  yarn \
  watchman \
  && rm -rf /var/lib/apt/lists/*

# Copia Gemfile e instala gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copia o restante da aplicação
COPY . .

# Expõe a porta padrão do Rails
EXPOSE 3000

# Usa bin/dev para rodar web + css
CMD ["bin/dev"]
