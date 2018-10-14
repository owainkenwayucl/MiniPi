#include <iostream.h>
#include <time.h>

int main() {
	long i, num_steps;
	double slice, x, sum, pi, duration;
	
	cout << "Please enter the number of slices: ";
	cin >> num_steps;
	
	cout << "Calculating Pi with: " << endl << "  " << num_steps << " slices" << endl;
	
	clock_t start = clock();
	sum = 0.0;
	slice = 1.0/num_steps;
	
	for (i=0; i<num_steps; i++) {
		x = ((double)i + 0.5) * slice;
		sum += 4.0/(1.0 + x*x);
	}
	pi = sum * slice;
	clock_t stop = clock();
	
	duration = (double)(stop - start)/(double)CLOCKS_PER_SEC;
	cout << "Estimated value of PI: " << pi << endl;
	cout << "Time taken: " << duration << " seconds." << endl;
}
