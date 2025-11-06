.PHONY: clean

./bin/myapp: ./obj/func1.o ./obj/func2.o ./obj/main.o
	gcc $^ -o $@

./obj/%.o: ./src/%.c
	gcc -c $< -o $@ -I./include

clean:
	rm ./bin/myapp
	rm ./obj/*.o