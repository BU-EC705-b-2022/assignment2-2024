# Assignment 1: Writing a Converging Sequence

### Task: Write a code for Assignment 1 in Lecture 2.

### Deadline: 11/2 (Wednesday) 11:59pm.

### Directions:
* Set up a project folder to keep your code organized. In a folder you have created specifically for this project, create the folders `src` and `test`. 
* Write your solution in the file `src/source.R`. That is, a file named `source.R` that lives in the `src` folder.
* When writing the R code. Ensure your "working directory" is the "project folder" you have just created (the working directory is the same folder which holds `src` and `test`). Do *not* use a `setwd` command inside the script to change the working directory. Either run `setwd` in the terminal while working or change the working directory by hand by going to "Session" and then "Change working directory" in Rstudio. This only needs to be done once while working.
*  In `source.R`, name your function as `converge` with two arguments corresponding to `x_0` and `epsilon` in this order.
*  Download the `test.R` file in this repository and place it in the folder `test`. Your folder structure should now look like

```
├── src
│	└── source.R
└── test
    └── test.R
```

*  Before submitting, execute `test/test.R` (with your working directory in the correct location). If your code is correct, this code returns the following output:

```
Test passes with x0 =  2 
Test passes with x0 =  4 
Test passes with x0 =  8 
Test passes with x0 =  16 
Test passes with x0 =  32 
```

*  Only submit when you confirm that the above test actually passes!

### Grading

To receive full marks you must

* Ensure tests pass
* Write the loop so that you only write out the updating step *once*. When coding, it is best practice to not unnecessarily repeat code. 
* Use clear variable names so the logic of the code is easy to follow. 

Best practices to follow, but whose absence will not lead to lost points

* Spaces around all operators, i.e. `y = x + 1` rather than `y=x+1`
* Spaces after commas in arguments, i.e `f(x, y)` instead of `f(x,y)`
* Don't control code behavior via comments. That is, don't write lines like
```r
# Uncomment for debugging
# print(i)
```
Instead of the above pattern, use global flags. Something like 
```r
if(DEBUG) {
	print(i)
}
```
where `DEBUG` is defined at the top of the script. 