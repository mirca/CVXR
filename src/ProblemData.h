//   Copyright 2017 Steven Diamond
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.

#ifndef PROBLEMDATA_H
#define PROBLEMDATA_H

#include <vector>
#include <map>

/* Stores the result of calling BUILD_MATRIX on a collection of LinOp
 * trees. */
class ProblemData {
public:
	/* COO sparse matrix representation. V stores the data, I the row indices
	 * and J the column indices. */
	std::vector<double> V;
	std::vector<int> I;
	std::vector<int> J;

	/* Dense matrix representation of the constant vector */
	std::vector<double> const_vec;

	/* Map of variable_id to column in the problemData matrix */
	std::map<int, int> id_to_col;

	/* Map of constant linOp's to row in the problemData matrix  */
	std::map<int, int> const_to_row;

	/*******************************************
	 * The functions below return problemData vectors as contiguous 1d
	 * numpy arrays.
	 *
	 * Note the function prototypes must match CVXCanon.i exactly to
	 * properly run and compile.
	 *
	 * Each function is wrapped using SWIG's numpy.i typemap, so can
	 * be called in python using
	 *
	 * 				problemData.getV(N)
	 *
	 * where N is the length of the vector V. The double *pointer VALUES
	 * is generated by the wrapper, which allocates space for NUM_VALUES
	 * elements. Thus, NUM_VALUES must be exactly the length of the array.
	 ********************************************/

	/**
	 * Returns the data vector V as a contiguous 1D numpy array.
	 */
	void getV(double* values, int num_values) {
		for (int i = 0; i < num_values; i++) {
			values[i] = V[i];
		}
	}

	/**
	 * Returns the row index vector I as a contiguous 1D numpy array.
	 */
	void getI(double* values, int num_values) {
		for (int i = 0; i < num_values; i++) {
			values[i] = I[i];
		}
	}

	/**
	 * Returns the column index vector J as a contiguous 1D numpy array.
	 */
	void getJ(double* values, int num_values) {
		for (int i = 0; i < num_values; i++) {
			values[i] = J[i];
		}
	}

	/**
	 * Returns the CONST_VEC as a contiguous 1D numpy array.
	 */
	void getConstVec(double* values, int num_values) {
		for (int i = 0; i < num_values; i++) {
			values[i] = const_vec[i];
		}
	}
#ifdef _R_INTERFACE_
  ~ProblemData() {
#ifdef _R_DEBUG_
    Rcpp::Rcout << "ProblemData was destroyed!" <<std::endl;
#endif
  }
#endif
};

#endif
