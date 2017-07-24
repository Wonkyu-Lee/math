#include <iostream>
#include <Eigen/Dense>
#include <glm/mat4x4.hpp>
#include <glm/vec3.hpp>

#define GLM_ENABLE_EXPERIMENTAL
#include <glm/gtx/transform.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/ext.hpp>

using namespace std;

void testEigen()
{
    using namespace Eigen;

    Matrix3f m = Matrix3f::Random() + Matrix3f::Constant(1.0f);
    Vector3f v(1, 2, 3);

    cout << m << endl;
    cout << v << endl;
    cout << m * v << endl;

    cout << "size of m: " << sizeof(m) << endl;
    cout << "size of v: " << sizeof(v) << endl;

    for (int i = 0; i < 9; ++i)
    {
        cout << *(m.data() + i) << endl;
    }
};

void testGlm()
{
    using namespace glm;
    mat4 t = translate(vec3(1.0f, 2.0f, 3.0f));
    cout << glm::to_string(t) << endl;
    mat4 s = scale(vec3(2.0f, 2.0f, 2.0f));
    cout << glm::to_string(s) << endl;
}

int main()
{
    testEigen();
    testGlm();

    return 0;
}