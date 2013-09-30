//Program to overlad +, >> and << and use them on complex number objects
#include<iostream>
using namespace std;
class complex{
double r,i;
public:
complex operator+(complex ob2);
friend istream& operator>>(istream &din,  complex& obj);
friend ostream& operator<<(ostream &dout, complex& obj);
};
complex complex :: operator+(complex ob2)
{
	complex temp;
	temp.r = r + ob2.r;
	temp.i = i+ ob2.i;
	return temp;
}
istream& operator>>(istream &din,  complex& obj)
{	
	cout<<"Enter real part";
	din>>obj.r;
	cout>>"Enter imaginary part:"
	din>>obj.i;
}
ostream& operator<<(ostream &dout, complex& obj)
{
	dout<<obj.r;
	if(obj.i > 0)
		dout<<"+"<<"i"<<obj.i<<endl;
	else
		dout<<"+"<<obj.i<<"i"<<endl;
}
int main()
{
complex x,y,sum;
cin>>x;
cin>>y;
sum = x+y;
cout<<"A=";
cout<<x;
return 0;
}
