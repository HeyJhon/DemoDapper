USE [Creditos]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 4/29/2020 11:10:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[ApellidoPaterno] [nvarchar](50) NULL,
	[ApellidoMaterno] [nvarchar](50) NULL,
	[TipoDocumento] [char](3) NULL,
	[Sexo] [char](1) NULL,
	[FechaNac] [datetime] NULL,
	[Direccion] [nvarchar](200) NULL,
	[CodigoPostal] [nvarchar](50) NULL,
	[NumeroDocumento] [nvarchar](11) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [TipoDocumento], [Sexo], [FechaNac], [Direccion], [CodigoPostal], [NumeroDocumento]) VALUES (1, N'Jhonnatan', N'Flores', N'Miramon', N'DNI', N'M', CAST(N'1990-08-05T00:00:00.000' AS DateTime), N'Direccion 1', N'75740', N'321654')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [TipoDocumento], [Sexo], [FechaNac], [Direccion], [CodigoPostal], [NumeroDocumento]) VALUES (2, N'Maria', N'Mendez', N'Vazquez', N'DNI', N'F', CAST(N'1998-05-08T00:00:00.000' AS DateTime), N'Direccion 2', N'32165', N'984764')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [TipoDocumento], [Sexo], [FechaNac], [Direccion], [CodigoPostal], [NumeroDocumento]) VALUES (3, N'Pedro', N'Lopez', N'Martinez', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [TipoDocumento], [Sexo], [FechaNac], [Direccion], [CodigoPostal], [NumeroDocumento]) VALUES (4, N'Angelica', N'Gutierrez', N'Romero', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [TipoDocumento], [Sexo], [FechaNac], [Direccion], [CodigoPostal], [NumeroDocumento]) VALUES (5, N'Juan', N'Perez', N'Morales', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [TipoDocumento], [Sexo], [FechaNac], [Direccion], [CodigoPostal], [NumeroDocumento]) VALUES (6, N'Marco', N'Ramirez', N'Monfil', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [TipoDocumento], [Sexo], [FechaNac], [Direccion], [CodigoPostal], [NumeroDocumento]) VALUES (7, N'Andres', N'Santos', N'Gutierrez', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_CLIENTE_LISTAR]    Script Date: 4/29/2020 11:10:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CLIENTE_LISTAR]

as
begin
SELECT [IdCliente]
      ,[Nombre]
      ,[ApellidoPaterno]
      ,[ApellidoMaterno]
      ,[TipoDocumento]
      ,[NumeroDocumento]
      ,[Sexo]
      ,[FechaNac]
      ,[Direccion]
      ,[CodigoPostal]
  FROM [Creditos].[dbo].[Cliente]

end
GO
/****** Object:  StoredProcedure [dbo].[SP_CLIENTE_OBTENER]    Script Date: 4/29/2020 11:10:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CLIENTE_OBTENER]
(
@pNumeroDocumento as nvarchar(11)
)
as
begin
SELECT [IdCliente]
      ,[Nombre]
      ,[ApellidoPaterno]
      ,[ApellidoMaterno]
      ,[TipoDocumento]
      ,[NumeroDocumento]
      ,[Sexo]
      ,[FechaNac]
      ,[Direccion]
      ,[CodigoPostal]
  FROM [Creditos].[dbo].[Cliente]
  WHERE [NumeroDocumento] = @pNumeroDocumento
end
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_CLIENTE]    Script Date: 4/29/2020 11:10:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_CLIENTE]
@Nombre NVARCHAR(50),
@ApellidoPaterno NVARCHAR(50),
@ApellidoMaterno NVARCHAR(50)
AS BEGIN

INSERT INTO [dbo].[Cliente]
           ([Nombre]
           ,[ApellidoPaterno]
           ,[ApellidoMaterno])
     VALUES
           (@Nombre,
		   @ApellidoPaterno,
		   @Apellidomaterno)
END
GO
