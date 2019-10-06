# To use this provide the master file, for example at a command prompt
# $> MASTER=EaseGill-Pippikin make tables
# $> MASTER=LeckMasongill make tables


current : $(MASTER).3d

$(MASTER).3d : $(MASTER).svx
	cavern $(MASTER)
	@echo Created $(MASTER).3d

tables : $(MASTER).svx
	./duplicates.sh $(MASTER) > duplicates.txt
	./table.sh $(MASTER) > table.txt
	./caves.sh $(MASTER) > caves.txt
	@echo Created tab-delimited text files: duplicates.txt, table.txt, caves.txt

clean :
	find . -name "*.3d" -exec rm {} \;
	find . -name "*.err" -exec rm {} \;
	find . -name "*~" -exec rm {} \;
