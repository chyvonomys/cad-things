cube_vertices =
[
    [-1, -1, -1],
    [-1, +1, -1],
    [+1, +1, -1],
    [+1, -1, -1],

    [-1, -1, +1],
    [-1, +1, +1],
    [+1, +1, +1],
    [+1, -1, +1]
];

cube_faces =
[
    [0, 1, 2],  [2, 3, 0], // -z
    [7, 6 ,5],  [5, 4, 7], // +z
    [2, 6, 7],  [7, 3 ,2], // +x
    [0, 4, 5],  [5, 1, 0], // -x
    [1, 5, 6],  [6, 2, 1], // +y
    [3, 7, 4],  [4, 0, 3]  // -y
];

tr =
[
    [1, -1, 0, 0]/sqrt(2),
    [1, 1, 0, 0]/sqrt(2),
    [0, 0, 1, 0],
    [0, 0, 0, 1]
];

b = tr * [10, 10, 10, 1];

echo(b);

function transform_vertices(vs, m) = [
    for (i = [0:len(vs)-1])
    let (t = m * [vs[i][0], vs[i][1], vs[i][2], 1])
    [t[0], t[1], t[2]] / t[3]
];

color("turquoise")
polyhedron(points = transform_vertices(cube_vertices, tr), faces = cube_faces);
