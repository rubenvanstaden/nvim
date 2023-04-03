cfg:
	cp -R nvim ~/.config

pkg:
	./pkg.sh

clean:
	rm -rf "$(HOME)/.config/nvim"
	rm -rf "$(HOME)/.local/share/nvim"

diff:
	rm -rf nvim/
	cp -R ~/.config/nvim .
