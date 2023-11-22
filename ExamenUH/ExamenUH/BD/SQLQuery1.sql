CREATE DATABASE ExamenUH
GO

USE ExamenUH
GO

-- Tabla Usuarios
CREATE TABLE Usuarios
(
    UsuarioID int identity(1,1),
    Nombre varchar(50) NOT NULL,
    CorreoElectronico varchar(50) NOT NULL,
    Telefono varchar(20) NOT NULL,
    CONSTRAINT pk_UsuarioID PRIMARY KEY(UsuarioID)
)
GO
-- Tabla Equipo
CREATE TABLE Equipo
(
    EquipoID int identity(1,1),
    TipoEquipo varchar(50) NOT NULL,
    Modelo varchar(50) NOT NULL,
    UsuarioID int,
    CONSTRAINT pk_EquipoID PRIMARY KEY(EquipoID),
    CONSTRAINT fk_UsuarioEquipo FOREIGN KEY(UsuarioID) REFERENCES Usuarios(UsuarioID)
)
GO
-- Tabla Reparaciones
CREATE TABLE Reparaciones
(
    DetalleID int identity(1,1),
    EquipoID int,
    FechaSolicitud datetime,
    Estado varchar(50) NOT NULL,
    CONSTRAINT pk_DetalleID PRIMARY KEY(DetalleID),
    CONSTRAINT fk_EquipoReparacion FOREIGN KEY(EquipoID) REFERENCES Equipo(EquipoID)
)
GO
-- Tabla DetallesReparacion
CREATE TABLE DetallesReparacion
(
    DetalleID int,
    ReparacionesID int,
    Descripcion varchar(100) NOT NULL,
    FechaInicio datetime,
    FechaFin datetime,
    CONSTRAINT pk_DetalleReparacion PRIMARY KEY(DetalleID, ReparacionesID),
    CONSTRAINT fk_DetalleReparacion FOREIGN KEY(DetalleID) REFERENCES Reparaciones(DetalleID)
)
GO
-- Tabla Tecnicos
CREATE TABLE Tecnicos
(
    TecnicoID int identity(1,1),
    Nombre varchar(50) NOT NULL,
    Especialidad varchar(50) NOT NULL,
    CONSTRAINT pk_TecnicoID PRIMARY KEY(TecnicoID)
)
GO
-- Tabla Asignaciones
CREATE TABLE Asignaciones
(
    AsignacionesID int identity(1,1),
    ReparacionesID int,
    TecnicoID int,
    FechaAsignacion datetime,
    CONSTRAINT pk_AsignacionesID PRIMARY KEY(AsignacionesID),
    CONSTRAINT fk_ReparacionAsignacion FOREIGN KEY(ReparacionesID) REFERENCES Reparaciones(DetalleID),
    CONSTRAINT fk_TecnicoAsignacion FOREIGN KEY(TecnicoID) REFERENCES Tecnicos(TecnicoID)
)
GO

Create PROCEDURE ConsultarUsuario_Filtro -- Consultar con filtro al usuario
	@UsuarioID int
AS
BEGIN
	SELECT * FROM Usuarios WHERE UsuarioID = @UsuarioID
END
GO

CREATE PROCEDURE ModificarUsuario -- Modificar usuario
	@UsuarioID INT,
	@Nombre varchar(50),
	@CorreoElectronico varchar(50),
	@Telefono varchar(8)
AS
BEGIN
	UPDATE Usuarios SET Nombre = @Nombre, CorreoElectronico = @CorreoElectronico, Telefono = @Telefono WHERE UsuarioID = @UsuarioID
END
GO

CREATE PROCEDURE BorrarUsuario
   @usuarioID int
as
begin
  delete from Usuarios WHERE UsuarioID = @usuarioID
  end
go

CREATE PROCEDURE AgregarUsuario -- Agregar usuario
	@Nombre varchar(50),
	@CorreoElectronico varchar(50),
	@Telefono varchar(8)
AS
BEGIN
	Insert Into Usuarios (Nombre, CorreoElectronico, Telefono) Values (@Nombre, @CorreoElectronico, @Telefono)
END
GO






Create PROCEDURE ConsultarEquipo_Filtro -- Consultar con filtro 
	@equipoID int
AS
BEGIN
	SELECT * FROM Equipo WHERE EquipoID = @equipoID
END
GO

CREATE PROCEDURE ModificarEquipo -- Modificar Equipo
	@EquipoID INT,
	@TipoEquipo varchar(50),
	@Modelo varchar(50),
	@UsuarioID INT
AS
BEGIN
	UPDATE Equipo SET UsuarioID = @UsuarioID, TipoEquipo = @TipoEquipo, Modelo = @Modelo WHERE EquipoID = @EquipoID
END
GO


CREATE PROCEDURE BorrarEquipo
   @EquipoID int
as
begin
  delete from Equipo WHERE EquipoID = @EquipoID
  end
go



CREATE PROCEDURE AgregarEquipo 
	@TipoEquipo varchar(50),
	@Modelo varchar(50),
	@UsuarioID INT
AS
BEGIN
	Insert Into Equipo (TipoEquipo, Modelo, UsuarioID) Values (@TipoEquipo, @Modelo, @UsuarioID)
END
GO






Create PROCEDURE ConsultarTecnico_Filtro -- Consultar con filtro al tecnico
	@TecnicoID int
AS
BEGIN
	SELECT * FROM Tecnicos WHERE TecnicoID = @TecnicoID
END
GO

CREATE PROCEDURE ModificarTecnico -- Modificar tecnico
	@TecnicoID INT,
	@Nombre varchar(50),
	@Especialidad varchar(50)
AS
BEGIN
	UPDATE Tecnicos SET Nombre = @Nombre, Especialidad = @Especialidad WHERE TecnicoID = @TecnicoID
END
GO

CREATE PROCEDURE BorrarTecnico
   @TecnicoID int
as
begin
  delete from Tecnicos WHERE TecnicoID = @TecnicoID
  end
go

CREATE PROCEDURE AgregarTecnico -- Agregar Tecnico
	@Nombre varchar(50),
	@Especialidad varchar(50)
AS
BEGIN
	Insert Into Tecnicos (Nombre, Especialidad) Values (@Nombre, @Especialidad)
END
GO
