# To use
1. update sorting.cpp's main to have the following body. Otherwise, debugging information, and "success/failure" information will be printed to the screen.

```c++
int main(int argc, char* argv[]) {
    string      sort_alg;
    bool        debugging;
    vector<int> data;

    tie(sort_alg, debugging) = command_line_args(argc, argv, data);

    if (debugging) print_vector(data);

    chrono::duration<double> elapsed = run_algorithm(sort_alg, data);
    cout  << fixed << elapsed.count();
   
    return 0;
}
```
2. Make the script `make-timetable.sh` executable, by running the command

> `chmod +x make-timetable.sh`

3. Then, run the timetable script, by typing

> `./make-timetable.sh`

4. The output should be rendered in a table called `RESULT.md`

---
# Example output
| Sorting Algo |   100 -r   | 1000 -r    | 10000 -r   | 100 dec    | 1000 dec   | 10000 dec 
| ------------ | ---------- | ---------- | ---------- | ---------- | ---------- | ---------- |
| insertionAux | 	0.000052  |  0.006872  |  0.464220  |  0.000096  |  0.009096  |  0.919145  |  
| insertionPlace | 	0.000050  |  0.004581  |  0.463038  |  0.000131  |  0.009031  |  0.941936  |  
| selectionAux | 	0.000057  |  0.003389  |  0.331807  |  0.000060  |  0.003386  |  0.334022  |  
| selectionPlace | 	0.000038  |  0.002993  |  0.296249  |  0.000034  |  0.003521  |  0.308121  |  
| mergesort |		0.000039  |  0.000454  |  0.005442  |  0.000035  |  0.000360  |  0.004099  |  
| quicksort |		0.000014  |  0.000176  |  0.002334  |  0.000027  |  0.002140  |  0.204480  |  
