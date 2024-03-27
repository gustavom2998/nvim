export:
		rm -rf ./nvim 
		cp -r ~/.config/nvim ./nvim

import:
		rm -rf ~/.config/nvim
		cp -r ./nvim ~/.config/nvim
