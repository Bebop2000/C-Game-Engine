#version 330 core

layout (location=0) in vec3 vertex;
layout (location=1) in vec2 UV;

out vec2 texCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform mat4 projectionTimesView;

void main()
{
	texCoords = UV;
	gl_Position = projectionTimesView * model * vec4(vertex, 1.0);
	//gl_Position =  vec4(vertex, 1.0);
}