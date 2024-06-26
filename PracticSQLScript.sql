USE [registration_of_applications]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 02.05.2024 3:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 02.05.2024 3:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderEquipment] [varchar](50) NOT NULL,
	[OrderTrouble] [text] NOT NULL,
	[OrderTroubleDescription] [text] NOT NULL,
	[OrderUser] [int] NOT NULL,
	[OrderEmployee] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02.05.2024 3:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 02.05.2024 3:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserActions]    Script Date: 02.05.2024 3:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActions](
	[ActionID] [int] IDENTITY(1,1) NOT NULL,
	[ActionDate] [datetime] NOT NULL,
	[ActionDesctription] [varchar](50) NOT NULL,
	[ActionLogin] [varchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02.05.2024 3:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserFIO] [varchar](max) NOT NULL,
	[UserEmail] [varchar](50) NOT NULL,
	[UserPhone] [varchar](50) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (1, 4)
INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (2, 5)
INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (3, 7)
INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (4, 9)
INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (5, 10)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDate], [OrderEquipment], [OrderTrouble], [OrderTroubleDescription], [OrderUser], [OrderEmployee]) VALUES (5, 2, CAST(N'2022-05-02' AS Date), N'Мышь', N'Не работает', N'Не подключается к пк', 3, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDate], [OrderEquipment], [OrderTrouble], [OrderTroubleDescription], [OrderUser], [OrderEmployee]) VALUES (6, 1, CAST(N'2024-05-01' AS Date), N'Микрофон', N'Не работает', N'Не определяется, как устройство ПК', 1, 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Сотрудник')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (1, N'В ожидании')
INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (2, N'В работе')
INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (3, N'Выполнено')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[UserActions] ON 

INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (1, CAST(N'2024-05-01T23:18:01.063' AS DateTime), N'Добавление заявки в таблицу Orders', N'DESKTOP-D8PO1QP\sofia')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (2, CAST(N'2024-05-01T23:18:16.313' AS DateTime), N'Удаление заявки из таблицы Orders', N'DESKTOP-D8PO1QP\sofia')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (3, CAST(N'2024-05-01T23:19:39.037' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-D8PO1QP\sofia')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (4, CAST(N'2024-05-01T23:36:01.573' AS DateTime), N'Добавление заявки в таблицу Orders', N'DESKTOP-D8PO1QP\sofia')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (5, CAST(N'2024-05-02T01:59:29.483' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-D8PO1QP\sofia')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (6, CAST(N'2024-05-02T02:25:29.273' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-D8PO1QP\sofia')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (7, CAST(N'2024-05-02T02:25:32.837' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-D8PO1QP\sofia')
SET IDENTITY_INSERT [dbo].[UserActions] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (1, N'Романов Роман Матвеевич', N'gesuce-raco69@internet.ru', N'+79869094449', N'mKvGXunf', 1)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (2, N'Коновалова Мария Глебовна', N'ponay_iboje44@yandex.ru', N'+79022401016', N'OEO2yBWF', 3)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (3, N'Филиппова Алиса Евгеньевна', N'gorom_atego71@hotmail.com', N'+79938018008', N'WSqcQjbq', 3)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (4, N'Чернов Владимир Владиславович', N'pacedan-era91@yandex.ru', N'+79004067743', N'UxzQ8Ifm', 2)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (5, N'Егорова Василиса Данииловна', N'dag-inudejo47@list.ru', N'+79913333771', N'D2xqzeI1', 2)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (6, N'Захарова Анна Михайловна', N'doxopak_ome11@internet.ru', N'+79023060842', N'jaOgMpJT', 3)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (7, N'Ильинская Маргарита Елисеевна', N'hokun-enexe67@bk.ru', N'+79024972376', N'rbsrIv6q', 2)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (8, N'Андреева Алеся Максимовна', N'rogoj_uhupo61@gmail.com', N'+79527110608', N'42bxhZLq', 3)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (9, N'Гусева Мария Елисеевна', N'cazo-fetira56@mail.ru', N'+79010352954', N'gO9U1qvi', 2)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (10, N'Малышев Лев Даниилович', N'kuy_ixufela14@hotmail.com', N'+79001978165', N'5fxHXbSh', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([OrderEmployee])
REFERENCES [dbo].[Employees] ([EmpID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Statuses] FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[Statuses] ([StatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Statuses]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([OrderUser])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
/****** Object:  Trigger [dbo].[DeleteOrder]    Script Date: 02.05.2024 3:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[DeleteOrder] on [dbo].[Orders]
after delete
as
begin
	declare @login varchar(128)
	select @login = login_name from sys.dm_exec_sessions
	where session_id = @@SPID
	insert into UserActions (ActionDate, ActionDesctription, ActionLogin)
	values(sysdatetime(), 'Удаление заявки из таблицы Orders', @login)
end
GO
ALTER TABLE [dbo].[Orders] ENABLE TRIGGER [DeleteOrder]
GO
/****** Object:  Trigger [dbo].[InsertOrder]    Script Date: 02.05.2024 3:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[InsertOrder] on [dbo].[Orders]
after insert
as
begin
	declare @login varchar(128)
	select @login = login_name from sys.dm_exec_sessions
	where session_id = @@SPID
	insert into UserActions (ActionDate, ActionDesctription, ActionLogin)
	values(sysdatetime(), 'Добавление заявки в таблицу Orders', @login)
end
GO
ALTER TABLE [dbo].[Orders] ENABLE TRIGGER [InsertOrder]
GO
/****** Object:  Trigger [dbo].[UpdateOrder]    Script Date: 02.05.2024 3:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[UpdateOrder] on [dbo].[Orders]
after update
as
begin
	declare @login varchar(128)
	select @login = login_name from sys.dm_exec_sessions
	where session_id = @@SPID
	insert into UserActions (ActionDate, ActionDesctription, ActionLogin)
	values(sysdatetime(), 'Обновление заявки из таблицы Orders', @login)
end
GO
ALTER TABLE [dbo].[Orders] ENABLE TRIGGER [UpdateOrder]
GO
