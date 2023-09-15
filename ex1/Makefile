CC=nvcc
FLAGS=-allow-unsupported-compiler
ex1:  
	$(CC) $(FLAGS) -o device_query -g -G device_query.cu 
EXE=device_query

$(EXE): ex1
	./$@
commit_msg="QUICK COMMIT"
quick_commit:
	git add . 
	git commit -m $(commit_msg)

quick_push: quick_commit
	git push 

clean:
	rm -rf $(EXE)