-- INSERT de Instructores
INSERT INTO instructores (id_instructor, nombre_ins, apellidos_ins) VALUES
('I-20', 'Ana', 'Gómez'),
('I-30', 'Juan', 'Ramos');

-- INSERT de Catálogo de Clases
INSERT INTO catalogo_clases (id_clase, clase_inscrita, tarifa_mensual) VALUES
(1, 'Yoga', 50.00),
(2, 'Pilates', 50.00),
(3, 'CrossFit', 60.00),
(4, 'Boxeo', 55.00);

-- INSERT de Socios
INSERT INTO socios (id_socio, nombres_socio, apellidos_socio, telefono) VALUES
(101, 'Carlos', 'Pérez', '555-1234'),
(102, 'Beatriz', 'Ruiz', '555-9988'),
(103, 'Diego', 'Landa', '555-4433');

-- INSERT de Asignaciones (Conectando los IDs)
INSERT INTO asignacion_clases (id_socio, id_clase, id_instructor) VALUES
(101, 1, 'I-20'), -- Carlos en Yoga con Ana
(101, 2, 'I-20'), -- Carlos en Pilates con Ana
(102, 3, 'I-30'), -- Beatriz en CrossFit con Juan
(103, 1, 'I-20'), -- Diego en Yoga con Ana
(103, 4, 'I-20'); -- Diego en Boxeo con Ana