.PHONY: init configure build run clean

init: ## 📦 Instala dependências com o Conan
	PKG_CONFIG_PATH="/usr/lib/x86_64-linux-gnu/pkgconfig" \
		conan install . --output-folder=build --build=missing -s build_type=Release

configure: ## ⚙️  Configura o CMake com o preset default
	cmake --preset default

build: ## 🛠️  Compila o projeto na pasta build
	cmake --build build

run: ## 🚀 Executa a aplicação
	$(MAKE) -C build run

clean: ## 🧹 Limpa os arquivos de build
	rm -rf build
