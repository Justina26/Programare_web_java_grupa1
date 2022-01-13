USE [proiect]
GO
/****** Object:  Table [dbo].[Adresa]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresa](
	[id_adresa] [bigint] IDENTITY(1,1) NOT NULL,
	[tara] [nchar](100) NULL,
	[judetul] [nchar](100) NULL,
	[localitate] [nchar](100) NULL,
	[strada] [nchar](100) NULL,
	[cod_postal] [nchar](10) NULL,
	[detalii] [nchar](100) NULL,
 CONSTRAINT [PK_Adresa] PRIMARY KEY CLUSTERED 
(
	[id_adresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Angajat]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Angajat](
	[id_angajat] [bigint] IDENTITY(1,1) NOT NULL,
	[nume] [nchar](100) NULL,
	[prenume] [nchar](100) NULL,
	[data_nasterii] [date] NULL,
 CONSTRAINT [PK_Angajat] PRIMARY KEY CLUSTERED 
(
	[id_angajat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id_client] [bigint] IDENTITY(1,1) NOT NULL,
	[nume] [nchar](100) NULL,
	[prenume] [nchar](100) NULL,
	[data_nasterii] [date] NULL,
	[email] [nchar](100) NULL,
	[telefon] [nchar](100) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colet]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colet](
	[id_colet] [bigint] IDENTITY(1,1) NOT NULL,
	[descriere] [nchar](100) NULL,
 CONSTRAINT [PK_Colet] PRIMARY KEY CLUSTERED 
(
	[id_colet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comanda]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comanda](
	[id_comanda] [bigint] IDENTITY(1,1) NOT NULL,
	[data_plasarii] [date] NULL,
	[descriere] [nchar](100) NULL,
 CONSTRAINT [PK_Comanda] PRIMARY KEY CLUSTERED 
(
	[id_comanda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cont]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont](
	[id_cont] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nchar](100) NULL,
	[parola] [nchar](100) NULL,
	[rol] [nchar](100) NULL,
 CONSTRAINT [PK_Cont] PRIMARY KEY CLUSTERED 
(
	[id_cont] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Depozit]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Depozit](
	[id_depozit] [bigint] IDENTITY(1,1) NOT NULL,
	[denumire] [nchar](100) NULL,
 CONSTRAINT [PK_Depozit] PRIMARY KEY CLUSTERED 
(
	[id_depozit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disponibilitate]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disponibilitate](
	[id_disponibilitate] [bigint] IDENTITY(1,1) NOT NULL,
	[descriere] [nchar](100) NULL,
	[disponibil] [bit] NULL,
 CONSTRAINT [PK_Disponibilitate] PRIMARY KEY CLUSTERED 
(
	[id_disponibilitate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disponibilitate_Produs]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disponibilitate_Produs](
	[id_disponibilitate_produs] [bigint] IDENTITY(1,1) NOT NULL,
	[cantitate_disponibila] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Disponibilitate_Produs] PRIMARY KEY CLUSTERED 
(
	[id_disponibilitate_produs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Functie]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Functie](
	[id_functie] [bigint] IDENTITY(1,1) NOT NULL,
	[denumire] [nchar](100) NULL,
	[descriere] [nchar](100) NULL,
	[salariu] [numeric](10, 2) NULL,
 CONSTRAINT [PK_Functie] PRIMARY KEY CLUSTERED 
(
	[id_functie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Functie_Angajat]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Functie_Angajat](
	[id_functie_angajat] [bigint] IDENTITY(1,1) NOT NULL,
	[data_angajarii] [date] NULL,
 CONSTRAINT [PK_Functie_Angajat] PRIMARY KEY CLUSTERED 
(
	[id_functie_angajat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produs]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produs](
	[id_produs] [bigint] IDENTITY(1,1) NOT NULL,
	[cantitate_cerere] [numeric](18, 0) NULL,
	[denumire] [nchar](300) NULL,
	[pret] [numeric](6, 2) NULL,
 CONSTRAINT [PK_Produs] PRIMARY KEY CLUSTERED 
(
	[id_produs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id_status] [bigint] IDENTITY(1,1) NOT NULL,
	[denumire] [nchar](100) NULL,
	[descriere] [nchar](100) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status_Comanda]    Script Date: 1/13/2022 5:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status_Comanda](
	[id_status_comanda] [bigint] IDENTITY(1,1) NOT NULL,
	[data_status] [date] NULL,
 CONSTRAINT [PK_Status_Comanda] PRIMARY KEY CLUSTERED 
(
	[id_status_comanda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
