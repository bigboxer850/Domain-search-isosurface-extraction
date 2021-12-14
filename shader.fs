#version 410
in vec4 col;
uniform int now;
void main()
{
	if(now==1)
     gl_FragColor = col;
	 else
	 gl_FragColor=vec4(1.0,1.0,1.0,1.0);
	 }
