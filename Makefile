
all-ttf:= assamese bengali devanagari gujarati kannada malayalam marathi nepali oriya punjabi tamil tamil-classical telugu

all:
	
	for font in $(all-ttf); do \
                 cd $${font};	cp ../AUTHORS ../scripts/apply_featurefile.py  ../generate*.pe ../scripts/*.py ../COPYRIGHT ../OFL.txt ../README ../README.git .;	 make all;		 rm -f generate* *.py AUTHORS COPYRIHGT OFL.txt README README.git;		 cd ..; \
        done

sfd-dist:
	
	for font in $(all-ttf); do \
                 cd $${font};	cp ../AUTHORS ../scripts/apply_featurefile.py ../generate*.pe ../scripts/*.py ../COPYRIGHT ../OFL.txt ../README ../README.git .;	 make sfd-dist;		 rm -f generate* AUTHORS COPYRIHGT OFL.txt README README.git;		 cd ..; \
        done

ttf:
	
	for font in $(all-ttf); do \
                 cd $${font};	cp ../AUTHORS ../apply_featurefile.py ../generate*.pe ../scripts/*.py ../COPYRIGHT ../OFL.txt ../README ../README.git .;	 make ttf;		 rm -f generate* *.py AUTHORS COPYRIHGT OFL.txt README README.git;		 cd ..; \
        done
clean:
	for font in $(all-ttf); do \
                 cd $${font}; make clean; cd ..; \
        done
