#include <iostream>
#include <Eigen/Dense>

using namespace Eigen;
using namespace std;

int main()
{
    MatrixXd m = MatrixXd::Constant(3, 3, 1.1);
    VectorXd v(3);
    v << 1, 2, 3;

    cout << m << endl;
    cout << v << endl;
    cout << m * v << endl;

    return 0;
}