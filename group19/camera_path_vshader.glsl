#version 330 core

// Transformation matrices from model space to camera clip space.
uniform mat4 view;
uniform mat4 projection;

// Vertices 3D position in world space.
layout(location = 0) in vec3 vertexPosition3DWorld;

// Vertex position (mandatory output).
out gl_PerVertex {
    vec4 gl_Position;
};


void main() {

    // View matrix transforms from world space to camera space.
    // Projection matrix transforms from camera space to clip space (homogeneous space).
    vec4 vertexPositionCamera = view * vec4(vertexPosition3DWorld, 1.0);
    gl_Position = projection * vertexPositionCamera;

}
