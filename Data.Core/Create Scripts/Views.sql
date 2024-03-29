USE [Clearview]
GO
/****** Object:  View [dbo].[AssetCenter_Loaner_Details]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AssetCenter_Loaner_Details]
AS
SELECT     [Device Name], [Commission Date], [Remove Date], Model, [Type-Model], [Serial Number], Room, Rack, AppCode, [Support App Desc], PrimaryContact, 
                      PrimaryContactPhone, [Assignment Status], NccTestLoanerFlag, Supervisor, Comment, LoanerReturnDate, SystemType
FROM         RMData.dbo.vw_AssetCenter_Loaner_Details

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_Loaner_Details (RMData.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AssetCenter_Loaner_Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AssetCenter_Loaner_Details'
GO
/****** Object:  View [dbo].[vw_AssetCenter_ApplicationChargebackAll]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_ApplicationChargebackAll]
AS
SELECT     Status, BillableFunction, AppCode, Application, ServerName, AppProcessorCount, TotalSizeOfVols, [Audit Date], ProjectNumber, NccHWRefreshFlag, 
                      ServerType, NccCurrentServerClass
FROM         RMData.dbo.vw_AssetCenter_ApplicationChargebackAll AS vw_AssetCenter_ApplicationChargebackAll_1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[30] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_ApplicationChargebackAll_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ApplicationChargebackAll'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ApplicationChargebackAll'
GO
/****** Object:  View [dbo].[vw_AssetCenter_ApplicationChargebackProduction]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_ApplicationChargebackProduction]
AS
SELECT     Status, BillableFunction, AppCode, Application, ServerName, AppProcessorCount, TotalSizeOfVols, [Audit Date], ProjectNumber, NccHWRefreshFlag, 
                      ServerType, NccCurrentServerClass
FROM         RMData.dbo.vw_AssetCenter_ApplicationChargebackProduction AS vw_AssetCenter_ApplicationChargebackProduction_1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_ApplicationChargebackProduction_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 482
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ApplicationChargebackProduction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ApplicationChargebackProduction'
GO
/****** Object:  View [dbo].[vw_AssetCenter_ApplicationChargebackTest]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_ApplicationChargebackTest]
AS
SELECT     Status, BillableFunction, AppCode, Application, ServerName, AppProcessorCount, TotalSizeOfVols, [Audit Date], ProjectNumber, NccHWRefreshFlag, 
                      ServerType, NccCurrentServerClass
FROM         RMData.dbo.vw_AssetCenter_ApplicationChargebackTest AS vw_AssetCenter_ApplicationChargebackTest_1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_ApplicationChargebackTest_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ApplicationChargebackTest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ApplicationChargebackTest'
GO
/****** Object:  View [dbo].[vw_AssetCenter_Decommission_Details]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_Decommission_Details]
AS
SELECT     Year, Month, MonthName, DecommissionDate, NccSCRequest, Name, lPortfolioItemId, seAssignment, RetireDate, AssetTag, [Serial Number], 
                      NccTestLoanerFlag, Value, Type, [VS Consolidation], [IIS Consolidation], [SQL Consolidation], [LAB Consolidation], [Amp Rating], [Computer Type]
FROM         RMData.dbo.vw_AssetCenter_Decommission_Details AS vw_AssetCenter_Decommission_Details_1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_Decommission_Details_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_Decommission_Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_Decommission_Details'
GO
/****** Object:  View [dbo].[vw_AssetCenter_ServerAsset_Details]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_ServerAsset_Details]
AS
SELECT     [Device Name], [Commission Date], [Remove Date], Model, Year, Month, CommissionMonth, Environment, OperatingSystem, [Current Class], 
                      NccBuildDate, [Intended Class], [Retire Date], FullName, [Amp Rating], [Stock Location], Assignment, State, Address1, City, [HR Site Code], Workgroup, 
                      nccSerialNo, AssetTag, NccRoom, NccRack, [Mounting Pos Start], mPrice, Value, ServerType
FROM         RMData.dbo.vw_AssetCenter_ServerAsset_Details AS vw_AssetCenter_ServerAsset_Details_1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_ServerAsset_Details_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServerAsset_Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServerAsset_Details'
GO
/****** Object:  View [dbo].[vw_AssetCenter_ServersAwaitingProd_Details]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_ServersAwaitingProd_Details]
AS
SELECT     Year, Month, NccBuildDate, NccServerEnvironment, NccCurrentServerClass, NccIntendedServerClass, DeviceName, OperatingSystem, [Type-Model], 
                      Number, [Planned Start], [Approval Status], Coordinator, [Coordinator Phone], Description, Location
FROM         RMData.dbo.vw_AssetCenter_ServersAwaitingProd_Details AS vw_AssetCenter_ServersAwaitingProd_Details_1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[48] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_ServersAwaitingProd_Details_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServersAwaitingProd_Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServersAwaitingProd_Details'
GO
/****** Object:  View [dbo].[vw_AssetCenter_ServersBuilt_Details]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_ServersBuilt_Details]
AS
SELECT     MonthName, Month, Year, OperatingSystem, Model, Environment, CurrentClass, IntendedClass
FROM         RMData.dbo.vw_AssetCenter_ServersBuilt_Details AS vw_AssetCenter_ServersBuilt_Details_1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_ServersBuilt_Details_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServersBuilt_Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServersBuilt_Details'
GO
/****** Object:  View [dbo].[vw_AssetCenter_ServersInCommission_Details]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_ServersInCommission_Details]
AS
SELECT     Environment, [Current Class], [Intended Class], [Device Name], nccSerialNo, OperatingSystem, NccServerFunction, [Service Pack], [Proc Cnt], 
                      [Proc Speed MHZ], [Build Date], [Commission Date], [Remove Date], [IP Address], Domain, Model, State, City, Address1, [HR Site Code], NccRoom, 
                      NccRack, [Rack Mounting Position], [Type-Model], LifeCycleState, TotalDASD_MB, NccHWRefreshFlag, NccProjectNumber, NccProjectName, 
                      NccTestLoanerFlag, [Computer Type], [Component Of], AssetTag, dtHardScan, NccLogicalCPUCount, NccCoresPerPhysicalCount, 
                      NccHyperThreadCapable, NccHyperThreadEnabled, NccMaxDowntime, NccSANAttachedFlag, NccLoadBalanced
FROM         RMData.dbo.vw_AssetCenter_ServersInCommission_Details AS vw_AssetCenter_ServersInCommission_Details_1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_ServersInCommission_Details_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServersInCommission_Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServersInCommission_Details'
GO
/****** Object:  View [dbo].[vw_AssetCenter_ServersInCommissionApplicationData_Details]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_ServersInCommissionApplicationData_Details]
AS
SELECT     Environment, [Current Class], [Intended Class], [Device Name], nccSerialNo, OperatingSystem, NccServerFunction, [Service Pack], [Build Date], 
                      [Commission Date], Year, Month, CommissionMonth, [Remove Date], NccRedFlagNotes, [IP Address], Domain, Model, State, City, Address1, 
                      [HR Site Code], Room, Rack, AppCode, Application, AppCommissionDate, AppCommissionYear, AppCommissionMonth, AppCommissionMonthName, 
                      [DR Code], [Primary Admin XID], [Primary Admin FName], [Primary Admin LName], [Primary Admin Phone], [App Contact XID], [App Contact FName], 
                      [App Contact LName], [App Contact Phone], [Secondary App Contact XID], [Secondary App Contact FName], [Secondary App Contact LName], 
                      [Secondary App Contact Phone], [Client Contact XID], [Client Contact FName], [Client Contact LName], [Client Contact Phone], NccAppMaintWindow, 
                      NccBillableApp, [Proc Cnt], [Proc Speed MHZ], [Type-Model], NccHWRefreshFlag, NccProjectNumber, NccProjectName, NccTestLoanerFlag, Value, 
                      [Computer Type], [Component Of], AssetTag, dtHardScan, NccLogicalCPUCount, NccCoresPerPhysicalCount, NccHyperThreadCapable, 
                      NccHyperThreadEnabled, NccMaxDowntime, NccSANAttachedFlag, NccLoadBalanced
FROM         RMData.dbo.vw_AssetCenter_ServersInCommissionApplicationData_Details AS vw_AssetCenter_ServersInCommissionApplicationData_Details_1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_ServersInCommissionApplicationData_Details_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServersInCommissionApplicationData_Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServersInCommissionApplicationData_Details'
GO
/****** Object:  View [dbo].[vw_AssetCenter_ServerStatus]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetCenter_ServerStatus]
AS
SELECT     TOP (100) PERCENT RMData.dbo.vw_AssetCenter_ServerAsset_Details.Model, RMData.dbo.vw_AssetCenter_ServerAsset_Details.[Stock Location], 
                      RMData.dbo.vw_AssetCenter_ServerAsset_Details.nccSerialNo, RMData.dbo.vw_AssetCenter_ServerAsset_Details.AssetTag, 
                      RMData.dbo.vw_AssetCenter_ServerAsset_Details.NccRoom, RMData.dbo.vw_AssetCenter_ServerAsset_Details.NccRack, 
                      RMData.dbo.vw_AssetCenter_ServerAsset_Details.Value, RMData.dbo.vw_AssetCenter_ServerAsset_Details.ServerType, 
                      RMData.dbo.vw_AssetCenter_ServerAsset_Details.Assignment, vw_AssetCenter_ServerStatus_1.[Test Loaner], 
                      vw_AssetCenter_ServerStatus_1.ProjectID, vw_AssetCenter_ServerStatus_1.[PO Number], vw_AssetCenter_ServerStatus_1.mPrice, 
                      vw_AssetCenter_ServerStatus_1.mTax
FROM         RMData.dbo.vw_AssetCenter_ServerAsset_Details INNER JOIN
                      RMData.dbo.vw_AssetCenter_ServerStatus AS vw_AssetCenter_ServerStatus_1 ON 
                      RMData.dbo.vw_AssetCenter_ServerAsset_Details.nccSerialNo = vw_AssetCenter_ServerStatus_1.[Serial Number]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[33] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_AssetCenter_ServerAsset_Details (RMData.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 235
               Right = 318
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "vw_AssetCenter_ServerStatus_1"
            Begin Extent = 
               Top = 1
               Left = 338
               Bottom = 233
               Right = 635
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServerStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetCenter_ServerStatus'
GO
/****** Object:  View [dbo].[vw_ClearView_Factory_Feed]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ClearView_Factory_Feed]
AS
SELECT     ServerName, ServerCommissionDate, ServerEnvironment, ServerOperatingSystem, ServerClass, ServerNccBuildDate, ServerLocation, 
                      ServerLocationState, ServerLocationCity, ServerWorkgroup, ServerSerialNumber, ServerAssetTag, ServerRoom, ServerRack, ServerType, 
                      ServerStorageType, ServerCapacityProd, ServerCapacityTest, ServerModel
FROM         dbo.vwServerDetails
WHERE     (ServerClassID = '6') OR
                      (ServerClassID = '7')

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[23] 4[36] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vwServerDetails"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 127
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 14
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 48
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClearView_Factory_Feed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClearView_Factory_Feed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClearView_Factory_Feed'
GO
/****** Object:  View [dbo].[vw_ClearView_ProjectRequests]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ClearView_ProjectRequests]
AS
SELECT     dbo.cv_projects.name AS ProjectName, dbo.cv_projects.number, dbo.cv_projects.bd, cv_req.fname + ' ' + cv_req.lname AS submitter, 
                      dbo.cv_requests.start_date, dbo.cv_requests.end_date, dbo.cv_requests.description, cv_ws.fname + ' ' + cv_ws.lname AS ws, 
                      cv_es.fname + ' ' + cv_es.lname AS es, dbo.cv_requests.modified AS submittedon, dbo.cv_project_requests.id, dbo.cv_project_requests.requestid, 
                      dbo.cv_projects.executive, dbo.cv_projects.working, dbo.cv_project_requests.req_type, dbo.cv_project_requests.req_date, 
                      dbo.cv_project_requests.interdependency, dbo.cv_project_requests.projects, dbo.cv_project_requests.capability, dbo.cv_project_requests.man_hours, 
                      dbo.cv_project_requests.expected_capital, dbo.cv_project_requests.internal_labor, dbo.cv_project_requests.external_labor, 
                      dbo.cv_project_requests.maintenance_increase, dbo.cv_project_requests.project_expenses, dbo.cv_project_requests.estimated_avoidance, 
                      dbo.cv_project_requests.estimated_savings, dbo.cv_project_requests.realized_savings, dbo.cv_project_requests.business_avoidance, 
                      dbo.cv_project_requests.maintenance_avoidance, dbo.cv_project_requests.asset_reusability, dbo.cv_project_requests.internal_impact, 
                      dbo.cv_project_requests.external_impact, dbo.cv_project_requests.business_impact, dbo.cv_project_requests.strategic_opportunity, 
                      dbo.cv_project_requests.acquisition, dbo.cv_project_requests.technology_capabilities, dbo.cv_project_requests.c1, dbo.cv_project_requests.endlife, 
                      dbo.cv_project_requests.endlife_date, dbo.cv_project_requests.notify, dbo.cv_project_requests.created, dbo.cv_project_requests.updated, 
                      dbo.cv_project_requests.shelved, dbo.cv_project_requests.completed, dbo.cv_project_requests.deleted, dbo.cv_organizations.name AS OrgName, 
                      dbo.cv_projects.status AS projectstatus, CASE WHEN cv_request_items.applicationid IS NULL THEN '0' ELSE '1' END AS TPM_Req, 
                      dbo.cv_resource_requests.accepted
FROM         dbo.cv_requests LEFT OUTER JOIN
                      dbo.cv_users AS cv_req ON dbo.cv_requests.userid = cv_req.userid INNER JOIN
                      dbo.cv_resource_requests LEFT OUTER JOIN
                      dbo.cv_resource_requests_workflow FULL OUTER JOIN
                      dbo.cv_users ON dbo.cv_resource_requests_workflow.userid = dbo.cv_users.userid AND dbo.cv_resource_requests_workflow.userid = 0 ON 
                      dbo.cv_resource_requests.id = dbo.cv_resource_requests_workflow.parent LEFT OUTER JOIN
                      dbo.cv_request_items ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid ON 
                      dbo.cv_resource_requests.requestid = dbo.cv_requests.requestid AND dbo.cv_resource_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_project_request_comments ON dbo.cv_requests.requestid = dbo.cv_project_request_comments.requestid AND 
                      dbo.cv_project_request_comments.deleted = 0 INNER JOIN
                      dbo.cv_project_requests ON dbo.cv_requests.requestid = dbo.cv_project_requests.requestid AND dbo.cv_project_requests.deleted = 0 INNER JOIN
                      dbo.cv_project_request_status ON dbo.cv_requests.requestid = dbo.cv_project_request_status.requestid AND 
                      dbo.cv_project_request_status.deleted = 0 AND dbo.cv_project_request_status.step = 4 INNER JOIN
                      dbo.cv_projects INNER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid LEFT OUTER JOIN
                      dbo.cv_users AS cv_ws ON dbo.cv_projects.working = cv_ws.userid LEFT OUTER JOIN
                      dbo.cv_users AS cv_es ON dbo.cv_projects.executive = cv_es.userid ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND 
                      dbo.cv_projects.deleted = 0 AND dbo.cv_projects.status > 0 AND dbo.cv_projects.status < 3
WHERE     (dbo.cv_requests.deleted = 0) AND (dbo.cv_projects.deleted = 0) AND (dbo.cv_resource_requests.deleted = 0) AND 
                      (dbo.cv_resource_requests.status > - 1) AND (dbo.cv_resource_requests.status < 3) AND (dbo.cv_request_items.applicationid IS NULL) AND 
                      (dbo.cv_projects.status > 0) AND (dbo.cv_projects.status < 3) AND (dbo.cv_users.fname + ' ' + dbo.cv_users.lname IS NULL) OR
                      (dbo.cv_requests.deleted = 0) AND (dbo.cv_projects.deleted = 0) AND (dbo.cv_resource_requests.deleted = 0) AND 
                      (dbo.cv_resource_requests.status > - 1) AND (dbo.cv_resource_requests.status < 3) AND (dbo.cv_request_items.applicationid = 71) AND 
                      (dbo.cv_projects.status > 0) AND (dbo.cv_projects.status < 3) AND (dbo.cv_users.fname + ' ' + dbo.cv_users.lname IS NULL)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 25
               Left = 267
               Bottom = 209
               Right = 418
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_req"
            Begin Extent = 
               Top = 426
               Left = 227
               Bottom = 534
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 122
               Left = 441
               Bottom = 230
               Right = 609
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 240
               Left = 38
               Bottom = 348
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 318
               Left = 246
               Bottom = 426
               Right = 397
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_project_request_comments"
            Begin Extent = 
               Top = 129
               Left = 56
               Bottom = 237
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "cv_project_requests"
            Begin Extent = 
               Top = 0
               Left = 493
               Bottom = 108
               ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClearView_ProjectRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Right = 689
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_ws"
            Begin Extent = 
               Top = 342
               Left = 435
               Bottom = 450
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_es"
            Begin Extent = 
               Top = 348
               Left = 38
               Bottom = 456
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_project_request_status"
            Begin Extent = 
               Top = 210
               Left = 245
               Bottom = 318
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 234
               Left = 438
               Bottom = 342
               Right = 589
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 2970
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClearView_ProjectRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClearView_ProjectRequests'
GO
/****** Object:  View [dbo].[vw_ClearView_Requests]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ClearView_Requests]
AS
SELECT     TOP (100) PERCENT dbo.cv_projects.number AS [Project Number], dbo.cv_projects.name AS [Project Name], dbo.cv_requests.description, 
                      dbo.cv_projects.bd AS project_type, dbo.cv_services.name AS Service, dbo.cv_resource_requests.serviceid, 
                      dbo.cv_request_items.name AS Department, dbo.cv_applications.name AS Application, 
                      cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, dbo.cv_requests.modified AS date_submitted, dbo.cv_requests.start_date, 
                      dbo.cv_requests.end_date, dbo.cv_users.fname + ' ' + dbo.cv_users.lname AS technician, dbo.cv_resource_requests_hours.used, 
                      dbo.cv_resource_requests.allocated, dbo.cv_resource_requests.devices, dbo.cv_projects.status AS [Project Status], 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_organizations.name AS Portfolio, dbo.cv_resource_requests.modified AS last_updated, 
                      dbo.cv_resource_requests.requestid
FROM         dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests INNER JOIN
                      dbo.cv_projects ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND 
                      dbo.cv_resource_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_resource_requests_workflow LEFT OUTER JOIN
                      dbo.cv_resource_requests_hours ON dbo.cv_resource_requests_workflow.id = dbo.cv_resource_requests_hours.parent AND 
                      dbo.cv_resource_requests_hours.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users ON dbo.cv_resource_requests_workflow.userid = dbo.cv_users.userid AND dbo.cv_users.enabled = 1 AND dbo.cv_users.deleted = 0 ON 
                      dbo.cv_resource_requests.id = dbo.cv_resource_requests_workflow.parent LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_resource_requests.serviceid = dbo.cv_services.serviceid AND dbo.cv_services.enabled = 1 AND 
                      dbo.cv_services.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_request_items INNER JOIN
                      dbo.cv_applications ON dbo.cv_request_items.applicationid = dbo.cv_applications.applicationid AND dbo.cv_applications.enabled = 1 AND 
                      dbo.cv_applications.deleted = 0 ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid AND dbo.cv_request_items.enabled = 1 AND 
                      dbo.cv_request_items.deleted = 0 INNER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid
WHERE     (dbo.cv_resource_requests.deleted = 0)
ORDER BY 'Project Number', Application, Department, dbo.cv_resource_requests_workflow.userid

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[14] 4[20] 2[49] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 775
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClearView_Requests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_applications"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 6
               Left = 641
               Bottom = 114
               Right = 792
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests_hours"
            Begin Extent = 
               Top = 222
               Left = 249
               Bottom = 330
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2670
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 2220
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClearView_Requests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClearView_Requests'
GO
/****** Object:  View [dbo].[vw_ClearView_vs_AssetCenterVariance]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[vw_ClearView_vs_AssetCenterVariance]
AS
SELECT DISTINCT 
                      svr.id AS ServerID, sa.assetid AS AssetID, f.requestid AS RequestID, ac.serial AS ac_serial, ac.DateCommish AS ac_commissiondate, 
                      ac.DateBuild AS ac_builddate, ac.DeviceName AS ac_name, cva.serial AS cv_serial, 
                      sn.prefix1 + sn.prefix2 + sn.sitecode + sn.name1 + sn.name2 AS cv_name, sn.created AS cv_commissiondate, di.DesignImplementor, 
                      CAST(CASE WHEN ac.DateCommish IS NULL THEN '1' ELSE '0' END AS int) AS IsVariance, ac.Model AS ac_Model, cvmp.name AS cv_Model
FROM         dbo.cv_forecast_answers AS fa INNER JOIN
                      dbo.cv_forecast AS f ON fa.forecastid = f.id AND f.deleted = 0 INNER JOIN
                      dbo.cv_requests AS r ON f.requestid = r.requestid AND r.deleted = 0 INNER JOIN
                      dbo.cv_resource_requests AS rr ON r.requestid = rr.requestid AND rr.deleted = 0 INNER JOIN
                      dbo.cv_servers AS svr ON fa.id = svr.answerid AND svr.deleted = 0 INNER JOIN
                      dbo.cv_servernames AS sn ON svr.nameid = sn.id AND sn.deleted = 0 INNER JOIN
                      dbo.cv_servers_assets AS sa ON svr.id = sa.serverid AND sa.deleted = 0 INNER JOIN
                      ClearViewAsset.dbo.cva_assets AS cva ON sa.assetid = cva.id INNER JOIN
                      dbo.cv_models_property AS cvmp ON cva.modelid = cvmp.id INNER JOIN
                      dbo.cv_models AS cvm ON cvmp.modelid = cvm.id AND cvm.typeid = 16 LEFT OUTER JOIN
                          (SELECT     UPPER(RTRIM(LTRIM(nccSerialNo))) AS serial, [Commission Date] AS DateCommish, [Build Date] AS DateBuild, 
                                                   [Device Name] AS DeviceName, model
                            FROM          dbo.vw_AssetCenter_ServersInCommission_Details AS vac) AS ac ON UPPER(RTRIM(LTRIM(cva.serial))) = ac.serial INNER JOIN
                          (SELECT     rr.requestid, RTRIM(cv_users.fname) + SPACE(1) + RTRIM(cv_users.lname) AS DesignImplementor
                            FROM          dbo.cv_resource_requests AS rr 
								        LEFT OUTER JOIN cv_resource_requests_workflow 
										INNER JOIN 	cv_users   ON
										cv_resource_requests_workflow.userid = cv_users.userid 
										AND cv_users.enabled = 1 
										AND cv_users.deleted = 0  
										ON  rr.id=cv_resource_requests_workflow.parent
                            WHERE      (rr.itemid = 32)) AS di ON f.requestid = di.requestid
WHERE     (fa.deleted = 0) AND (rr.itemid = 32)
UNION ALL
SELECT DISTINCT 
                      svr.id AS ServerID, sa.assetid AS AssetID, f.requestid AS RequestID, ac.serial AS ac_serial, ac.DateCommish AS ac_commissiondate, 
                      ac.DateBuild AS ac_builddate, ac.DeviceName AS ac_name, cva.serial AS cv_serial, 
                      sn.prefix1 + sn.prefix2 + sn.sitecode + sn.name1 + sn.name2 AS cv_name, sn.created AS cv_commissiondate, di.DesignImplementor, 
                      CAST(CASE WHEN ac.DateCommish IS NULL THEN '1' ELSE '0' END AS int) AS IsVariance, ac.Model AS ac_Model, cvmp.name AS cv_Model
FROM         dbo.cv_forecast_answers AS fa INNER JOIN
                      dbo.cv_forecast AS f ON fa.forecastid = f.id AND f.deleted = 0 INNER JOIN
                      dbo.cv_requests AS r ON f.requestid = r.requestid AND r.deleted = 0 INNER JOIN
                      dbo.cv_resource_requests AS rr ON r.requestid = rr.requestid AND rr.deleted = 0 INNER JOIN
                      dbo.cv_servers AS svr ON fa.id = svr.answerid AND svr.deleted = 0 INNER JOIN
                      dbo.cv_servernames AS sn ON svr.nameid = sn.id AND sn.deleted = 0 INNER JOIN
                      dbo.cv_servers_assets AS sa ON svr.id = sa.serverid AND sa.deleted = 0 INNER JOIN
                      ClearViewAsset.dbo.cva_assets AS cva ON sa.assetid = cva.id INNER JOIN
                      dbo.cv_models_property AS cvmp ON cva.modelid = cvmp.id INNER JOIN
                      dbo.cv_models AS cvm ON cvmp.modelid = cvm.id AND cvm.typeid = 15 LEFT OUTER JOIN
                          (SELECT     UPPER(RTRIM(LTRIM(nccSerialNo))) AS serial, [Commission Date] AS DateCommish, [Build Date] AS DateBuild, 
                                                   [Device Name] AS DeviceName, Model
                            FROM          dbo.vw_AssetCenter_ServersInCommission_Details AS vac) AS ac ON UPPER(RTRIM(LTRIM(cva.serial))) = ac.serial INNER JOIN
                          (SELECT     rr.requestid, RTRIM(cv_users.fname) + SPACE(1) + RTRIM(cv_users.lname) AS DesignImplementor
                            FROM          dbo.cv_resource_requests AS rr 
										LEFT OUTER JOIN cv_resource_requests_workflow 
										INNER JOIN 	cv_users   ON
										cv_resource_requests_workflow.userid = cv_users.userid 
										AND cv_users.enabled = 1 
										AND cv_users.deleted = 0  
										ON  rr.id=cv_resource_requests_workflow.parent
                            WHERE      (rr.itemid = 39)) AS di ON f.requestid = di.requestid
WHERE     (fa.deleted = 0) AND (rr.itemid = 39)

GO
/****** Object:  View [dbo].[vw_OnDemandBuildDuration]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_OnDemandBuildDuration]
AS
SELECT     cv_servers.id, cv_projects.name, cv_projects.number, 
cv_projects.bd as ProjectType,
CVProjectLead.fname + ' ' + CVProjectLead.lname AS ProjectManager,
(select sum(cost) from  cv_forecast_acquisitions as cvForecastAcquisitions where cvForecastAcquisitions.modelid=cv_models.id and cvForecastAcquisitions.enabled=1 and cvForecastAcquisitions.deleted=0) as AcquisitionsCost,
cv_users.fname + ' ' + cv_users.lname AS requestor, cv_models_property.name AS model, 
                      'VMware' AS type, 
                      cv_servernames.prefix1 + cv_servernames.prefix2 + cv_servernames.sitecode + cv_servernames.name1 + cv_servernames.name2 AS servername, 
                      tbl1.modified AS starting, tbl2.modified AS ending,
					  cv_forecast_answers.AppName as ApplicationName,
					  cv_forecast_answers.AppCode as AppCode,
					  cv_forecast_answers.environmentid as EnvironmentID,
					  cv_environment.name As EnvironmentName,
					  cv_forecast_answers.classid as ClassID,
					  cv_classs.name As ClassName,
					(select top 1 
					cast(isnull(cvIPAddresses.add1,'')as varchar)+'.'+
					cast(isnull(cvIPAddresses.add2,'')as varchar)+'.'+
					cast(isnull(cvIPAddresses.add3,'') as varchar)+'.'+
					cast(isnull(cvIPAddresses.add4,'')as varchar) as ServerIPAddress
					FROM clearview.dbo.cv_servers_ips cvServerIPs
					INNER JOIN  ClearViewIP.dbo.cv_ip_addresses cvIPAddresses
					ON cvServerIPs.ipaddressid=cvIPAddresses.id 
					AND cvServerIPs.deleted=0 And cvServerIPs.auto_assign =1 and cvIPAddresses.deleted=0
					AND cvServerIPs.ServerId=cv_servers.id) as ServerIPAddress,
					'' as iLo
					
FROM         cv_servers INNER JOIN
                      cv_forecast_answers LEFT OUTER JOIN
                      cv_requests INNER JOIN
                      cv_projects ON cv_requests.projectid = cv_projects.projectid ON cv_forecast_answers.requestid = cv_requests.requestid 
					  LEFT OUTER JOIN
                      cv_users ON cv_forecast_answers.userid = cv_users.userid ON cv_servers.answerid = cv_forecast_answers.id AND 
                      cv_forecast_answers.deleted = 0 INNER JOIN
                      cv_models_property INNER JOIN
                      cv_models ON cv_models_property.modelid = cv_models.id AND cv_models.enabled = 1 AND cv_models.deleted = 0 AND cv_models.typeid = 58 ON 
                      cv_servers.modelid = cv_models_property.id AND cv_models_property.enabled = 1 AND cv_models_property.deleted = 0 LEFT OUTER JOIN
                      cv_servernames ON cv_servers.nameid = cv_servernames.id AND cv_servernames.deleted = 0 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_server
                            WHERE      cv_ondemand_steps_done_server.serverid = cv_servers.id
                            ORDER BY modified ASC) AS tbl1 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_server
                            WHERE      cv_ondemand_steps_done_server.serverid = cv_servers.id
                            ORDER BY modified DESC) AS tbl2
					LEFT OUTER JOIN cv_environment
						ON cv_forecast_answers.environmentid = cv_environment.id
						And cv_environment.deleted = 0
					LEFT OUTER JOIN cv_classs 
						ON cv_forecast_answers.classid = cv_classs.id
						And cv_classs.enabled = 1 And cv_classs.deleted = 0
					LEFT OUTER JOIN
                      dbo.cv_users AS CVProjectLead ON cv_projects.lead = CVProjectLead.userid 

WHERE     cv_servers.deleted = 0 AND cv_servers.step = 999 AND tbl1.modified IS NOT NULL
AND cv_servers.pnc=0
UNION ALL
SELECT     cv_servers.id, cv_projects.name, cv_projects.number, 
cv_projects.bd as ProjectType,
CVProjectLead.fname + ' ' + CVProjectLead.lname AS ProjectManager,
(select sum(cost) from  cv_forecast_acquisitions as cvForecastAcquisitions where cvForecastAcquisitions.modelid=cv_models.id and cvForecastAcquisitions.enabled=1 and cvForecastAcquisitions.deleted=0) as AcquisitionsCost,
 cv_users.fname + ' ' + cv_users.lname AS requestor, cv_models_property.name AS model, 
                      'Physical' AS type, 
                      cv_servernames.prefix1 + cv_servernames.prefix2 + cv_servernames.sitecode + cv_servernames.name1 + cv_servernames.name2 AS servername, 
                      tbl1.modified AS starting, tbl2.modified AS ending,
					  cv_forecast_answers.AppName as ApplicationName,
					  cv_forecast_answers.AppCode as AppCode,
					  cv_forecast_answers.environmentid as EnvironmentID,
					  cv_environment.name As EnvironmentName,
					  cv_forecast_answers.classid as ClassID,
					cv_classs.name As ClassName,
					(select top 1 
					cast(isnull(cvIPAddresses.add1,'')as varchar)+'.'+
					cast(isnull(cvIPAddresses.add2,'')as varchar)+'.'+
					cast(isnull(cvIPAddresses.add3,'') as varchar)+'.'+
					cast(isnull(cvIPAddresses.add4,'')as varchar) as ServerIPAddress
					FROM clearview.dbo.cv_servers_ips cvServerIPs
					INNER JOIN  ClearViewIP.dbo.cv_ip_addresses cvIPAddresses
					ON cvServerIPs.ipaddressid=cvIPAddresses.id 
					AND cvServerIPs.deleted=0 And cvServerIPs.auto_assign =1 and cvIPAddresses.deleted=0
					AND cvServerIPs.ServerId=cv_servers.id) as ServerIPAddress,
					(Select top 1 a.ilo from 
					(Select ilo from clearviewasset.dbo.cva_server
					WHERE assetid=(Select top 1 assetid from cv_servers_assets 
					where serverid=cv_Servers.id and latest=1 and deleted=0)
					UNION ALL
					Select ilo from clearviewasset.dbo.cva_blades
					WHERE assetid=(Select top 1 assetid from cv_servers_assets 
					where serverid=cv_Servers.id and latest=1 and deleted=0)) as a ) as iLo
					
FROM         cv_servers INNER JOIN
                      cv_forecast_answers LEFT OUTER JOIN
                      cv_requests INNER JOIN
                      cv_projects ON cv_requests.projectid = cv_projects.projectid ON cv_forecast_answers.requestid = cv_requests.requestid LEFT OUTER JOIN
                      cv_users ON cv_forecast_answers.userid = cv_users.userid ON cv_servers.answerid = cv_forecast_answers.id AND 
                      cv_forecast_answers.deleted = 0 INNER JOIN
                      cv_models_property INNER JOIN
                      cv_models ON cv_models_property.modelid = cv_models.id AND cv_models.enabled = 1 AND cv_models.deleted = 0 AND cv_models.typeid = 16 ON 
                      cv_servers.modelid = cv_models_property.id AND cv_models_property.enabled = 1 AND cv_models_property.deleted = 0 LEFT OUTER JOIN
                      cv_servernames ON cv_servers.nameid = cv_servernames.id AND cv_servernames.deleted = 0 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_server
                            WHERE      cv_ondemand_steps_done_server.serverid = cv_servers.id
                            ORDER BY modified ASC) AS tbl1 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_server
                            WHERE      cv_ondemand_steps_done_server.serverid = cv_servers.id
                            ORDER BY modified DESC) AS tbl2
							LEFT OUTER JOIN cv_environment
								ON cv_forecast_answers.environmentid = cv_environment.id
								And cv_environment.deleted = 0
							LEFT OUTER JOIN cv_classs 
								ON cv_forecast_answers.classid = cv_classs.id
								And cv_classs.enabled = 1 And cv_classs.deleted = 0
							LEFT OUTER JOIN
							  dbo.cv_users AS CVProjectLead ON cv_projects.lead = CVProjectLead.userid 
WHERE     cv_servers.deleted = 0 AND cv_servers.step = 999 AND tbl1.modified IS NOT NULL
AND cv_servers.pnc=0
UNION ALL
SELECT     cv_workstation_virtual.id, cv_projects.name, cv_projects.number,  
cv_projects.bd as ProjectType,
CVProjectLead.fname + ' ' + CVProjectLead.lname AS ProjectManager,
0 as AcquisitionsCost,
cv_users.fname + ' ' + cv_users.lname AS requestor, 'Virtual Workstation' AS model, 
                      'Workstation' AS type, 
                      cv_workstation_names.environment + cv_workstation_names.code + cv_workstation_names.identifier + cv_workstation_names.prefix1 + cv_workstation_names.prefix2
                       + cv_workstation_names.prefix3 + cv_workstation_names.prefix4 + cv_workstation_names.prefix5 + cv_workstation_names.prefix6 AS name, 
                      tbl1.modified AS starting, tbl2.modified AS ending,
 					  cv_forecast_answers.AppName as ApplicationName,
					  cv_forecast_answers.AppCode as AppCode,
					  cv_forecast_answers.environmentid as EnvironmentID,
					  cv_environment.name As EnvironmentName,
					  cv_forecast_answers.classid as ClassID,
				      cv_classs.name As ClassName,
					 '' as ServerIPAddress,
					 '' as iLo
FROM         cv_workstation_virtual INNER JOIN
                      cv_forecast_answers LEFT OUTER JOIN
                      cv_requests INNER JOIN
                      cv_projects ON cv_requests.projectid = cv_projects.projectid ON cv_forecast_answers.requestid = cv_requests.requestid LEFT OUTER JOIN
                      cv_users ON cv_forecast_answers.userid = cv_users.userid ON cv_workstation_virtual.answerid = cv_forecast_answers.id AND 
                      cv_forecast_answers.deleted = 0 LEFT OUTER JOIN
                      cv_workstation_names ON cv_workstation_virtual.nameid = cv_workstation_names.id AND cv_workstation_names.deleted = 0 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_workstation
                            WHERE      cv_ondemand_steps_done_workstation.workstationid = cv_workstation_virtual.id
                            ORDER BY modified ASC) AS tbl1 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_workstation
                            WHERE      cv_ondemand_steps_done_workstation.workstationid = cv_workstation_virtual.id
                            ORDER BY modified DESC) AS tbl2

							LEFT OUTER JOIN cv_environment
								ON cv_forecast_answers.environmentid = cv_environment.id
								And cv_environment.deleted = 0
							LEFT OUTER JOIN cv_classs 
								ON cv_forecast_answers.classid = cv_classs.id
								And cv_classs.enabled = 1 And cv_classs.deleted = 0
							LEFT OUTER JOIN
		                      dbo.cv_users AS CVProjectLead ON cv_projects.lead = CVProjectLead.userid 
WHERE     cv_workstation_virtual.deleted = 0 AND tbl1.modified IS NOT NULL

/* PNC DATA for VMWARE and Physical Servers*/
UNION ALL
SELECT     cv_servers.id, cv_projects.name, cv_projects.number, 
cv_projects.bd as ProjectType,
CVProjectLead.fname + ' ' + CVProjectLead.lname AS ProjectManager,
(select sum(cost) from  cv_forecast_acquisitions as cvForecastAcquisitions where cvForecastAcquisitions.modelid=cv_models.id and cvForecastAcquisitions.enabled=1 and cvForecastAcquisitions.deleted=0) as AcquisitionsCost,
 cv_users.fname + ' ' + cv_users.lname AS requestor, cv_models_property.name AS model, 
                      'VMware' AS type, 
                      cv_servernames.os + cv_servernames.location + cv_servernames.mnemonic + cv_servernames.environment + cv_servernames.name1 + cv_servernames.name2 + cv_servernames.func + cv_servernames.specific AS ServerName,
                      tbl1.modified AS starting, tbl2.modified AS ending,
					  cv_forecast_answers.AppName as ApplicationName,
					  /* PNC mnemonics Code */
					  cv_mnemonics.factory_code as AppCode,
					  cv_forecast_answers.environmentid as EnvironmentID,
					  cv_environment.name As EnvironmentName,
					  cv_forecast_answers.classid as ClassID,
					  cv_classs.name As ClassName,
					(select top 1 
					cast(isnull(cvIPAddresses.add1,'')as varchar)+'.'+
					cast(isnull(cvIPAddresses.add2,'')as varchar)+'.'+
					cast(isnull(cvIPAddresses.add3,'') as varchar)+'.'+
					cast(isnull(cvIPAddresses.add4,'')as varchar) as ServerIPAddress
					FROM clearview.dbo.cv_servers_ips cvServerIPs
					INNER JOIN  ClearViewIP.dbo.cv_ip_addresses cvIPAddresses
					ON cvServerIPs.ipaddressid=cvIPAddresses.id 
					AND cvServerIPs.deleted=0 And cvServerIPs.auto_assign =1 and cvIPAddresses.deleted=0
					AND cvServerIPs.ServerId=cv_servers.id) as ServerIPAddress,
					'' as iLo
FROM         cv_servers INNER JOIN
                      cv_forecast_answers LEFT OUTER JOIN
                      cv_requests INNER JOIN
                      cv_projects ON cv_requests.projectid = cv_projects.projectid ON cv_forecast_answers.requestid = cv_requests.requestid LEFT OUTER JOIN
                      cv_users ON cv_forecast_answers.userid = cv_users.userid ON cv_servers.answerid = cv_forecast_answers.id AND 
                      cv_forecast_answers.deleted = 0 INNER JOIN
                      cv_models_property INNER JOIN
                      cv_models ON cv_models_property.modelid = cv_models.id AND cv_models.enabled = 1 AND cv_models.deleted = 0 AND cv_models.typeid = 58 ON 
                      cv_servers.modelid = cv_models_property.id AND cv_models_property.enabled = 1 AND cv_models_property.deleted = 0 LEFT OUTER JOIN
                      cv_servernames_factory cv_servernames ON cv_servers.nameid = cv_servernames.id AND cv_servernames.deleted = 0 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_server
                            WHERE      cv_ondemand_steps_done_server.serverid = cv_servers.id
                            ORDER BY modified ASC) AS tbl1 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_server
                            WHERE      cv_ondemand_steps_done_server.serverid = cv_servers.id
                            ORDER BY modified DESC) AS tbl2
					LEFT OUTER JOIN cv_environment
						ON cv_forecast_answers.environmentid = cv_environment.id
						And cv_environment.deleted = 0
					LEFT OUTER JOIN cv_classs 
						ON cv_forecast_answers.classid = cv_classs.id
						And cv_classs.enabled = 1 And cv_classs.deleted = 0
					LEFT OUTER JOIN cv_mnemonics 
						ON cv_forecast_answers.mnemonicid = cv_mnemonics.id
						And cv_mnemonics.deleted = 0
					LEFT OUTER JOIN
                      dbo.cv_users AS CVProjectLead ON cv_projects.lead = CVProjectLead.userid 
WHERE     cv_servers.deleted = 0 AND cv_servers.step = 999 AND tbl1.modified IS NOT NULL
AND cv_servers.pnc=1
UNION ALL
SELECT     cv_servers.id, cv_projects.name, cv_projects.number, 
cv_projects.bd as ProjectType,
CVProjectLead.fname + ' ' + CVProjectLead.lname AS ProjectManager,
(select sum(cost) from  cv_forecast_acquisitions as cvForecastAcquisitions where cvForecastAcquisitions.modelid=cv_models.id and cvForecastAcquisitions.enabled=1 and cvForecastAcquisitions.deleted=0) as AcquisitionsCost,
 cv_users.fname + ' ' + cv_users.lname AS requestor, cv_models_property.name AS model, 
                      'Physical' AS type, 
                       cv_servernames.os + cv_servernames.location + cv_servernames.mnemonic + cv_servernames.environment + cv_servernames.name1 + cv_servernames.name2 + cv_servernames.func + cv_servernames.specific AS ServerName,
                      tbl1.modified AS starting, tbl2.modified AS ending,
					  cv_forecast_answers.AppName as ApplicationName,
					  /* PNC mnemonics Code */
					  cv_mnemonics.factory_code as AppCode,
					  cv_forecast_answers.environmentid as EnvironmentID,
					  cv_environment.name As EnvironmentName,
					  cv_forecast_answers.classid as ClassID,
					  cv_classs.name As ClassName,
					(select top 1 
					cast(isnull(cvIPAddresses.add1,'')as varchar)+'.'+
					cast(isnull(cvIPAddresses.add2,'')as varchar)+'.'+
					cast(isnull(cvIPAddresses.add3,'') as varchar)+'.'+
					cast(isnull(cvIPAddresses.add4,'')as varchar) as ServerIPAddress
					FROM clearview.dbo.cv_servers_ips cvServerIPs
					INNER JOIN  ClearViewIP.dbo.cv_ip_addresses cvIPAddresses
					ON cvServerIPs.ipaddressid=cvIPAddresses.id 
					AND cvServerIPs.deleted=0 And cvServerIPs.auto_assign =1 and cvIPAddresses.deleted=0
					AND cvServerIPs.ServerId=cv_servers.id) as ServerIPAddress,
					(Select top 1 a.ilo from 
					(Select ilo from clearviewasset.dbo.cva_server
					WHERE assetid=(Select top 1 assetid from cv_servers_assets 
					where serverid=cv_Servers.id and latest=1 and deleted=0)
					UNION ALL
					Select ilo from clearviewasset.dbo.cva_blades
					WHERE assetid=(Select top 1 assetid from cv_servers_assets 
					where serverid=cv_Servers.id and latest=1 and deleted=0)) as a ) as iLo
FROM         cv_servers INNER JOIN
                      cv_forecast_answers LEFT OUTER JOIN
                      cv_requests INNER JOIN
                      cv_projects ON cv_requests.projectid = cv_projects.projectid ON cv_forecast_answers.requestid = cv_requests.requestid LEFT OUTER JOIN
                      cv_users ON cv_forecast_answers.userid = cv_users.userid ON cv_servers.answerid = cv_forecast_answers.id AND 
                      cv_forecast_answers.deleted = 0 INNER JOIN
                      cv_models_property INNER JOIN
                      cv_models ON cv_models_property.modelid = cv_models.id AND cv_models.enabled = 1 AND cv_models.deleted = 0 AND cv_models.typeid = 16 ON 
                      cv_servers.modelid = cv_models_property.id AND cv_models_property.enabled = 1 AND cv_models_property.deleted = 0 LEFT OUTER JOIN
                      cv_servernames_factory cv_servernames ON cv_servers.nameid = cv_servernames.id AND cv_servernames.deleted = 0 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_server
                            WHERE      cv_ondemand_steps_done_server.serverid = cv_servers.id
                            ORDER BY modified ASC) AS tbl1 OUTER APPLY
                          (SELECT     TOP 1 *
                            FROM          cv_ondemand_steps_done_server
                            WHERE      cv_ondemand_steps_done_server.serverid = cv_servers.id
                            ORDER BY modified DESC) AS tbl2
							LEFT OUTER JOIN cv_environment
								ON cv_forecast_answers.environmentid = cv_environment.id
								And cv_environment.deleted = 0
							LEFT OUTER JOIN cv_classs 
								ON cv_forecast_answers.classid = cv_classs.id
								And cv_classs.enabled = 1 And cv_classs.deleted = 0
							LEFT OUTER JOIN cv_mnemonics 
								ON cv_forecast_answers.mnemonicid = cv_mnemonics.id
								And cv_mnemonics.deleted = 0
							LEFT OUTER JOIN
								dbo.cv_users AS CVProjectLead ON cv_projects.lead = CVProjectLead.userid 
WHERE     cv_servers.deleted = 0 AND cv_servers.step = 999 AND tbl1.modified IS NOT NULL
AND cv_servers.pnc=1

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[10] 4[17] 2[62] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1245
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_OnDemandBuildDuration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_OnDemandBuildDuration'
GO
/****** Object:  View [dbo].[vw_Portfolio_Infomation]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Portfolio_Infomation]
AS
SELECT     App, Portfolio, BIO, SIO
FROM         RMData.dbo.Copy_AGID

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Copy_AGID (RMData.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Portfolio_Infomation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Portfolio_Infomation'
GO
/****** Object:  View [dbo].[vw_Projects]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_Projects] AS
SELECT
 	p.projectid As ProjectID,
 	p.name ProjectName,
 	p.bd As BaseDiscretion,
 	p.[number] As ProjectNumber,
 	o.name AS OrgName,
 	s.name AS Segment,
 	RTrim(u.fname) + ' ' + RTrim(u.lname) AS UserName,
 	dbo.fn_ProjectStatus(p.status) As Status
 FROM
 	cv_projects p
 		LEFT JOIN cv_organizations o
 			ON o.organizationid = p.organization
 		LEFT JOIN cv_segments s
 			ON s.id = p.segmentid
 		LEFT JOIN cv_users u
 			ON u.userid = p.userid


GO
/****** Object:  View [dbo].[vw_Servers]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_Servers]
AS
SELECT     dbo.cv_servers.nameid, dbo.cv_forecast_answers.executed AS CREATED, dbo.cv_forecast_answers.completed
FROM         dbo.cv_servers INNER JOIN
                      dbo.cv_forecast_answers ON dbo.cv_servers.answerid = dbo.cv_forecast_answers.id AND dbo.cv_forecast_answers.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_servernames ON dbo.cv_servers.nameid = dbo.cv_servernames.id AND dbo.cv_servernames.deleted = 0
WHERE     (dbo.cv_forecast_answers.completed IS NOT NULL) AND (dbo.cv_servers.deleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_servers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_forecast_answers"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 114
               Right = 401
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_servernames"
            Begin Extent = 
               Top = 6
               Left = 439
               Bottom = 114
               Right = 590
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2880
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Servers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Servers'
GO
/****** Object:  View [dbo].[vw_ServersCompleted]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_ServersCompleted] AS
SELECT
 	svr.id As ServerID,
	svr.answerid As AnswerID,
	svr.created As DateCreated,
	fr.variance As Variance,
	fr.name As ReasonText,
	fq.question As QuestionText,
	pf.platformid As PlatformID,
	pf.name As Platform,
	prj.projectid As ProjectID,
	prj.name As ProjectName,
	prj.[number] As ProjectNumber,
	RTrim(u.fname) + ' ' +  +RTrim(u.lname) As Requestor,
	fq.id As QuestionID,
	fr.id As ResponseID,
	r.requestid As RequestID,
	svr.NameID,
	svr.ModelID,
	cls.name As Class,
	env.name As Environment
FROM
	cv_servers svr
		INNER JOIN cv_forecast_answers fa
			ON svr.answerid = fa.id
			And fa.deleted = 0
		INNER JOIN cv_forecast_answers_platform fap
			ON svr.answerid = fap.answerid
			And fap.deleted = 0
		INNER JOIN cv_forecast_responses fr
			ON fap.responseid = fr.id
			And fr.variance = 1
			And fr.enabled = 1
			And fr.deleted = 0
		INNER JOIN cv_forecast_questions fq
			ON fap.questionid = fq.id
			And fq.enabled = 1
			And fq.deleted = 0
		INNER JOIN cv_platforms pf
			ON fa.platformid = pf.platformid
		INNER JOIN cv_requests r
			ON fa.requestid = r.requestid
			And r.deleted = 0
		INNER JOIN cv_projects prj
			ON r.projectid = prj.projectid
			And prj.deleted = 0
		LEFT JOIN cv_users u
			ON prj.userid = u.userid
			And u.enabled = 1
			And u.deleted = 0
		LEFT JOIN cv_classs cls
			ON fa.classid = cls.id
			And cls.enabled = 1
			And cls.deleted = 0
		LEFT JOIN cv_environment env
			ON fa.environmentid = env.id
			And env.enabled = 1
			And env.deleted = 0
WHERE
	svr.deleted = 0
	
UNION ALL

SELECT
 	svr.id As ServerID,
	svr.answerid As AnswerID,
	svr.created As DateCreated,
	fr.variance As Variance,
	fr.name As ReasonText,
	fq.question As QuestionText,
	pf.platformid As PlatformID,
	pf.name As Platform,
	prj.projectid As ProjectID,
	prj.name As ProjectName,
	prj.[number] As ProjectNumber,
	RTrim(u.fname) + ' ' +  +RTrim(u.lname) As Requestor,
	fq.id As QuestionID,
	fr.id As ResponseID,
	r.requestid As RequestID,
	svr.nameid As NameID,
	svr.modelid As ModelID,
	cls.name As Class,
	env.name As Environment
FROM
	cv_servers svr
		INNER JOIN cv_forecast_answers fa
			ON svr.answerid = fa.id
			And fa.deleted = 0
		INNER JOIN cv_forecast_answers_platform fap
			ON svr.answerid = fap.answerid
			And fap.deleted = 0
		INNER JOIN cv_forecast_responses fr
			ON fap.responseid = fr.id
			And fr.variance = 0
			And fr.enabled = 1
			And fr.deleted = 0
		INNER JOIN cv_forecast_questions fq
			ON fap.questionid = fq.id
			And fq.enabled = 1
			And fq.deleted = 0
		INNER JOIN cv_platforms pf
			ON fa.platformid = pf.platformid
		INNER JOIN cv_requests r
			ON fa.requestid = r.requestid
			And r.deleted = 0
		INNER JOIN cv_projects prj
			ON r.projectid = prj.projectid
			And prj.deleted = 0
				LEFT JOIN cv_users u
			ON prj.userid = u.userid
			And u.enabled = 1
			And u.deleted = 0
		LEFT JOIN cv_classs cls
			ON fa.classid = cls.id
			And cls.enabled = 1
			And cls.deleted = 0
		LEFT JOIN cv_environment env
			ON fa.environmentid = env.id
			And env.enabled = 1
			And env.deleted = 0
WHERE
	svr.deleted = 0
	And svr.id NOT IN 
		(
			SELECT
				svr.id As ServerID
			FROM
				cv_servers svr
					INNER JOIN cv_forecast_answers fa
						ON svr.answerid = fa.id
						And fa.deleted = 0
					INNER JOIN cv_forecast_answers_platform fap
						ON svr.answerid = fap.answerid
						And fap.deleted = 0
					INNER JOIN cv_forecast_responses fr
						ON fap.responseid = fr.id
						And fr.variance = 1
						And fr.enabled = 1
						And fr.deleted = 0
					INNER JOIN cv_forecast_questions fq
						ON fap.questionid = fq.id
						And fq.enabled = 1
						And fq.deleted = 0
					INNER JOIN cv_platforms pf
						ON fa.platformid = pf.platformid
					INNER JOIN cv_requests r
						ON fa.requestid = r.requestid
						And r.deleted = 0
					INNER JOIN cv_projects prj
						ON r.projectid = prj.projectid
						And prj.deleted = 0
					LEFT JOIN cv_users u
						ON prj.userid = u.userid
						And u.enabled = 1
						And u.deleted = 0
					LEFT JOIN cv_classs cls
						ON fa.classid = cls.id
						And cls.enabled = 1
						And cls.deleted = 0
					LEFT JOIN cv_environment env
						ON fa.environmentid = env.id
						And env.enabled = 1
						And env.deleted = 0
			WHERE
				svr.deleted = 0
		)


GO
/****** Object:  View [dbo].[vw_ServersInCommission]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ServersInCommission]
AS
SELECT     env.name AS Environment, cls.name AS Class, SPACE(50) AS IntendedClass, 
                      sn.prefix1 + sn.prefix2 + sn.sitecode + sn.name1 + sn.name2 AS DeviceName, cva.serial AS SerialNumber, SPACE(50) AS OperatingSystem, SPACE(50) 
                      AS NCCServerFunction, SPACE(50) AS ServicePack, SPACE(50) AS ProcCnt, SPACE(50) AS ProcSpeedMHz, svr.created AS BuildDate, 
                      sn.created AS CommissionDate, SPACE(50) AS RemoveDate, SPACE(50) AS IPAddress, dom.name AS DomainName, cvmp.name AS Model, 
                      ls.name AS State, lc.name AS City, la.name AS Address1, SPACE(50) AS HRSiteCode, SPACE(50) AS NCCRoom, SPACE(50) AS NCCRack, SPACE(50) 
                      AS RackMountPosition, SPACE(50) AS TypeModel, SPACE(50) AS LifeCycleState, SPACE(50) AS TotalDASD_MB, SPACE(50) AS NCCHWRefreshFlag, 
                      prj.number AS ProjectNumber, prj.name AS ProjectName, SPACE(50) AS NCCTestLoanerFlag, pf.name AS ComputerType, SPACE(50) AS ComponentOf, 
                      cva.asset AS AssetTag, SPACE(50) AS DTHardScan, SPACE(50) AS NCCLogicalCPUCount, SPACE(50) AS NCCCoresPerPhysicalCount, SPACE(50) 
                      AS NCCHyperThreadCapable, SPACE(50) AS NCCHyperThreadEnabled, SPACE(50) AS NCCMaxDownTime, SPACE(50) AS NCCANAAttachedFlag, 
                      SPACE(50) AS NCCLoadBalanced, svr.id AS ServerID, svr.answerid, sa.assetid, org.name AS organization
FROM         dbo.cv_servers AS svr INNER JOIN
                      dbo.cv_servernames AS sn ON svr.nameid = sn.id AND sn.deleted = 0 INNER JOIN
                      dbo.cv_forecast_answers AS fa ON svr.answerid = fa.id AND fa.deleted = 0 INNER JOIN
                      dbo.cv_classs AS cls ON fa.classid = cls.id AND cls.enabled = 1 AND cls.deleted = 0 INNER JOIN
                      dbo.cv_environment AS env ON fa.environmentid = env.id AND env.enabled = 1 AND env.deleted = 0 INNER JOIN
                      dbo.cv_servers_assets AS sa ON svr.id = sa.serverid AND sa.deleted = 0 INNER JOIN
                      ClearViewAsset.dbo.cva_assets AS cva ON sa.assetid = cva.id AND cva.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_servers_ips AS ip ON svr.id = ip.serverid AND ip.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_domains AS dom ON svr.domainid = dom.id AND dom.enabled = 1 AND dom.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_models_property AS cvmp ON cva.modelid = cvmp.id AND cvmp.enabled = 1 AND cvmp.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_location_address AS la ON fa.addressid = la.id AND la.enabled = 1 AND la.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_location_city AS lc ON la.cityid = lc.id AND lc.enabled = 1 AND lc.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_location_state AS ls ON lc.stateid = ls.id AND ls.enabled = 1 AND ls.deleted = 0 INNER JOIN
                      dbo.cv_requests AS r ON fa.requestid = r.requestid AND r.deleted = 0 INNER JOIN
                      dbo.cv_projects AS prj INNER JOIN
                      dbo.cv_organizations AS org ON prj.organization = org.organizationid AND org.deleted = 0 ON r.projectid = prj.projectid AND 
                      prj.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_platforms AS pf ON fa.platformid = pf.platformid AND pf.enabled = 1 AND pf.deleted = 0

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "svr"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sn"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 114
               Right = 387
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "fa"
            Begin Extent = 
               Top = 6
               Left = 425
               Bottom = 114
               Right = 590
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cls"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "env"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sa"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cva"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ServersInCommission'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    End
         Begin Table = "ip"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dom"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cvmp"
            Begin Extent = 
               Top = 330
               Left = 261
               Bottom = 438
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "la"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "lc"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ls"
            Begin Extent = 
               Top = 438
               Left = 227
               Bottom = 546
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "r"
            Begin Extent = 
               Top = 438
               Left = 416
               Bottom = 546
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prj"
            Begin Extent = 
               Top = 546
               Left = 38
               Bottom = 654
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "org"
            Begin Extent = 
               Top = 546
               Left = 227
               Bottom = 654
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pf"
            Begin Extent = 
               Top = 654
               Left = 38
               Bottom = 762
               Right = 244
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ServersInCommission'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ServersInCommission'
GO
/****** Object:  View [dbo].[vw_ServerSpec]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ServerSpec]
AS
SELECT     svr.id AS ServerID, sn.prefix1 + sn.prefix2 + sn.sitecode + sn.name1 + sn.name2 AS ServerName, m.name AS ModelName, cvasvr.ilo, 
                      d.name AS DomainName, e.name AS EnvrionmentName, fa.appcode, os.name AS OSName, la.name AS Address, lc.name AS City, ls.name AS State, 
                      prj.projectid AS ProjetID, svr.answerid, svr.modelid, svr.csmconfigid AS ConfigID, svr.domainid, svr.osid, sa.assetid, sa.classid, sa.environmentid, 
                      cvasvr.vlan, fa.appname, fa.dr_criticality, fa.appcontact, svr.local_storage, m.make
FROM         dbo.cv_servers AS svr INNER JOIN
                      dbo.cv_servernames AS sn ON svr.nameid = sn.id AND sn.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_models AS m ON svr.modelid = m.id AND m.enabled = 1 AND m.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_servers_assets AS sa ON svr.id = sa.serverid AND sa.deleted = 0 LEFT OUTER JOIN
                      ClearViewAsset.dbo.cva_server AS cvasvr ON sa.assetid = cvasvr.assetid AND cvasvr.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_domains AS d ON svr.domainid = d.id AND d.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_environment AS e ON sa.environmentid = e.id AND e.enabled = 1 AND e.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_forecast_answers AS fa ON svr.answerid = fa.id AND fa.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_operating_systems AS os ON svr.osid = os.id AND os.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_requests AS r ON fa.requestid = r.requestid AND r.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_projects AS prj ON r.projectid = prj.projectid AND prj.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_location_address AS la ON fa.addressid = la.id AND la.enabled = 1 AND la.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_location_city AS lc ON la.cityid = lc.id AND lc.enabled = 1 AND lc.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_location_state AS ls ON lc.stateid = ls.id AND ls.enabled = 1 AND ls.deleted = 0
WHERE     (svr.deleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[27] 2[8] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "svr"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "sn"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 114
               Right = 387
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "m"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "sa"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "cvasvr"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 412
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ServerSpec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     End
         Begin Table = "fa"
            Begin Extent = 
               Top = 330
               Left = 227
               Bottom = 438
               Right = 392
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "os"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "r"
            Begin Extent = 
               Top = 438
               Left = 236
               Bottom = 546
               Right = 387
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prj"
            Begin Extent = 
               Top = 546
               Left = 38
               Bottom = 654
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "la"
            Begin Extent = 
               Top = 546
               Left = 227
               Bottom = 654
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "lc"
            Begin Extent = 
               Top = 654
               Left = 38
               Bottom = 762
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ls"
            Begin Extent = 
               Top = 654
               Left = 227
               Bottom = 762
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_models_property"
            Begin Extent = 
               Top = 390
               Left = 430
               Bottom = 498
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_storage_luns"
            Begin Extent = 
               Top = 213
               Left = 442
               Bottom = 321
               Right = 633
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "cv_storage_mount_points"
            Begin Extent = 
               Top = 27
               Left = 498
               Bottom = 135
               Right = 689
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_storage_drive_letters"
            Begin Extent = 
               Top = 252
               Left = 638
               Bottom = 360
               Right = 789
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 30
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ServerSpec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'00
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3090
         Alias = 900
         Table = 2805
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ServerSpec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ServerSpec'
GO
/****** Object:  View [dbo].[vw_ServerStatus]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_ServerStatus] AS
SELECT
 	cvmp.name As Model,
	( la.name + ' ' + lc.name + ' ' + ls.name ) As StockLocation,
	cva.serial As SerialNumber,
	cva.asset As AssetTag,
	Space(50) As NccRoom,
	Space(50) As NccRack,
	Cast(0 As money) as Value,
	pf.name As ComputerType,
	Space(50) As Assignment,
	Space(50) As TestLoaner,
	prj.projectid As ProjectID,
	prj.[number] As ProjectNumber,
	Cast(0 As money) As mPrice,
	Cast(0 As money) As mTax,
	svr.id As ServerID,
	svr.answerid As AnswerID,
	sa.assetid As AssetID
FROM
	ClearView.dbo.cv_servers svr
		INNER JOIN ClearView.dbo.cv_servernames sn
			ON svr.nameid = sn.id
			And sn.deleted = 0
		INNER JOIN ClearView.dbo.cv_forecast_answers fa
			ON svr.answerid = fa.id
			And fa.deleted = 0
		INNER JOIN ClearView.dbo.cv_servers_assets sa
			ON svr.id = sa.serverid
			And sa.deleted = 0
		INNER JOIN ClearViewAsset.dbo.cva_assets cva
			ON sa.assetid = cva.id
			And cva.deleted = 0
      		LEFT JOIN ClearView.dbo.cv_models_property cvmp
                  	ON cva.modelid = cvmp.id
			And cvmp.enabled = 1
			And cvmp.deleted = 0
		LEFT JOIN ClearView.dbo.cv_location_address la
			ON fa.addressid = la.id
			And la.enabled = 1
			And la.deleted = 0
		LEFT JOIN ClearView.dbo.cv_location_city lc
			ON la.cityid = lc.id
			And lc.enabled = 1
			And lc.deleted = 0
		LEFT JOIN ClearView.dbo.cv_location_state ls
			ON lc.stateid = ls.id
			And ls.enabled = 1
			And ls.deleted = 0
		INNER JOIN ClearView.dbo.cv_requests r
			ON fa.requestid = r.requestid
			And r.deleted = 0
		INNER JOIN ClearView.dbo.cv_projects prj
			ON r.projectid = prj.projectid
			And prj.deleted = 0
		LEFT JOIN ClearView.dbo.cv_platforms pf
			ON fa.platformid = pf.platformid
			And pf.enabled = 1
			And pf.deleted = 0


GO
/****** Object:  View [dbo].[vw_VirtualWorkstations]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_VirtualWorkstations]
AS
SELECT     dbo.cv_users.lname + ', ' + dbo.cv_users.fname AS administrator, cv_accounts.lname + ', ' + cv_accounts.fname AS account, 
                      dbo.cv_workstation_names.environment + dbo.cv_workstation_names.code + dbo.cv_workstation_names.identifier + dbo.cv_workstation_names.prefix1
                       + dbo.cv_workstation_names.prefix2 + dbo.cv_workstation_names.prefix3 + dbo.cv_workstation_names.prefix4 + dbo.cv_workstation_names.prefix5 + dbo.cv_workstation_names.prefix6
                       AS name, ClearViewAsset.dbo.cva_status.name AS host, dbo.cv_workstation_names.modified AS created, dbo.cv_forecast_answers.completed, 
                      dbo.cv_costs.name AS cost, dbo.cv_classs.name AS class, dbo.cv_environment.name AS environment,dbo.cv_workstation_virtual.ramid, cv_virtual_rams.value as ram, 
                      dbo.cv_workstation_virtual.domainid, dbo.cv_operating_systems.name AS os
FROM         dbo.cv_workstation_virtual INNER JOIN
                      dbo.cv_forecast_answers LEFT OUTER JOIN
                      dbo.cv_costs ON dbo.cv_forecast_answers.costid = dbo.cv_costs.costid AND dbo.cv_costs.enabled = 1 AND dbo.cv_costs.deleted = 0 INNER JOIN
                      dbo.cv_users ON dbo.cv_forecast_answers.appcontact = dbo.cv_users.userid AND dbo.cv_users.deleted = 0 INNER JOIN
                      dbo.cv_classs ON dbo.cv_forecast_answers.classid = dbo.cv_classs.id AND dbo.cv_classs.deleted = 0 INNER JOIN
                      dbo.cv_environment ON dbo.cv_forecast_answers.environmentid = dbo.cv_environment.id AND dbo.cv_environment.deleted = 0 ON 
                      dbo.cv_workstation_virtual.answerid = dbo.cv_forecast_answers.id AND dbo.cv_forecast_answers.deleted = 0 INNER JOIN
                      dbo.cv_workstation_names ON dbo.cv_workstation_virtual.nameid = dbo.cv_workstation_names.id AND 
                      dbo.cv_workstation_names.deleted = 0 INNER JOIN
                      ClearViewAsset.dbo.cva_status ON dbo.cv_workstation_virtual.virtualhostid = ClearViewAsset.dbo.cva_status.assetid AND 
                      ClearViewAsset.dbo.cva_status.deleted = 0 INNER JOIN
                      dbo.cv_operating_systems ON dbo.cv_workstation_virtual.osid = dbo.cv_operating_systems.id LEFT OUTER JOIN
                      dbo.cv_workstation_virtual_accounts INNER JOIN
                      dbo.cv_users AS cv_accounts ON dbo.cv_workstation_virtual_accounts.userid = cv_accounts.userid AND cv_accounts.deleted = 0 ON 
                      dbo.cv_workstation_virtual.assetid = dbo.cv_workstation_virtual_accounts.assetid AND dbo.cv_workstation_virtual_accounts.deleted = 0
					  LEFT OUTER JOIN dbo.cv_virtual_rams
					  ON	cv_workstation_virtual.ramid =cv_virtual_rams.id and cv_virtual_rams.deleted=0 and cv_virtual_rams.enabled=1
WHERE     (dbo.cv_workstation_virtual.deleted = 0) AND (dbo.cv_forecast_answers.completed IS NOT NULL)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[48] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_workstation_virtual"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_forecast_answers"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 114
               Right = 392
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_costs"
            Begin Extent = 
               Top = 222
               Left = 425
               Bottom = 330
               Right = 576
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 6
               Left = 430
               Bottom = 114
               Right = 581
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_classs"
            Begin Extent = 
               Top = 6
               Left = 619
               Bottom = 114
               Right = 770
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_environment"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_workstation_names"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_VirtualWorkstations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cva_status (ClearViewAsset.dbo)"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_operating_systems"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 387
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_workstation_virtual_accounts"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_accounts"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 2025
         Width = 2310
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_VirtualWorkstations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_VirtualWorkstations'
GO
/****** Object:  View [dbo].[vw_WM]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_WM]
AS
SELECT     CASE WHEN cv_projects.number IS NULL 
                      THEN '1' WHEN cv_projects.number LIKE 'EPS%' THEN '1' WHEN cv_projects.number LIKE 'CV%' THEN '1' ELSE '0' END AS TASK, 
                      CASE WHEN cv_projects.number IS NULL 
                      THEN cv_service_requests.name WHEN cv_projects.number LIKE 'EPS%' THEN cv_projects.name WHEN cv_projects.number LIKE 'CV%' THEN cv_projects.name
                       ELSE cv_projects.name END AS Name, CASE WHEN cv_projects.number IS NULL THEN 'CVT' + CAST(cv_requests.requestid AS VARCHAR(10)) 
                      ELSE cv_projects.number END AS [Project Number], 
                      CASE WHEN cv_projects.number LIKE 'CV%' THEN 'Base' WHEN cv_projects.number LIKE 'EPS%' THEN 'Base' WHEN cv_projects.number IS NULL 
                      THEN 'Base' ELSE cv_projects.bd END AS project_type, 
                      CASE WHEN cv_projects.number LIKE 'CV%' THEN 'Enterprise Production Services' WHEN cv_projects.number LIKE 'EPS%' THEN 'Enterprise Production Services'
                       WHEN cv_projects.number IS NULL THEN 'Enterprise Production Services' ELSE cv_organizations.name END AS Portfolio, dbo.cv_projects.projectid, 
                      dbo.cv_requests.requestid, dbo.cv_requests.description, dbo.cv_services.name AS Service, dbo.cv_request_items.name AS Department, 
					  dbo.cv_request_items.applicationid ,
                      dbo.cv_applications.name AS Application, cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, 
                      cv_users_lead.fname + ' ' + cv_users_lead.lname AS project_lead, cv_users_working.fname + ' ' + cv_users_working.lname AS working_sponsor, 
                      cv_users_executive.fname + ' ' + cv_users_executive.lname AS executive_sponsor, 
                      cv_users_technical.fname + ' ' + cv_users_technical.lname AS technical_lead, 
						dbo.cv_requests.modified AS date_submitted, 
                      dbo.cv_requests.start_date, dbo.cv_requests.end_date, 
					  cv_users_technician.fname + ' ' + cv_users_technician.lname AS technician, 
                      dbo.cv_resource_requests.allocated,
					  dbo.cv_resource_requests.Name as ServiceName,
					  dbo.cv_resource_requests.devices, dbo.cv_projects.status AS [Project Status], 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_resource_requests.modified AS last_updated, dbo.cv_resource_request_update.status AS technician_color, 
                      dbo.cv_WM_iis.reason, dbo.cv_WM_remediation.reason AS reason2, dbo.cv_resource_requests.assigned, dbo.cv_resource_requests.created
FROM         dbo.cv_resource_request_update LEFT OUTER JOIN
                      dbo.cv_resource_requests_workflow ON dbo.cv_resource_request_update.parent = dbo.cv_resource_requests_workflow.id AND 
                      dbo.cv_resource_request_update.deleted = 0 AND dbo.cv_resource_request_update.latest = 1 RIGHT OUTER JOIN
                      dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests LEFT OUTER JOIN
                      dbo.cv_projects INNER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid AND dbo.cv_organizations.enabled = 1 AND 
                      dbo.cv_organizations.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_lead ON dbo.cv_projects.lead = cv_users_lead.userid AND cv_users_lead.enabled = 1 AND 
                      cv_users_lead.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_working ON dbo.cv_projects.working = cv_users_working.userid AND cv_users_working.enabled = 1 AND 
                      cv_users_working.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_executive ON dbo.cv_projects.executive = cv_users_executive.userid AND cv_users_executive.enabled = 1 AND 
                      cv_users_executive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technical ON dbo.cv_projects.technical = cv_users_technical.userid AND cv_users_technical.enabled = 1 AND 
                      cv_users_technical.deleted = 0 ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND dbo.cv_requests.deleted = 0 ON 
                      dbo.cv_resource_requests_workflow.parent = dbo.cv_resource_requests.id LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid AND 
                      dbo.cv_service_requests.checkout = 1 AND dbo.cv_service_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_request_items INNER JOIN
                      dbo.cv_applications ON dbo.cv_request_items.applicationid = dbo.cv_applications.applicationid AND dbo.cv_applications.enabled = 1 AND 
                      dbo.cv_applications.deleted = 0 ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid AND dbo.cv_request_items.enabled = 1 AND 
                      dbo.cv_request_items.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_services.deleted = 0 AND dbo.cv_services.serviceid = dbo.cv_resource_requests.serviceid LEFT OUTER JOIN
                      dbo.cv_WM_iis ON dbo.cv_resource_requests.requestid = dbo.cv_WM_iis.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_iis.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_iis.number AND 
                      dbo.cv_WM_iis.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_project_coordinator ON dbo.cv_resource_requests.requestid = dbo.cv_WM_project_coordinator.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_project_coordinator.itemid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_project_coordinator.number AND dbo.cv_WM_project_coordinator.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_remediation ON dbo.cv_resource_requests.requestid = dbo.cv_WM_remediation.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_remediation.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_remediation.number AND 
                      dbo.cv_WM_remediation.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_server_retrieve ON dbo.cv_resource_requests.requestid = dbo.cv_WM_server_retrieve.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_server_retrieve.itemid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_server_retrieve.number AND dbo.cv_WM_server_retrieve.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_server_archive ON dbo.cv_resource_requests.requestid = dbo.cv_WM_server_archive.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_server_archive.itemid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_server_archive.number AND dbo.cv_WM_server_archive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_tpm ON dbo.cv_resource_requests.requestid = dbo.cv_WM_tpm.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_tpm.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_tpm.number AND 
                      dbo.cv_WM_tpm.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_workstation ON dbo.cv_resource_requests.requestid = dbo.cv_WM_workstation.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_workstation.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_workstation.number AND 
                      dbo.cv_WM_workstation.deleted = 0
					  LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technician ON dbo.cv_resource_requests_workflow.userid = cv_users_technician.userid AND cv_users_technician.enabled = 1 AND 
                      cv_users_technician.deleted = 0
					
WHERE     (dbo.cv_resource_requests.deleted = 0) AND (dbo.cv_resource_requests.accepted >= 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 17
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 6
               Left = 622
               Bottom = 114
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_lead"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_working"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_executive"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_technical"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_service_requests"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 222
               Left = 624
               Bottom = 330
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_applications"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 330
               Left = 259
               Bottom = 438
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_iis"
            Begin Extent = 
               Top = 330
               Left = 637
               Bottom = 438
               Right = 788
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_project_coordinator"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_remediation"
            Begin Extent = 
               Top = 438
               Left = 227
               Bottom = 546
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_server_retrieve"
            Begin Extent = 
               Top = 438
               Left = 416
               Bottom = 546
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_server_archive"
            Begin Extent = 
               Top = 438
               Left = 605
               Bottom = 546
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_tpm"
            Begin Extent = 
               Top = 546
               Left = 38
               Bottom = 654
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_workstation"
            Begin Extent = 
               Top = 546
               Left = 247
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'               Bottom = 654
               Right = 398
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_request_update"
            Begin Extent = 
               Top = 546
               Left = 436
               Bottom = 654
               Right = 587
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 30
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM'
GO
/****** Object:  View [dbo].[vw_WM_IDC]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_WM_IDC]
AS 
select 
 	[id] As Id,
 	[requestid] As RequestId,
 	[itemid] As ItemId,
 	[number] As Number,
 	[investigated] As Investigated,
 	[investigated_by] As InvestigatedBy,
 	[followup_date] As FollowupDate,
 	[date_engaged] As DateEngaged,
 	[phase_engaged] As PhaseEngaged,
 	[effort_size] As EffortSize,
 	[involvement] As Involvement,
 	[eit_testing] As EITTesting,
 	[project_class] As ProjectClass,
 	[enterprise_release] As EnterpriceRelease,
 	[idc_spoc] As IDCSpoc,
 	[comments] As Comments,
 	[slide_statement] As SlideStatement,
 	[slide_alternatives] As SlideAlternatives,
 	[slide_recommendations] As SlideRecommendations,
 	[slide_high_level] AS SlideHighLevel,
 	[slide_detailed] As SlideDetailed
 from cv_WM_IDC


GO
/****** Object:  View [dbo].[vw_WM_iis]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_WM_iis]
AS
SELECT     CASE WHEN cv_projects.number IS NULL 
                      THEN '1' WHEN cv_projects.number LIKE 'EPS%' THEN '1' WHEN cv_projects.number LIKE 'CV%' THEN '1' ELSE '0' END AS TASK, 
                      CASE WHEN cv_projects.number IS NULL 
                      THEN cv_service_requests.name WHEN cv_projects.number LIKE 'EPS%' THEN cv_projects.name WHEN cv_projects.number LIKE 'CV%' THEN cv_projects.name
                       ELSE cv_projects.name END AS Name, dbo.cv_projects.projectid, dbo.cv_projects.number AS [Project Number], dbo.cv_requests.requestid, 
                      dbo.cv_requests.description, dbo.cv_projects.bd AS project_type, dbo.cv_services.name AS Service, dbo.cv_request_items.name AS Department, 
                      dbo.cv_applications.name AS Application, cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, 
                      cv_users_lead.fname + ' ' + cv_users_lead.lname AS project_lead, cv_users_working.fname + ' ' + cv_users_working.lname AS working_sponsor, 
                      cv_users_executive.fname + ' ' + cv_users_executive.lname AS executive_sponsor, 
                      cv_users_technical.fname + ' ' + cv_users_technical.lname AS technical_lead, dbo.cv_requests.modified AS date_submitted, 
                      dbo.cv_requests.start_date, dbo.cv_requests.end_date, dbo.cv_users.fname + ' ' + dbo.cv_users.lname AS technician, 
                      dbo.cv_resource_requests_hours.used, dbo.cv_resource_requests.allocated, dbo.cv_resource_requests.devices, 
                      dbo.cv_projects.status AS [Project Status], 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_organizations.name AS Portfolio, dbo.cv_resource_requests.modified AS last_updated, 
                      dbo.cv_resource_request_update.status AS technician_color, dbo.cv_WM_iis.requestid AS Expr1, dbo.cv_WM_iis.itemid, dbo.cv_WM_iis.number, 
                      dbo.cv_WM_iis.reason, dbo.cv_WM_iis.statement, dbo.cv_WM_iis.expedite, dbo.cv_WM_iis.start_date AS Expr2, dbo.cv_WM_iis.end_date AS Expr3, 
                      dbo.cv_WM_iis.modified, dbo.cv_WM_iis.deleted
FROM         dbo.cv_WM_iis INNER JOIN
                      dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests LEFT OUTER JOIN
                      dbo.cv_projects INNER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid AND dbo.cv_organizations.enabled = 1 AND 
                      dbo.cv_organizations.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_lead ON dbo.cv_projects.lead = cv_users_lead.userid AND cv_users_lead.enabled = 1 AND 
                      cv_users_lead.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_working ON dbo.cv_projects.working = cv_users_working.userid AND cv_users_working.enabled = 1 AND 
                      cv_users_working.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_executive ON dbo.cv_projects.executive = cv_users_executive.userid AND cv_users_executive.enabled = 1 AND 
                      cv_users_executive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technical ON dbo.cv_projects.technical = cv_users_technical.userid AND cv_users_technical.enabled = 1 AND 
                      cv_users_technical.deleted = 0 ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND dbo.cv_resource_requests.deleted = 0 ON 
                      dbo.cv_WM_iis.requestid = dbo.cv_resource_requests.requestid AND dbo.cv_WM_iis.itemid = dbo.cv_resource_requests.itemid AND 
                      dbo.cv_WM_iis.number = dbo.cv_resource_requests.number AND dbo.cv_WM_iis.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users RIGHT OUTER JOIN
                      dbo.cv_resource_requests_workflow LEFT OUTER JOIN
                      dbo.cv_resource_requests_hours ON dbo.cv_resource_requests_workflow.id = dbo.cv_resource_requests_hours.parent AND 
                      dbo.cv_resource_requests_hours.deleted = 0 ON dbo.cv_users.userid = dbo.cv_resource_requests_workflow.userid AND 
                      dbo.cv_users.enabled = 1 AND dbo.cv_users.deleted = 0 ON 
                      dbo.cv_resource_requests.id = dbo.cv_resource_requests_workflow.parent LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid AND 
                      dbo.cv_service_requests.checkout = 1 AND dbo.cv_service_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_request_items INNER JOIN
                      dbo.cv_applications ON dbo.cv_request_items.applicationid = dbo.cv_applications.applicationid AND dbo.cv_applications.enabled = 1 AND 
                      dbo.cv_applications.deleted = 0 ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid AND dbo.cv_request_items.enabled = 1 AND 
                      dbo.cv_request_items.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_services.deleted = 0 AND dbo.cv_services.serviceid = dbo.cv_resource_requests.serviceid LEFT OUTER JOIN
                      dbo.cv_resource_request_update ON dbo.cv_resource_requests_workflow.id = dbo.cv_resource_request_update.parent AND 
                      dbo.cv_resource_request_update.deleted = 0 AND dbo.cv_resource_request_update.latest = 1
WHERE     (dbo.cv_resource_requests.deleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 6
               Left = 622
               Bottom = 114
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_lead"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_working"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_executive"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_iis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_technical"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_service_requests"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 222
               Left = 624
               Bottom = 330
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_applications"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 330
               Left = 259
               Bottom = 438
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests_hours"
            Begin Extent = 
               Top = 330
               Left = 448
               Bottom = 438
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_iis"
            Begin Extent = 
               Top = 330
               Left = 637
               Bottom = 438
               Right = 788
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_request_update"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_iis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_iis'
GO
/****** Object:  View [dbo].[vw_WM_project_coordinator]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_WM_project_coordinator]
AS
SELECT     dbo.cv_projects.number AS [Project Number], dbo.cv_projects.name AS 'Project Name', dbo.cv_requests.description, 
                      dbo.cv_projects.bd AS project_type, 'Project Coordinator' AS Department, 'Project Coordinator' AS Application, 
                      cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, cv_users_lead.fname + ' ' + cv_users_lead.lname AS project_lead, 
                      cv_users_working.fname + ' ' + cv_users_working.lname AS working_sponsor, 
                      cv_users_executive.fname + ' ' + cv_users_executive.lname AS executive_sponsor, 
                      cv_users_technical.fname + ' ' + cv_users_technical.lname AS technical_lead, dbo.cv_requests.modified AS date_submitted, 
                      dbo.cv_requests.start_date, dbo.cv_requests.end_date, dbo.cv_users.fname + ' ' + dbo.cv_users.lname AS technician, 
                      dbo.cv_resource_requests_hours.used, dbo.cv_resource_requests.allocated, dbo.cv_resource_requests.devices, 
                      dbo.cv_projects.status AS [Project Status], dbo.cv_requests.end_date AS 'Forecast_End_Date', 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_organizations.name AS Portfolio, dbo.cv_resource_requests.updated AS last_updated, 
                      dbo.cv_resource_request_update_tpm.datestamp, dbo.cv_resource_request_update_tpm.scope, dbo.cv_resource_request_update_tpm.timeline, 
                      dbo.cv_resource_request_update_tpm.budget, CASE WHEN cv_resource_request_update_tpm.scope = 1 OR
                      cv_resource_request_update_tpm.timeline = 1 OR
                      cv_resource_request_update_tpm.budget = 1 THEN 1 WHEN cv_resource_request_update_tpm.scope = 2 OR
                      cv_resource_request_update_tpm.timeline = 2 OR
                      cv_resource_request_update_tpm.budget = 2 THEN 2 ELSE 3 END AS 'color_order_ASC', 
                      dbo.cv_resource_request_update_tpm.scope + dbo.cv_resource_request_update_tpm.timeline + dbo.cv_resource_request_update_tpm.budget AS color_order2_ASC,
                       dbo.cv_resource_request_update_tpm.comments, dbo.cv_resource_requests.requestid, dbo.cv_resource_requests.id, 
                      dbo.cv_WM_project_coordinator.requestid AS Expr1, dbo.cv_WM_project_coordinator.itemid, dbo.cv_WM_project_coordinator.number, 
                      dbo.cv_WM_project_coordinator.project_start_date, dbo.cv_WM_project_coordinator.start_d, dbo.cv_WM_project_coordinator.end_d, 
                      dbo.cv_WM_project_coordinator.start_p, dbo.cv_WM_project_coordinator.end_p, dbo.cv_WM_project_coordinator.start_e, 
                      dbo.cv_WM_project_coordinator.end_e, dbo.cv_WM_project_coordinator.start_c, dbo.cv_WM_project_coordinator.end_c, 
                      dbo.cv_WM_project_coordinator.costs, dbo.cv_WM_project_coordinator.appsd, dbo.cv_WM_project_coordinator.apped, 
                      dbo.cv_WM_project_coordinator.appsp, dbo.cv_WM_project_coordinator.appep, dbo.cv_WM_project_coordinator.appse, 
                      dbo.cv_WM_project_coordinator.appee, dbo.cv_WM_project_coordinator.appsc, dbo.cv_WM_project_coordinator.appec, 
                      dbo.cv_WM_project_coordinator.appid, dbo.cv_WM_project_coordinator.appexd, dbo.cv_WM_project_coordinator.apphd, 
                      dbo.cv_WM_project_coordinator.actid, dbo.cv_WM_project_coordinator.acted, dbo.cv_WM_project_coordinator.acthd, 
                      dbo.cv_WM_project_coordinator.estid, dbo.cv_WM_project_coordinator.ested, dbo.cv_WM_project_coordinator.esthd, 
                      dbo.cv_WM_project_coordinator.appip, dbo.cv_WM_project_coordinator.appexp, dbo.cv_WM_project_coordinator.apphp, 
                      dbo.cv_WM_project_coordinator.actip, dbo.cv_WM_project_coordinator.actep, dbo.cv_WM_project_coordinator.acthp, 
                      dbo.cv_WM_project_coordinator.estip, dbo.cv_WM_project_coordinator.estep, dbo.cv_WM_project_coordinator.esthp, 
                      dbo.cv_WM_project_coordinator.appie, dbo.cv_WM_project_coordinator.appexe, dbo.cv_WM_project_coordinator.apphe, 
                      dbo.cv_WM_project_coordinator.actie, dbo.cv_WM_project_coordinator.actee, dbo.cv_WM_project_coordinator.acthe, 
                      dbo.cv_WM_project_coordinator.estie, dbo.cv_WM_project_coordinator.estee, dbo.cv_WM_project_coordinator.esthe, 
                      dbo.cv_WM_project_coordinator.appic, dbo.cv_WM_project_coordinator.appexc, dbo.cv_WM_project_coordinator.apphc, 
                      dbo.cv_WM_project_coordinator.actic, dbo.cv_WM_project_coordinator.actec, dbo.cv_WM_project_coordinator.acthc, 
                      dbo.cv_WM_project_coordinator.estic, dbo.cv_WM_project_coordinator.estec, dbo.cv_WM_project_coordinator.esthc, 
                      dbo.cv_WM_project_coordinator.d_done, dbo.cv_WM_project_coordinator.p_done, dbo.cv_WM_project_coordinator.e_done, 
                      dbo.cv_WM_project_coordinator.c_done, dbo.cv_WM_project_coordinator.d_hrs, dbo.cv_WM_project_coordinator.p_hrs, 
                      dbo.cv_WM_project_coordinator.e_hrs, dbo.cv_WM_project_coordinator.c_hrs, dbo.cv_WM_project_coordinator.better, 
                      dbo.cv_WM_project_coordinator.worse, dbo.cv_WM_project_coordinator.lessons, dbo.cv_WM_project_coordinator.userid, 
                      dbo.cv_WM_project_coordinator.modified, dbo.cv_WM_project_coordinator.deleted, dbo.cv_resource_request_update_tpm.thisweek, 
                      dbo.cv_resource_request_update_tpm.nextweek, cv_team_lead.fname + ' ' + cv_team_lead.lname AS teamlead, 
                      dbo.cv_projects.modified AS completed,
                          (SELECT     dbo.cv_project_request_priority.overall_priority
                            FROM          dbo.cv_project_request_priority INNER JOIN
                                                   dbo.cv_requests AS cv_req_prior ON dbo.cv_project_request_priority.requestid = cv_req_prior.requestid AND 
                                                   cv_req_prior.deleted = 0 AND cv_req_prior.projectid = dbo.cv_projects.projectid
                            WHERE      (dbo.cv_project_request_priority.deleted = 0)) AS 'overall_priority'
FROM         dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests INNER JOIN
                      dbo.cv_projects LEFT OUTER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid AND dbo.cv_organizations.enabled = 1 AND 
                      dbo.cv_organizations.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_lead ON dbo.cv_projects.lead = cv_users_lead.userid AND cv_users_lead.enabled = 1 AND 
                      cv_users_lead.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_working ON dbo.cv_projects.working = cv_users_working.userid AND cv_users_working.enabled = 1 AND 
                      cv_users_working.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_executive ON dbo.cv_projects.executive = cv_users_executive.userid AND cv_users_executive.enabled = 1 AND 
                      cv_users_executive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technical ON dbo.cv_projects.technical = cv_users_technical.userid AND cv_users_technical.enabled = 1 AND 
                      cv_users_technical.deleted = 0 ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 AND 
                      dbo.cv_projects.status > 0 AND dbo.cv_projects.status < 4 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND dbo.cv_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users LEFT OUTER JOIN
                      dbo.cv_users AS cv_team_lead ON dbo.cv_users.manager = cv_team_lead.userid AND cv_team_lead.enabled = 1 AND cv_team_lead.deleted = 0 ON 
                      dbo.cv_resource_requests.userid = dbo.cv_users.userid AND dbo.cv_users.enabled = 1 AND dbo.cv_users.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_project_requests ON dbo.cv_resource_requests.requestid = dbo.cv_project_requests.requestid AND 
                      dbo.cv_project_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid AND 
                      dbo.cv_service_requests.checkout = 1 AND dbo.cv_service_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_services.deleted = 0 AND dbo.cv_services.serviceid = dbo.cv_resource_requests.serviceid LEFT OUTER JOIN
                      dbo.cv_resource_requests_hours ON dbo.cv_resource_requests_hours.deleted = 0 AND 
                      dbo.cv_resource_requests_hours.parent = dbo.cv_resource_requests.id LEFT OUTER JOIN
                      dbo.cv_WM_project_coordinator ON dbo.cv_resource_requests.requestid = dbo.cv_WM_project_coordinator.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_project_coordinator.itemid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_project_coordinator.number AND dbo.cv_WM_project_coordinator.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_resource_request_update_tpm ON dbo.cv_resource_request_update_tpm.deleted = 0 AND dbo.cv_resource_request_update_tpm.latest = 1 AND
                       dbo.cv_resource_request_update_tpm.parent = dbo.cv_resource_requests.id
WHERE     (dbo.cv_resource_requests.deleted = 0) AND (dbo.cv_resource_requests.itemid = 0) AND (dbo.cv_resource_requests.accepted > - 1) AND 
                      (dbo.cv_project_requests.id IS NOT NULL) OR
                      (dbo.cv_resource_requests.deleted = 0) AND (dbo.cv_resource_requests.itemid = 0) AND (dbo.cv_resource_requests.accepted > - 1) AND 
                      (dbo.cv_service_requests.id IS NOT NULL)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 6
               Left = 622
               Bottom = 114
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_lead"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_working"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_executive"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_project_coordinator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_technical"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_service_requests"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 330
               Left = 259
               Bottom = 438
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests_hours"
            Begin Extent = 
               Top = 330
               Left = 448
               Bottom = 438
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_project_coordinator"
            Begin Extent = 
               Top = 330
               Left = 637
               Bottom = 438
               Right = 788
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_team_lead"
            Begin Extent = 
               Top = 222
               Left = 624
               Bottom = 330
               Right = 775
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_project_requests"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_request_update_tpm"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_project_coordinator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_project_coordinator'
GO
/****** Object:  View [dbo].[vw_WM_remediation]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_WM_remediation]
AS
SELECT     CASE WHEN cv_projects.number IS NULL 
                      THEN '1' WHEN cv_projects.number LIKE 'EPS%' THEN '1' WHEN cv_projects.number LIKE 'CV%' THEN '1' ELSE '0' END AS TASK, 
                      CASE WHEN cv_projects.number IS NULL 
                      THEN cv_service_requests.name WHEN cv_projects.number LIKE 'EPS%' THEN cv_projects.name WHEN cv_projects.number LIKE 'CV%' THEN cv_projects.name
                       ELSE cv_projects.name END AS Name, dbo.cv_projects.projectid, dbo.cv_projects.number AS [Project Number], dbo.cv_requests.requestid, 
                      dbo.cv_requests.description, dbo.cv_projects.bd AS project_type, dbo.cv_services.name AS Service, dbo.cv_request_items.name AS Department, 
                      dbo.cv_applications.name AS Application, cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, 
                      cv_users_lead.fname + ' ' + cv_users_lead.lname AS project_lead, cv_users_working.fname + ' ' + cv_users_working.lname AS working_sponsor, 
                      cv_users_executive.fname + ' ' + cv_users_executive.lname AS executive_sponsor, 
                      cv_users_technical.fname + ' ' + cv_users_technical.lname AS technical_lead, dbo.cv_requests.modified AS date_submitted, 
                      dbo.cv_requests.start_date, dbo.cv_requests.end_date, dbo.cv_users.fname + ' ' + dbo.cv_users.lname AS technician, 
                      dbo.cv_resource_requests_hours.used, dbo.cv_resource_requests.allocated, dbo.cv_resource_requests.devices, 
                      dbo.cv_projects.status AS [Project Status], 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_organizations.name AS Portfolio, dbo.cv_resource_requests.modified AS last_updated, 
                      dbo.cv_resource_request_update.status AS technician_color, dbo.cv_WM_remediation.requestid AS Expr1, dbo.cv_WM_remediation.itemid, 
                      dbo.cv_WM_remediation.number, dbo.cv_WM_remediation.reason, dbo.cv_WM_remediation.component, dbo.cv_WM_remediation.funding, 
                      dbo.cv_WM_remediation.priority, dbo.cv_WM_remediation.tpm, dbo.cv_WM_remediation.statement, dbo.cv_WM_remediation.devices AS Expr2, 
                      dbo.cv_WM_remediation.hours, dbo.cv_WM_remediation.start_date AS Expr3, dbo.cv_WM_remediation.end_date AS Expr4, 
                      dbo.cv_WM_remediation.modified, dbo.cv_WM_remediation.deleted, dbo.cv_resource_requests_workflow.id
FROM         dbo.cv_request_items INNER JOIN
                      dbo.cv_applications ON dbo.cv_request_items.applicationid = dbo.cv_applications.applicationid AND dbo.cv_applications.enabled = 1 AND 
                      dbo.cv_applications.deleted = 0 RIGHT OUTER JOIN
                      dbo.cv_WM_remediation INNER JOIN
                      dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests LEFT OUTER JOIN
                      dbo.cv_projects INNER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid AND dbo.cv_organizations.enabled = 1 AND 
                      dbo.cv_organizations.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_lead ON dbo.cv_projects.lead = cv_users_lead.userid AND cv_users_lead.enabled = 1 AND 
                      cv_users_lead.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_working ON dbo.cv_projects.working = cv_users_working.userid AND cv_users_working.enabled = 1 AND 
                      cv_users_working.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_executive ON dbo.cv_projects.executive = cv_users_executive.userid AND cv_users_executive.enabled = 1 AND 
                      cv_users_executive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technical ON dbo.cv_projects.technical = cv_users_technical.userid AND cv_users_technical.enabled = 1 AND 
                      cv_users_technical.deleted = 0 ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND dbo.cv_resource_requests.deleted = 0 ON 
                      dbo.cv_WM_remediation.requestid = dbo.cv_resource_requests.requestid AND 
                      dbo.cv_WM_remediation.itemid = dbo.cv_resource_requests.itemid AND dbo.cv_WM_remediation.number = dbo.cv_resource_requests.number AND 
                      dbo.cv_WM_remediation.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_resource_requests_workflow INNER JOIN
                      dbo.cv_resource_request_update ON dbo.cv_resource_requests_workflow.id = dbo.cv_resource_request_update.parent AND 
                      dbo.cv_resource_request_update.deleted = 0 AND dbo.cv_resource_request_update.latest = 1 ON 
                      dbo.cv_resource_requests.id = dbo.cv_resource_requests_workflow.parent LEFT OUTER JOIN
                      dbo.cv_resource_requests_hours ON dbo.cv_resource_requests_workflow.id = dbo.cv_resource_requests_hours.parent AND 
                      dbo.cv_resource_requests_hours.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users ON dbo.cv_resource_requests_workflow.userid = dbo.cv_users.userid AND dbo.cv_users.enabled = 1 AND 
                      dbo.cv_users.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid AND 
                      dbo.cv_service_requests.checkout = 1 AND dbo.cv_service_requests.deleted = 0 ON 
                      dbo.cv_request_items.itemid = dbo.cv_resource_requests.itemid AND dbo.cv_request_items.enabled = 1 AND 
                      dbo.cv_request_items.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_services.deleted = 0 AND dbo.cv_services.serviceid = dbo.cv_resource_requests.serviceid
WHERE     (dbo.cv_resource_requests.deleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 6
               Left = 622
               Bottom = 114
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_lead"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_working"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_executive"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_remediation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_technical"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_service_requests"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 222
               Left = 624
               Bottom = 330
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_applications"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 330
               Left = 259
               Bottom = 438
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests_hours"
            Begin Extent = 
               Top = 330
               Left = 448
               Bottom = 438
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_remediation"
            Begin Extent = 
               Top = 330
               Left = 637
               Bottom = 438
               Right = 788
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_request_update"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_remediation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_remediation'
GO
/****** Object:  View [dbo].[vw_WM_server_archive]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_WM_server_archive]
AS
SELECT     dbo.cv_requests.requestid, CASE WHEN cv_projects.number IS NULL 
                      THEN '1' WHEN cv_projects.number LIKE 'EPS%' THEN '1' WHEN cv_projects.number LIKE 'CV%' THEN '1' ELSE '0' END AS TASK, 
                      CASE WHEN cv_projects.number IS NULL 
                      THEN cv_service_requests.name WHEN cv_projects.number LIKE 'EPS%' THEN cv_projects.name WHEN cv_projects.number LIKE 'CV%' THEN cv_projects.name
                       ELSE cv_projects.name END AS Name, dbo.cv_projects.projectid, dbo.cv_projects.number AS [Project Number], dbo.cv_requests.requestid AS Expr1, 
                      dbo.cv_requests.description, dbo.cv_projects.bd AS project_type, dbo.cv_services.name AS Service, dbo.cv_request_items.name AS Department, 
                      dbo.cv_applications.name AS Application, cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, 
                      cv_users_lead.fname + ' ' + cv_users_lead.lname AS project_lead, cv_users_working.fname + ' ' + cv_users_working.lname AS working_sponsor, 
                      cv_users_executive.fname + ' ' + cv_users_executive.lname AS executive_sponsor, 
                      cv_users_technical.fname + ' ' + cv_users_technical.lname AS technical_lead, dbo.cv_requests.modified AS date_submitted, 
                      dbo.cv_requests.start_date, dbo.cv_requests.end_date, dbo.cv_users.fname + ' ' + dbo.cv_users.lname AS technician, 
                      dbo.cv_resource_requests_hours.used, dbo.cv_resource_requests.allocated, dbo.cv_resource_requests.devices, 
                      dbo.cv_projects.status AS [Project Status], 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_organizations.name AS Portfolio, dbo.cv_resource_requests.modified AS last_updated, 
                      dbo.cv_resource_request_update.status AS technician_color, dbo.cv_WM_server_archive.requestid AS Expr2, dbo.cv_WM_server_archive.itemid, 
                      dbo.cv_WM_server_archive.number, dbo.cv_WM_server_archive.servername, dbo.cv_WM_server_archive.modelid, 
                      dbo.cv_WM_server_archive.appcode, dbo.cv_WM_server_archive.classid, dbo.cv_WM_server_archive.end_date AS Expr3, 
                      dbo.cv_WM_server_archive.statement, dbo.cv_WM_server_archive.T1, dbo.cv_WM_server_archive.T2, dbo.cv_WM_server_archive.T3, 
                      dbo.cv_WM_server_archive.G1, dbo.cv_WM_server_archive.G2, dbo.cv_WM_server_archive.G3, dbo.cv_WM_server_archive.G4, 
                      dbo.cv_WM_server_archive.G5, dbo.cv_WM_server_archive.G6, dbo.cv_WM_server_archive.modified, dbo.cv_WM_server_archive.deleted
FROM         dbo.cv_WM_server_archive INNER JOIN
                      dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests LEFT OUTER JOIN
                      dbo.cv_projects INNER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid AND dbo.cv_organizations.enabled = 1 AND 
                      dbo.cv_organizations.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_lead ON dbo.cv_projects.lead = cv_users_lead.userid AND cv_users_lead.enabled = 1 AND 
                      cv_users_lead.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_working ON dbo.cv_projects.working = cv_users_working.userid AND cv_users_working.enabled = 1 AND 
                      cv_users_working.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_executive ON dbo.cv_projects.executive = cv_users_executive.userid AND cv_users_executive.enabled = 1 AND 
                      cv_users_executive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technical ON dbo.cv_projects.technical = cv_users_technical.userid AND cv_users_technical.enabled = 1 AND 
                      cv_users_technical.deleted = 0 ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND dbo.cv_resource_requests.deleted = 0 ON 
                      dbo.cv_WM_server_archive.requestid = dbo.cv_resource_requests.requestid AND 
                      dbo.cv_WM_server_archive.itemid = dbo.cv_resource_requests.itemid AND 
                      dbo.cv_WM_server_archive.number = dbo.cv_resource_requests.number AND dbo.cv_WM_server_archive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users RIGHT OUTER JOIN
                      dbo.cv_resource_requests_workflow LEFT OUTER JOIN
                      dbo.cv_resource_requests_hours ON dbo.cv_resource_requests_workflow.id = dbo.cv_resource_requests_hours.parent AND 
                      dbo.cv_resource_requests_hours.deleted = 0 ON dbo.cv_users.userid = dbo.cv_resource_requests_workflow.userid AND 
                      dbo.cv_users.enabled = 1 AND dbo.cv_users.deleted = 0 ON dbo.cv_resource_requests.id = dbo.cv_resource_requests_workflow.parent AND 
                      dbo.cv_resource_requests_workflow.joined = 0 LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid AND 
                      dbo.cv_service_requests.checkout = 1 AND dbo.cv_service_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_request_items INNER JOIN
                      dbo.cv_applications ON dbo.cv_request_items.applicationid = dbo.cv_applications.applicationid AND dbo.cv_applications.enabled = 1 AND 
                      dbo.cv_applications.deleted = 0 ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid AND dbo.cv_request_items.enabled = 1 AND 
                      dbo.cv_request_items.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_services.deleted = 0 AND dbo.cv_services.serviceid = dbo.cv_resource_requests.serviceid LEFT OUTER JOIN
                      dbo.cv_resource_request_update ON dbo.cv_resource_requests_workflow.id = dbo.cv_resource_request_update.parent AND 
                      dbo.cv_resource_request_update.deleted = 0 AND dbo.cv_resource_request_update.latest = 1
WHERE     (dbo.cv_resource_requests.deleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 6
               Left = 622
               Bottom = 114
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_lead"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_working"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_executive"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_server_archive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_technical"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_service_requests"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 222
               Left = 624
               Bottom = 330
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_applications"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 330
               Left = 259
               Bottom = 438
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests_hours"
            Begin Extent = 
               Top = 330
               Left = 448
               Bottom = 438
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_server_archive"
            Begin Extent = 
               Top = 330
               Left = 637
               Bottom = 438
               Right = 788
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_request_update"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_server_archive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_server_archive'
GO
/****** Object:  View [dbo].[vw_WM_server_retrieve]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_WM_server_retrieve]
AS
SELECT     CASE WHEN cv_projects.number IS NULL 
                      THEN '1' WHEN cv_projects.number LIKE 'EPS%' THEN '1' WHEN cv_projects.number LIKE 'CV%' THEN '1' ELSE '0' END AS TASK, 
                      CASE WHEN cv_projects.number IS NULL 
                      THEN cv_service_requests.name WHEN cv_projects.number LIKE 'EPS%' THEN cv_projects.name WHEN cv_projects.number LIKE 'CV%' THEN cv_projects.name
                       ELSE cv_projects.name END AS Name, dbo.cv_projects.projectid, dbo.cv_projects.number AS [Project Number], dbo.cv_requests.requestid, 
                      dbo.cv_requests.description, dbo.cv_projects.bd AS project_type, dbo.cv_services.name AS Service, dbo.cv_request_items.name AS Department, 
                      dbo.cv_applications.name AS Application, cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, 
                      cv_users_lead.fname + ' ' + cv_users_lead.lname AS project_lead, cv_users_working.fname + ' ' + cv_users_working.lname AS working_sponsor, 
                      cv_users_executive.fname + ' ' + cv_users_executive.lname AS executive_sponsor, 
                      cv_users_technical.fname + ' ' + cv_users_technical.lname AS technical_lead, dbo.cv_requests.modified AS date_submitted, 
                      dbo.cv_requests.start_date, dbo.cv_requests.end_date, dbo.cv_users.fname + ' ' + dbo.cv_users.lname AS technician, 
                      dbo.cv_resource_requests_hours.used, dbo.cv_resource_requests.allocated, dbo.cv_resource_requests.devices, 
                      dbo.cv_projects.status AS [Project Status], 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_organizations.name AS Portfolio, dbo.cv_resource_requests.modified AS last_updated, 
                      dbo.cv_resource_request_update.status AS technician_color, dbo.cv_WM_server_retrieve.requestid AS Expr1, dbo.cv_WM_server_retrieve.itemid, 
                      dbo.cv_WM_server_retrieve.number, dbo.cv_WM_server_retrieve.servername, dbo.cv_WM_server_retrieve.backto, 
                      dbo.cv_WM_server_retrieve.modelid, dbo.cv_WM_server_retrieve.appcode, dbo.cv_WM_server_retrieve.classid, 
                      dbo.cv_WM_server_retrieve.end_date AS Expr2, dbo.cv_WM_server_retrieve.statement, dbo.cv_WM_server_retrieve.G1, 
                      dbo.cv_WM_server_retrieve.G2, dbo.cv_WM_server_retrieve.G3, dbo.cv_WM_server_retrieve.G4, dbo.cv_WM_server_retrieve.G5, 
                      dbo.cv_WM_server_retrieve.hostname, dbo.cv_WM_server_retrieve.TV1, dbo.cv_WM_server_retrieve.TV2, dbo.cv_WM_server_retrieve.TP1, 
                      dbo.cv_WM_server_retrieve.TP2, dbo.cv_WM_server_retrieve.TP3, dbo.cv_WM_server_retrieve.TP4, dbo.cv_WM_server_retrieve.TP5, 
                      dbo.cv_WM_server_retrieve.TP6, dbo.cv_WM_server_retrieve.TP7, dbo.cv_WM_server_retrieve.TP8, dbo.cv_WM_server_retrieve.TP9, 
                      dbo.cv_WM_server_retrieve.TP10, dbo.cv_WM_server_retrieve.modified, dbo.cv_WM_server_retrieve.deleted, 
                      dbo.cv_resource_requests_workflow.joined, dbo.cv_resource_requests_workflow.id
FROM         dbo.cv_WM_server_retrieve INNER JOIN
                      dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests LEFT OUTER JOIN
                      dbo.cv_projects INNER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid AND dbo.cv_organizations.enabled = 1 AND 
                      dbo.cv_organizations.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_lead ON dbo.cv_projects.lead = cv_users_lead.userid AND cv_users_lead.enabled = 1 AND 
                      cv_users_lead.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_working ON dbo.cv_projects.working = cv_users_working.userid AND cv_users_working.enabled = 1 AND 
                      cv_users_working.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_executive ON dbo.cv_projects.executive = cv_users_executive.userid AND cv_users_executive.enabled = 1 AND 
                      cv_users_executive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technical ON dbo.cv_projects.technical = cv_users_technical.userid AND cv_users_technical.enabled = 1 AND 
                      cv_users_technical.deleted = 0 ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND dbo.cv_resource_requests.deleted = 0 ON 
                      dbo.cv_WM_server_retrieve.requestid = dbo.cv_resource_requests.requestid AND 
                      dbo.cv_WM_server_retrieve.itemid = dbo.cv_resource_requests.itemid AND 
                      dbo.cv_WM_server_retrieve.number = dbo.cv_resource_requests.number AND dbo.cv_WM_server_retrieve.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users RIGHT OUTER JOIN
                      dbo.cv_resource_requests_workflow LEFT OUTER JOIN
                      dbo.cv_resource_requests_hours ON dbo.cv_resource_requests_workflow.id = dbo.cv_resource_requests_hours.parent AND 
                      dbo.cv_resource_requests_hours.deleted = 0 ON dbo.cv_users.userid = dbo.cv_resource_requests_workflow.userid AND 
                      dbo.cv_users.enabled = 1 AND dbo.cv_users.deleted = 0 ON dbo.cv_resource_requests.id = dbo.cv_resource_requests_workflow.parent AND 
                      dbo.cv_resource_requests_workflow.joined = 0 LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid AND 
                      dbo.cv_service_requests.checkout = 1 AND dbo.cv_service_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_request_items INNER JOIN
                      dbo.cv_applications ON dbo.cv_request_items.applicationid = dbo.cv_applications.applicationid AND dbo.cv_applications.enabled = 1 AND 
                      dbo.cv_applications.deleted = 0 ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid AND dbo.cv_request_items.enabled = 1 AND 
                      dbo.cv_request_items.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_services.deleted = 0 AND dbo.cv_services.serviceid = dbo.cv_resource_requests.serviceid LEFT OUTER JOIN
                      dbo.cv_resource_request_update ON dbo.cv_resource_requests_workflow.id = dbo.cv_resource_request_update.parent AND 
                      dbo.cv_resource_request_update.deleted = 0 AND dbo.cv_resource_request_update.latest = 1
WHERE     (dbo.cv_resource_requests.deleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 6
               Left = 622
               Bottom = 114
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_lead"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_working"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_executive"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_server_retrieve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_technical"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_service_requests"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 222
               Left = 624
               Bottom = 330
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_applications"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 330
               Left = 259
               Bottom = 438
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests_hours"
            Begin Extent = 
               Top = 330
               Left = 448
               Bottom = 438
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_server_retrieve"
            Begin Extent = 
               Top = 330
               Left = 637
               Bottom = 438
               Right = 788
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_request_update"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 58
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_server_retrieve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N' 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_server_retrieve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_server_retrieve'
GO
/****** Object:  View [dbo].[vw_WM_tpm]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_WM_tpm]
AS
SELECT     dbo.cv_projects.number AS [Project Number], dbo.cv_projects.name AS [Project Name], dbo.cv_segments.name AS [Segment Name], 
                      dbo.cv_requests.description, dbo.cv_projects.bd AS project_type, dbo.cv_request_items.name AS Department, 
                      dbo.cv_applications.name AS Application, cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, 
                      cv_users_lead.fname + ' ' + cv_users_lead.lname AS project_lead, cv_users_working.fname + ' ' + cv_users_working.lname AS working_sponsor, 
                      cv_users_executive.fname + ' ' + cv_users_executive.lname AS executive_sponsor, 
                      cv_users_technical.fname + ' ' + cv_users_technical.lname AS technical_lead, cv_users_engineer.fname + ' ' + cv_users_engineer.lname AS engineer, 
                      dbo.cv_requests.created AS date_submitted, dbo.cv_requests.start_date, dbo.cv_requests.end_date, 
                      dbo.cv_users.lname + ', ' + dbo.cv_users.fname AS technician, dbo.cv_resource_requests_hours.used, dbo.cv_resource_requests.allocated, 
                      dbo.cv_resource_requests.devices, dbo.cv_projects.status AS [Project Status], dbo.cv_requests.end_date AS Forecast_End_Date, 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_organizations.name AS Portfolio, dbo.cv_resource_requests.modified AS last_updated, 
                      dbo.cv_resource_request_update_tpm.datestamp, dbo.cv_resource_request_update_tpm.scope, dbo.cv_resource_request_update_tpm.timeline, 
                      dbo.cv_resource_request_update_tpm.budget, CASE WHEN cv_resource_request_update_tpm.scope = 1 OR
                      cv_resource_request_update_tpm.timeline = 1 OR
                      cv_resource_request_update_tpm.budget = 1 THEN 1 WHEN cv_resource_request_update_tpm.scope = 2 OR
                      cv_resource_request_update_tpm.timeline = 2 OR
                      cv_resource_request_update_tpm.budget = 2 THEN 2 ELSE 3 END AS color_order_ASC, 
                      dbo.cv_resource_request_update_tpm.scope + dbo.cv_resource_request_update_tpm.timeline + dbo.cv_resource_request_update_tpm.budget AS color_order2_ASC,
                       dbo.cv_resource_request_update_tpm.comments, dbo.cv_resource_requests.requestid, dbo.cv_resource_requests.id, 
                      dbo.cv_WM_tpm.requestid AS Expr1, dbo.cv_WM_tpm.itemid, dbo.cv_WM_tpm.number, dbo.cv_WM_tpm.priority, dbo.cv_WM_tpm.statement, 
                      dbo.cv_WM_tpm.start_date AS Expr2, dbo.cv_WM_tpm.end_date AS Expr3, dbo.cv_WM_tpm.financials_exclude, dbo.cv_WM_tpm.start_d, 
                      dbo.cv_WM_tpm.end_d, dbo.cv_WM_tpm.start_p, dbo.cv_WM_tpm.end_p, dbo.cv_WM_tpm.start_e, dbo.cv_WM_tpm.end_e, dbo.cv_WM_tpm.start_c, 
                      dbo.cv_WM_tpm.end_c, dbo.cv_WM_tpm.costs, dbo.cv_WM_tpm.ppm, dbo.cv_WM_tpm.appsd, dbo.cv_WM_tpm.apped, dbo.cv_WM_tpm.appsp, 
                      dbo.cv_WM_tpm.appep, dbo.cv_WM_tpm.appse, dbo.cv_WM_tpm.appee, dbo.cv_WM_tpm.appsc, dbo.cv_WM_tpm.appec, dbo.cv_WM_tpm.appid, 
                      dbo.cv_WM_tpm.appexd, dbo.cv_WM_tpm.apphd, dbo.cv_WM_tpm.actid, dbo.cv_WM_tpm.acted, dbo.cv_WM_tpm.acthd, dbo.cv_WM_tpm.estid, 
                      dbo.cv_WM_tpm.ested, dbo.cv_WM_tpm.esthd, dbo.cv_WM_tpm.appip, dbo.cv_WM_tpm.appexp, dbo.cv_WM_tpm.apphp, dbo.cv_WM_tpm.actip, 
                      dbo.cv_WM_tpm.actep, dbo.cv_WM_tpm.acthp, dbo.cv_WM_tpm.estip, dbo.cv_WM_tpm.estep, dbo.cv_WM_tpm.esthp, dbo.cv_WM_tpm.appie, 
                      dbo.cv_WM_tpm.appexe, dbo.cv_WM_tpm.apphe, dbo.cv_WM_tpm.actie, dbo.cv_WM_tpm.actee, dbo.cv_WM_tpm.acthe, dbo.cv_WM_tpm.estie, 
                      dbo.cv_WM_tpm.estee, dbo.cv_WM_tpm.esthe, dbo.cv_WM_tpm.appic, dbo.cv_WM_tpm.appexc, dbo.cv_WM_tpm.apphc, dbo.cv_WM_tpm.actic, 
                      dbo.cv_WM_tpm.actec, dbo.cv_WM_tpm.acthc, dbo.cv_WM_tpm.estic, dbo.cv_WM_tpm.estec, dbo.cv_WM_tpm.esthc, dbo.cv_WM_tpm.sharepoint, 
                      dbo.cv_WM_tpm.better, dbo.cv_WM_tpm.worse, dbo.cv_WM_tpm.lessons, dbo.cv_WM_tpm.modified, dbo.cv_WM_tpm.deleted, 
                      dbo.cv_resource_request_update_tpm.thisweek, dbo.cv_resource_request_update_tpm.nextweek, 
                      cv_team_lead.fname + ' ' + cv_team_lead.lname AS teamlead, dbo.cv_projects.modified AS completed,
                          (SELECT     dbo.cv_project_request_priority.overall_priority
                            FROM          dbo.cv_project_request_priority INNER JOIN
                                                   dbo.cv_requests AS cv_req_prior ON dbo.cv_project_request_priority.requestid = cv_req_prior.requestid AND 
                                                   cv_req_prior.deleted = 0 AND cv_req_prior.projectid = dbo.cv_projects.projectid
                            WHERE      (dbo.cv_project_request_priority.deleted = 0)) AS overall_priority, dbo.cv_resource_request_milestones.approved AS mile_date, 
                      dbo.cv_resource_request_milestones.milestone AS mile_title, dbo.cv_resource_request_milestones.description AS mile_description, 
                      dbo.cv_project_requests.estimated_savings, 
                      CASE WHEN cv_project_requests.estimated_savings = 'Less than $50,000' THEN '50000' WHEN cv_project_requests.estimated_savings = '$50,000 - $150,000'
                       THEN '100000' WHEN cv_project_requests.estimated_savings = 'Greater than $150,000' THEN '150000' END AS estimated_savings_plot, 
                      dbo.cv_project_requests.realized_savings, dbo.cv_resource_requests_workflow.id AS relatedid
FROM         dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests INNER JOIN
                      dbo.cv_projects LEFT OUTER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid AND dbo.cv_organizations.enabled = 1 AND 
                      dbo.cv_organizations.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_segments ON dbo.cv_projects.segmentid = dbo.cv_segments.id AND dbo.cv_segments.enabled = 1 AND 
                      dbo.cv_segments.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_lead ON dbo.cv_projects.lead = cv_users_lead.userid AND cv_users_lead.enabled = 1 AND 
                      cv_users_lead.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_working ON dbo.cv_projects.working = cv_users_working.userid AND cv_users_working.enabled = 1 AND 
                      cv_users_working.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_executive ON dbo.cv_projects.executive = cv_users_executive.userid AND cv_users_executive.enabled = 1 AND 
                      cv_users_executive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technical ON dbo.cv_projects.technical = cv_users_technical.userid AND cv_users_technical.enabled = 1 AND 
                      cv_users_technical.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_engineer ON dbo.cv_projects.engineer = cv_users_engineer.userid AND cv_users_engineer.enabled = 1 AND 
                      cv_users_engineer.deleted = 0 ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 AND 
                      dbo.cv_projects.status <> 0 AND dbo.cv_projects.status <> - 1 AND dbo.cv_projects.status <> 10 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND dbo.cv_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_resource_requests_workflow LEFT OUTER JOIN
                      dbo.cv_users LEFT OUTER JOIN
                      dbo.cv_users AS cv_team_lead ON dbo.cv_users.manager = cv_team_lead.userid AND cv_team_lead.enabled = 1 AND cv_team_lead.deleted = 0 ON 
                      dbo.cv_resource_requests_workflow.userid = dbo.cv_users.userid AND dbo.cv_users.enabled = 1 AND dbo.cv_users.deleted = 0 ON 
                      dbo.cv_resource_requests.id = dbo.cv_resource_requests_workflow.parent AND dbo.cv_resource_requests_workflow.joined = 0 LEFT OUTER JOIN
                      dbo.cv_project_requests ON dbo.cv_resource_requests.requestid = dbo.cv_project_requests.requestid AND 
                      dbo.cv_project_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid AND 
                      dbo.cv_service_requests.checkout = 1 AND dbo.cv_service_requests.deleted = 0 INNER JOIN
                      dbo.cv_request_items INNER JOIN
                      dbo.cv_applications ON dbo.cv_request_items.applicationid = dbo.cv_applications.applicationid AND dbo.cv_applications.enabled = 1 AND 
                      dbo.cv_applications.deleted = 0 AND dbo.cv_applications.tpm = 1 ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid AND 
                      dbo.cv_request_items.enabled = 1 AND dbo.cv_request_items.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_services.deleted = 0 AND dbo.cv_services.serviceid = dbo.cv_resource_requests.serviceid LEFT OUTER JOIN
                      dbo.cv_resource_requests_hours ON dbo.cv_resource_requests_hours.deleted = 0 AND 
                      dbo.cv_resource_requests_hours.parent = dbo.cv_resource_requests_workflow.id LEFT OUTER JOIN
                      dbo.cv_WM_tpm ON dbo.cv_resource_requests.requestid = dbo.cv_WM_tpm.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_tpm.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_tpm.number AND 
                      dbo.cv_WM_tpm.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_resource_request_update_tpm ON dbo.cv_resource_request_update_tpm.deleted = 0 AND dbo.cv_resource_request_update_tpm.latest = 1 AND
                       dbo.cv_resource_request_update_tpm.parent = dbo.cv_resource_requests_workflow.id LEFT OUTER JOIN
                      dbo.cv_resource_request_milestones ON dbo.cv_resource_request_milestones.deleted = 0 AND dbo.cv_resource_request_milestones.latest = 1 AND 
                      dbo.cv_resource_request_milestones.parent = dbo.cv_resource_requests_workflow.id
WHERE     (dbo.cv_resource_requests.deleted = 0) AND (dbo.cv_request_items.applicationid IN
                          (SELECT     tpm_app_id
                            FROM          dbo.cv_setting)) AND (dbo.cv_resource_requests.accepted > - 1) AND (dbo.cv_project_requests.id IS NOT NULL) OR
                      (dbo.cv_resource_requests.deleted = 0) AND (dbo.cv_request_items.applicationid IN
                          (SELECT     tpm_app_id
                            FROM          dbo.cv_setting AS cv_setting_1)) AND (dbo.cv_resource_requests.accepted > - 1) AND (dbo.cv_service_requests.id IS NOT NULL)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[56] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = -384
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 6
               Left = 622
               Bottom = 114
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_segments"
            Begin Extent = 
               Top = 390
               Left = 842
               Bottom = 498
               Right = 993
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_lead"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_working"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_tpm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_executive"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_technical"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_engineer"
            Begin Extent = 
               Top = 546
               Left = 38
               Bottom = 654
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests_workflow"
            Begin Extent = 
               Top = 390
               Left = 38
               Bottom = 498
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_team_lead"
            Begin Extent = 
               Top = 438
               Left = 653
               Bottom = 546
               Right = 804
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_project_requests"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_service_requests"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 222
               Left = 624
               Bottom = 330
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_applications"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 330
               Left = 259
               Bottom = 438
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests_hours"
            Begin Extent = 
               Top = 330
               Left = 448
               Bottom = 446
               Right = 615
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_tpm"
            Begin Extent = 
               Top = 330
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_tpm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'              Left = 637
               Bottom = 438
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_request_update_tpm"
            Begin Extent = 
               Top = 438
               Left = 272
               Bottom = 582
               Right = 423
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "cv_resource_request_milestones"
            Begin Extent = 
               Top = 450
               Left = 461
               Bottom = 558
               Right = 612
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 114
         Width = 284
         Width = 1500
         Width = 2985
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_tpm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane4', @value=N'170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_tpm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_tpm'
GO
/****** Object:  View [dbo].[vw_WM_tpm_StandardAliases]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_WM_tpm_StandardAliases]
AS
SELECT     [Project Number] AS ProjectNumber, [Project Name] AS ProjectName, [Segment Name] AS SegmentName, description, project_type AS ProjectType, 
                      Department, Application AS AppName, submitter, project_lead AS ProjectLead, working_sponsor AS WorkingSponsor, 
                      executive_sponsor AS ExecSponsor, technical_lead AS TechLead, engineer, date_submitted AS SubmitDate, start_date AS Startdate, 
                      end_date AS Enddate, technician, used, allocated, devices, [Project Status] AS ProjectStatus, Forecast_End_Date AS ForecastEndDate, 
                      [Technician Status] AS TechnicianStatus, Portfolio, last_updated AS LastUpdatedDate, datestamp, scope, timeline, budget, comments, requestid, id, 
                      itemid, number, priority, statement, financials_exclude AS ExcludeFinancials, start_d AS ActualDiscoveryStartDate, end_d AS ActualDiscoveryEndDate, 
                      start_p AS ActualPlanningStartDate, end_p AS ActualPlanningEndDate, start_e AS ActualExecutionStartDate, end_e AS ActualExecuteEndDate, 
                      start_c AS ActualClosingStartDate, end_c AS ActualClosingEndDate, costs, ppm AS ProjectPhase, appsd AS ApprovedDiscoveryStartDate, 
                      apped AS ApprovedDiscoveryEndDate, appsp AS ApprovedPlanningStartDate, appep AS ApprovedPlanningEndDate, 
                      appse AS ApprovedExecutionStartDate, appee AS ApprovedExecutionEndDate, appsc AS ApprovedClosingStartDate, 
                      appec AS ApprovedClosingEndDate, appid AS ApprovedInternalDiscovery, appexd AS ApprovedExternalDiscovery, 
                      apphd AS ApprovedHardwareDiscovery, actid AS ActualInternalDiscovery, acted AS ActualExternalDiscovery, acthd AS ActualHardwareDiscovery, 
                      estid AS EstimateInternalDiscovery, ested AS EstimateExternalDiscovery, esthd AS EstimateHardwareDiscovery, appip AS ApprovedInternalPlanning, 
                      appexp AS ApprovedExternalPlanning, apphp AS ApprovedHardwarePlanning, actip AS ActualInternalPlanning, actep AS ActualExternalPlanning, 
                      acthp AS ActualHardwarePlanning, estip AS EstimateInternalPlanning, estep AS EstimateExternalPlanning, esthp AS EstimateHardwarePlanning, 
                      appie AS ApprovedInternalExecution, appexe AS ApprovedExternalExecution, apphe AS ApprovedHardwareExecution, actie AS ActualInternalExecution, 
                      actee AS ActualExternalExecution, acthe AS ActualHardwareExecution, estie AS EstimateInternalExecution, estee AS EstimateExternalExecution, 
                      esthe AS EstimateHardwardwareExecution, appic AS ApprovedInternalClosing, appexc AS ApprovedExternalClosing, 
                      apphc AS ApprovedHardwareClosing, actic AS ActualInternalClosing, esthe AS EstimateHardwareExecution, actec AS ActualExternalClosing, 
                      acthc AS ActualHardwareClosing, estic AS EstimateInternalClosing, estec AS EstimateExecutionClosing, esthc AS EstimateHardwareClosing, 
                      sharepoint, better, worse, lessons, modified AS ModifiedDate, deleted, thisweek, nextweek, teamlead, completed AS CompletedDate, 
                      overall_priority AS OverallPriority, mile_date AS MilestoneDate, mile_description AS MilestoneDesc, estimated_savings AS EstimatedSavings, 
                      estimated_savings_plot AS EstimateSavingsPlot, realized_savings AS RealizedSavings
FROM         dbo.vw_WM_tpm AS v

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[23] 4[39] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "v"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2865
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_tpm_StandardAliases'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_tpm_StandardAliases'
GO
/****** Object:  View [dbo].[vw_WM_workstation]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_WM_workstation]
AS
SELECT     dbo.cv_users.lname + ', ' + dbo.cv_users.fname AS administrator, cv_accounts.lname + ', ' + cv_accounts.fname AS account, 
                      dbo.cv_workstation_names.code + dbo.cv_workstation_names.identifier + dbo.cv_workstation_names.prefix1 + dbo.cv_workstation_names.prefix2 + dbo.cv_workstation_names.prefix3
                       + dbo.cv_workstation_names.prefix4 + dbo.cv_workstation_names.prefix5 + dbo.cv_workstation_names.prefix6 AS Expr1, 
                      ClearViewAsset.dbo.cva_status.name AS host, dbo.cv_forecast_answers.completed, dbo.cv_classs.name AS class, 
                      dbo.cv_environment.name AS environment, dbo.cv_workstation_virtual.osid, dbo.cv_workstation_virtual.ram, 
                      dbo.cv_workstation_virtual.domainid
FROM         dbo.cv_workstation_virtual INNER JOIN
                      dbo.cv_forecast_answers INNER JOIN
                      dbo.cv_users ON dbo.cv_forecast_answers.appcontact = dbo.cv_users.userid AND dbo.cv_users.deleted = 0 INNER JOIN
                      dbo.cv_classs ON dbo.cv_forecast_answers.classid = dbo.cv_classs.id AND dbo.cv_classs.deleted = 0 INNER JOIN
                      dbo.cv_environment ON dbo.cv_forecast_answers.environmentid = dbo.cv_environment.id AND dbo.cv_environment.deleted = 0 ON 
                      dbo.cv_workstation_virtual.answerid = dbo.cv_forecast_answers.id AND dbo.cv_forecast_answers.deleted = 0 INNER JOIN
                      dbo.cv_workstation_names ON dbo.cv_workstation_virtual.nameid = dbo.cv_workstation_names.id AND 
                      dbo.cv_workstation_names.deleted = 0 INNER JOIN
                      ClearViewAsset.dbo.cva_status ON dbo.cv_workstation_virtual.virtualhostid = ClearViewAsset.dbo.cva_status.assetid AND 
                      ClearViewAsset.dbo.cva_status.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_workstation_virtual_accounts INNER JOIN
                      dbo.cv_users AS cv_accounts ON dbo.cv_workstation_virtual_accounts.userid = cv_accounts.userid AND cv_accounts.deleted = 0 ON 
                      dbo.cv_workstation_virtual.assetid = dbo.cv_workstation_virtual_accounts.assetid AND dbo.cv_workstation_virtual_accounts.deleted = 0

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[21] 2[22] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_accounts"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_workstation_virtual"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_forecast_answers"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 114
               Right = 392
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_classs"
            Begin Extent = 
               Top = 6
               Left = 430
               Bottom = 114
               Right = 581
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_environment"
            Begin Extent = 
               Top = 6
               Left = 619
               Bottom = 114
               Right = 770
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_workstation_names"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = 56' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_workstation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'7
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cva_status (ClearViewAsset.dbo)"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_workstation_virtual_accounts"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_workstation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_workstation'
GO
/****** Object:  View [dbo].[vw_WM_YTD]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_WM_YTD]
AS
SELECT     CASE WHEN cv_projects.number IS NULL 
                      THEN '1' WHEN cv_projects.number LIKE 'EPS%' THEN '1' WHEN cv_projects.number LIKE 'CV%' THEN '1' ELSE '0' END AS TASK, 
                      CASE WHEN cv_projects.number IS NULL 
                      THEN cv_service_requests.name WHEN cv_projects.number LIKE 'EPS%' THEN cv_projects.name WHEN cv_projects.number LIKE 'CV%' THEN cv_projects.name
                       ELSE cv_projects.name END AS Name, dbo.cv_projects.projectid, dbo.cv_projects.number AS [Project Number], dbo.cv_requests.requestid, 
                      dbo.cv_requests.description, dbo.cv_projects.bd AS project_type, dbo.cv_services.name AS Service, dbo.cv_request_items.name AS Department, 
                      dbo.cv_applications.name AS Application, cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, 
                      cv_users_lead.fname + ' ' + cv_users_lead.lname AS project_lead, cv_users_working.fname + ' ' + cv_users_working.lname AS working_sponsor, 
                      cv_users_executive.fname + ' ' + cv_users_executive.lname AS executive_sponsor, 
                      cv_users_technical.fname + ' ' + cv_users_technical.lname AS technical_lead, dbo.cv_requests.modified AS date_submitted, 
                      dbo.cv_requests.start_date, dbo.cv_requests.end_date, cv_users_lead.fname + ' ' + cv_users_lead.lname AS technician, 
                      dbo.cv_resource_requests.allocated, dbo.cv_resource_requests.devices, dbo.cv_projects.status AS [Project Status], 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_organizations.name AS Portfolio, dbo.cv_resource_requests.modified AS last_updated, 
                      dbo.cv_resource_request_update.status AS technician_color, dbo.cv_WM_iis.reason, dbo.cv_WM_remediation.reason AS reason2
FROM         dbo.cv_resource_request_update RIGHT OUTER JOIN
                      dbo.cv_resource_requests_workflow ON dbo.cv_resource_request_update.parent = dbo.cv_resource_requests_workflow.id RIGHT OUTER JOIN
                      dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests LEFT OUTER JOIN
                      dbo.cv_projects INNER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid AND dbo.cv_organizations.enabled = 1 AND 
                      dbo.cv_organizations.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_lead ON dbo.cv_projects.lead = cv_users_lead.userid AND cv_users_lead.enabled = 1 AND 
                      cv_users_lead.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_working ON dbo.cv_projects.working = cv_users_working.userid AND cv_users_working.enabled = 1 AND 
                      cv_users_working.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_executive ON dbo.cv_projects.executive = cv_users_executive.userid AND cv_users_executive.enabled = 1 AND 
                      cv_users_executive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technical ON dbo.cv_projects.technical = cv_users_technical.userid AND cv_users_technical.enabled = 1 AND 
                      cv_users_technical.deleted = 0 ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND dbo.cv_resource_requests.deleted = 0 ON 
                      dbo.cv_resource_requests_workflow.parent = dbo.cv_resource_requests.id AND dbo.cv_resource_request_update.deleted = 0 AND 
                      dbo.cv_resource_request_update.latest = 1 LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid AND 
                      dbo.cv_service_requests.checkout = 1 AND dbo.cv_service_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_request_items INNER JOIN
                      dbo.cv_applications ON dbo.cv_request_items.applicationid = dbo.cv_applications.applicationid AND dbo.cv_applications.enabled = 1 AND 
                      dbo.cv_applications.deleted = 0 ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid AND dbo.cv_request_items.enabled = 1 AND 
                      dbo.cv_request_items.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_services.deleted = 0 AND dbo.cv_services.serviceid = dbo.cv_resource_requests.serviceid LEFT OUTER JOIN
                      dbo.cv_WM_iis ON dbo.cv_resource_requests.requestid = dbo.cv_WM_iis.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_iis.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_iis.number AND 
                      dbo.cv_WM_iis.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_project_coordinator ON dbo.cv_resource_requests.requestid = dbo.cv_WM_project_coordinator.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_project_coordinator.itemid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_project_coordinator.number AND dbo.cv_WM_project_coordinator.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_remediation ON dbo.cv_resource_requests.requestid = dbo.cv_WM_remediation.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_remediation.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_remediation.number AND 
                      dbo.cv_WM_remediation.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_server_retrieve ON dbo.cv_resource_requests.requestid = dbo.cv_WM_server_retrieve.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_server_retrieve.itemid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_server_retrieve.number AND dbo.cv_WM_server_retrieve.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_server_archive ON dbo.cv_resource_requests.requestid = dbo.cv_WM_server_archive.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_server_archive.itemid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_server_archive.number AND dbo.cv_WM_server_archive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_tpm ON dbo.cv_resource_requests.requestid = dbo.cv_WM_tpm.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_tpm.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_tpm.number AND 
                      dbo.cv_WM_tpm.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_workstation ON dbo.cv_resource_requests.requestid = dbo.cv_WM_workstation.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_workstation.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_workstation.number AND 
                      dbo.cv_WM_workstation.deleted = 0
WHERE     (dbo.cv_resource_requests.deleted = 0) AND (dbo.cv_resource_requests.status > 0) AND (dbo.cv_resource_requests.status < 3) OR
                      (dbo.cv_resource_requests.deleted = 0) AND (dbo.cv_resource_requests.status = 3) AND (DATEPART(yyyy, dbo.cv_resource_requests.modified) 
                      = DATEPART(yyyy, GETDATE()))

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_lead"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_working"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_executive"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_YTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_technical"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_service_requests"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 330
               Left = 246
               Bottom = 438
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_applications"
            Begin Extent = 
               Top = 330
               Left = 468
               Bottom = 438
               Right = 651
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 222
               Left = 605
               Bottom = 330
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_iis"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_project_coordinator"
            Begin Extent = 
               Top = 438
               Left = 227
               Bottom = 546
               Right = 398
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_remediation"
            Begin Extent = 
               Top = 438
               Left = 436
               Bottom = 546
               Right = 587
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_server_retrieve"
            Begin Extent = 
               Top = 546
               Left = 38
               Bottom = 654
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_server_archive"
            Begin Extent = 
               Top = 546
               Left = 227
               Bottom = 654
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_tpm"
            Begin Extent = 
               Top = 546
               Left = 416
               Bottom = 654
               Right = 583
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_workstation"
            Begin Extent = 
               Top = 654
               Left = 38
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_YTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'               Bottom = 762
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_request_update"
            Begin Extent = 
               Top = 654
               Left = 227
               Bottom = 762
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_YTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_YTD'
GO
/****** Object:  View [dbo].[vw_WM_YTD_BAK]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_WM_YTD_BAK]
AS
SELECT     CASE WHEN cv_projects.number IS NULL 
                      THEN '1' WHEN cv_projects.number LIKE 'EPS%' THEN '1' WHEN cv_projects.number LIKE 'CV%' THEN '1' ELSE '0' END AS TASK, 
                      CASE WHEN cv_projects.number IS NULL 
                      THEN cv_service_requests.name WHEN cv_projects.number LIKE 'EPS%' THEN cv_projects.name WHEN cv_projects.number LIKE 'CV%' THEN cv_projects.name
                       ELSE cv_projects.name END AS Name, dbo.cv_projects.projectid, dbo.cv_projects.number AS [Project Number], dbo.cv_requests.requestid, 
                      dbo.cv_requests.description, dbo.cv_projects.bd AS project_type, dbo.cv_services.name AS Service, dbo.cv_request_items.name AS Department, 
                      dbo.cv_applications.name AS Application, cv_users_submit.fname + ' ' + cv_users_submit.lname AS submitter, 
                      cv_users_lead.fname + ' ' + cv_users_lead.lname AS project_lead, cv_users_working.fname + ' ' + cv_users_working.lname AS working_sponsor, 
                      cv_users_executive.fname + ' ' + cv_users_executive.lname AS executive_sponsor, 
                      cv_users_technical.fname + ' ' + cv_users_technical.lname AS technical_lead, dbo.cv_requests.modified AS date_submitted, 
                      dbo.cv_requests.start_date, dbo.cv_requests.end_date, dbo.cv_users.fname + ' ' + dbo.cv_users.lname AS technician, 
                      dbo.cv_resource_requests_hours.used, dbo.cv_resource_requests.allocated, dbo.cv_resource_requests.devices, 
                      dbo.cv_projects.status AS [Project Status], 
                      CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [Technician Status], dbo.cv_organizations.name AS Portfolio, dbo.cv_resource_requests.updated AS last_updated, 
                      dbo.cv_resource_request_update.status AS technician_color, dbo.cv_WM_iis.reason, dbo.cv_WM_remediation.reason AS reason2
FROM         dbo.cv_resource_requests INNER JOIN
                      dbo.cv_requests LEFT OUTER JOIN
                      dbo.cv_projects INNER JOIN
                      dbo.cv_organizations ON dbo.cv_projects.organization = dbo.cv_organizations.organizationid AND dbo.cv_organizations.enabled = 1 AND 
                      dbo.cv_organizations.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_lead ON dbo.cv_projects.lead = cv_users_lead.userid AND cv_users_lead.enabled = 1 AND 
                      cv_users_lead.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_working ON dbo.cv_projects.working = cv_users_working.userid AND cv_users_working.enabled = 1 AND 
                      cv_users_working.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_executive ON dbo.cv_projects.executive = cv_users_executive.userid AND cv_users_executive.enabled = 1 AND 
                      cv_users_executive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users AS cv_users_technical ON dbo.cv_projects.technical = cv_users_technical.userid AND cv_users_technical.enabled = 1 AND 
                      cv_users_technical.deleted = 0 ON dbo.cv_requests.projectid = dbo.cv_projects.projectid AND dbo.cv_projects.deleted = 0 INNER JOIN
                      dbo.cv_users AS cv_users_submit ON dbo.cv_requests.userid = cv_users_submit.userid AND cv_users_submit.enabled = 1 AND 
                      cv_users_submit.deleted = 0 ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid AND 
                      dbo.cv_resource_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_users ON dbo.cv_resource_requests.userid = dbo.cv_users.userid AND dbo.cv_users.enabled = 1 AND 
                      dbo.cv_users.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid AND 
                      dbo.cv_service_requests.checkout = 1 AND dbo.cv_service_requests.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_request_items INNER JOIN
                      dbo.cv_applications ON dbo.cv_request_items.applicationid = dbo.cv_applications.applicationid AND dbo.cv_applications.enabled = 1 AND 
                      dbo.cv_applications.deleted = 0 ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid AND dbo.cv_request_items.enabled = 1 AND 
                      dbo.cv_request_items.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_services.deleted = 0 AND dbo.cv_services.serviceid = dbo.cv_resource_requests.serviceid LEFT OUTER JOIN
                      dbo.cv_resource_requests_hours ON dbo.cv_resource_requests_hours.deleted = 0 AND 
                      dbo.cv_resource_requests_hours.parent = dbo.cv_resource_requests.id LEFT OUTER JOIN
                      dbo.cv_WM_iis ON dbo.cv_resource_requests.requestid = dbo.cv_WM_iis.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_iis.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_iis.number AND 
                      dbo.cv_WM_iis.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_project_coordinator ON dbo.cv_resource_requests.requestid = dbo.cv_WM_project_coordinator.requestid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_project_coordinator.number AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_project_coordinator.itemid AND dbo.cv_WM_project_coordinator.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_remediation ON dbo.cv_resource_requests.requestid = dbo.cv_WM_remediation.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_remediation.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_remediation.number AND 
                      dbo.cv_WM_remediation.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_server_retrieve ON dbo.cv_resource_requests.requestid = dbo.cv_WM_server_retrieve.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_server_retrieve.itemid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_server_retrieve.number AND dbo.cv_WM_server_retrieve.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_server_archive ON dbo.cv_resource_requests.requestid = dbo.cv_WM_server_archive.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_server_archive.itemid AND 
                      dbo.cv_resource_requests.number = dbo.cv_WM_server_archive.number AND dbo.cv_WM_server_archive.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_tpm ON dbo.cv_resource_requests.requestid = dbo.cv_WM_tpm.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_tpm.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_tpm.number AND 
                      dbo.cv_WM_tpm.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_WM_workstation ON dbo.cv_resource_requests.requestid = dbo.cv_WM_workstation.requestid AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_workstation.itemid AND dbo.cv_resource_requests.number = dbo.cv_WM_workstation.number AND 
                      dbo.cv_WM_workstation.deleted = 0 LEFT OUTER JOIN
                      dbo.cv_resource_request_update ON dbo.cv_resource_request_update.deleted = 0 AND dbo.cv_resource_request_update.latest = 1 AND 
                      dbo.cv_resource_request_update.parent = dbo.cv_resource_requests.id
WHERE     (dbo.cv_resource_requests.deleted = 0) AND (dbo.cv_resource_requests.status > 0) AND (dbo.cv_resource_requests.status < 3) AND 
                      (dbo.cv_resource_requests.joined = 0) OR
                      (dbo.cv_resource_requests.deleted = 0) AND (dbo.cv_resource_requests.status = 3) AND (dbo.cv_resource_requests.joined = 0) AND (DATEPART(yyyy, 
                      dbo.cv_resource_requests.updated) = DATEPART(yyyy, GETDATE()))

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cv_resource_requests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_requests"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 114
               Right = 395
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_projects"
            Begin Extent = 
               Top = 6
               Left = 433
               Bottom = 114
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_organizations"
            Begin Extent = 
               Top = 6
               Left = 622
               Bottom = 114
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_lead"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_working"
            Begin Extent = 
               Top = 114
               Left = 227
               Bottom = 222
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_executive"
            Begin Extent = 
               Top = 114
               Left = 416
               Bottom = 222
               Right = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_YTD_BAK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_technical"
            Begin Extent = 
               Top = 114
               Left = 605
               Bottom = 222
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users_submit"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_users"
            Begin Extent = 
               Top = 222
               Left = 227
               Bottom = 330
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_service_requests"
            Begin Extent = 
               Top = 222
               Left = 416
               Bottom = 330
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_request_items"
            Begin Extent = 
               Top = 222
               Left = 624
               Bottom = 330
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_applications"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_services"
            Begin Extent = 
               Top = 330
               Left = 259
               Bottom = 438
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_requests_hours"
            Begin Extent = 
               Top = 330
               Left = 448
               Bottom = 438
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_iis"
            Begin Extent = 
               Top = 330
               Left = 637
               Bottom = 438
               Right = 788
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_project_coordinator"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_remediation"
            Begin Extent = 
               Top = 438
               Left = 227
               Bottom = 546
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_server_retrieve"
            Begin Extent = 
               Top = 438
               Left = 416
               Bottom = 546
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_server_archive"
            Begin Extent = 
               Top = 438
               Left = 605
               Bottom = 546
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_tpm"
            Begin Extent = 
               Top = 546
               Lef' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_YTD_BAK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N't = 38
               Bottom = 654
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_WM_workstation"
            Begin Extent = 
               Top = 546
               Left = 247
               Bottom = 654
               Right = 398
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cv_resource_request_update"
            Begin Extent = 
               Top = 546
               Left = 436
               Bottom = 654
               Right = 587
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_YTD_BAK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WM_YTD_BAK'
GO
/****** Object:  View [dbo].[vwCVFactory_Feed]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCVFactory_Feed] 
as
Select 
/********** Project Information ***************/
dbo.vwCVProjects.ProjectName,
dbo.vwCVProjects.ProjectNumber,
dbo.vwCVProjects.ProjectBaseDiscretion,
dbo.vwCVProjects.ProjectOrgName as ProjectPoftfolio,
dbo.vwCVProjects.ProjectLeadName as ProjectManagerName,
dbo.vwCVProjects.ProjectLeadXID as ProjectManagerLANID,
dbo.vwCVProjects.ProjectUserName as ProjectRequesterName ,
dbo.vwCVProjects.ProjectUserXID as ProjectRequesterLANID,
dbo.vwCVProjects.ProjectEngineerName as ProjectIntegrationEngineerName,
dbo.vwCVProjects.ProjectEngineerXID as ProjectIntegrationEngineerLANID,
dbo.vwCVProjects.ProjectTechnicalLeadName  ,
dbo.vwCVProjects.ProjectTechnicalLeadXID as  ProjectTechnicalLeadLANDID ,
UserIISResource.UserName as  ProjectIIResourceName ,
UserIISResource.XID as  ProjectIIResourceLANID ,
/********** End of Project Information ***************/

/********** Design config. ***************/
/*
cvForeCastAnswers.implementation as BuildStartDate,
cvForeCastAnswers.completed  as BuildEndDate, */
(select sum(cost) from  cv_forecast_acquisitions as cvForecastAcquisitions where cvForecastAcquisitions.modelid=cvModels.id and cvForecastAcquisitions.enabled=1 and cvForecastAcquisitions.deleted=0) as ServerAcquisitionsCost,
(select sum(cost) from  cv_forecast_operations as cvForecastOperations  where cvForecastOperations.modelid=cvModels.id and cvForecastOperations.enabled=1 and cvForecastOperations.deleted=0 ) as ServerOperationsCost,

(Select amp from cv_models_property as cvModelsProperty where id =vwCVServerDetails.ServerModelID) as AMPs,
cvForeCastAnswers.AppName as ServerApplicationName,
/*cvForeCastAnswers.AppCode as ServerApplicationCode,*/
cv_mnemonics.factory_code as AppCode,
UserAppContact.UserName as ServerClientContact,
UserAppContact.XID as ServerClientContactLANID,
UserPrimaryContact.UserName as ServerPrimaryContact,
UserPrimaryContact.XID as ServerPrimaryContactLANID,
UserAdminContact.UserName as ServerAdminContact,
UserAdminContact.XID as ServerAdminContactLANID,

/*Question Operating System */
cast((Select Response from cv_forecast_answers_Platform cvForeCastAnswersPlatform 
INNER JOIN cv_Forecast_responses cvForecastResponses
ON cvForeCastAnswersPlatform.responseid = cvForecastResponses.id
where cvForeCastAnswersPlatform.questionid=22 and cvForeCastAnswersPlatform.deleted=0  and cvForeCastAnswersPlatform.answerid = ServerForeCastAnswerId) as varchar(MAX))as OS,

/*High availability method */
cast((Select Response from cv_forecast_answers_Platform cvForeCastAnswersPlatform 
INNER JOIN cv_Forecast_responses cvForecastResponses
ON cvForeCastAnswersPlatform.responseid = cvForecastResponses.id
where cvForeCastAnswersPlatform.questionid=5 and cvForeCastAnswersPlatform.deleted=0  and cvForeCastAnswersPlatform.answerid = ServerForeCastAnswerId) as varchar(MAX)) as HighAvailabilityMethod,


/*Disaster recovery requirements */
cast((Select Response from cv_forecast_answers_Platform cvForeCastAnswersPlatform 
INNER JOIN cv_Forecast_responses cvForecastResponses
ON cvForeCastAnswersPlatform.responseid = cvForecastResponses.id
where cvForeCastAnswersPlatform.questionid=8 and cvForeCastAnswersPlatform.deleted=0  and cvForeCastAnswersPlatform.answerid = ServerForeCastAnswerId) as varchar(MAX)) as RTO,
 
/*Type Of Recovery */
CAST((Select Response from cv_forecast_answers_Platform cvForeCastAnswersPlatform 
INNER JOIN cv_Forecast_responses cvForecastResponses
ON cvForeCastAnswersPlatform.responseid = cvForecastResponses.id
where cvForeCastAnswersPlatform.questionid=10 and cvForeCastAnswersPlatform.deleted=0  and cvForeCastAnswersPlatform.answerid = ServerForeCastAnswerId) as varchar(MAX)) as TypeOfRecovery,

/********** End of Design config. ***************/
/********** birth cert. ***************/
cvForeCastAnswers.name  as ServerDesignNickName,
vwCVServerDetails.ServerName,
vwCVServerDetails.ServerDummyName,
(SELECT cvaHBA.Name + ', ' 
   FROM ClearViewAsset.dbo.cva_hba cvaHBA 
		WHERE cvaHBA.assetid =vwCVServerDetails.ServerAssetID 
  FOR XML PATH('')
  ) AS ServerWWPortNames,
vwCVServerDetails.ServerDRName,

(select top 1 /*cvServerIPs.Id,cvServerIPs.ServerId,*/
cast(isnull(cvIPAddresses.add1,'')as varchar)+'.'+
cast(isnull(cvIPAddresses.add2,'')as varchar)+'.'+
cast(isnull(cvIPAddresses.add3,'') as varchar)+'.'+
cast(isnull(cvIPAddresses.add4,'')as varchar) as ServerIPAddress
FROM clearview.dbo.cv_servers_ips cvServerIPs
INNER JOIN  ClearViewIP.dbo.cv_ip_addresses cvIPAddresses
ON cvServerIPs.ipaddressid=cvIPAddresses.id 
AND cvServerIPs.deleted=0 And cvServerIPs.final =1 and cvIPAddresses.deleted=0
AND cvServerIPs.ServerId=vwCVServerDetails.ServerID) as ServerIPAddress,

vwCVServerDetails.ServerModel,
vwCVServerDetails.ServerStorageType as ServerFabric,
vwCVServerDetails.ServerSerialNumber,
vwCVServerDetails.ServerAssetTag,
vwCVServerDetails.ServerILO,
vwCVServerDetails.ServerRoom,
vwCVServerDetails.ServerRack,
vwCVServerDetails.ServerClass,
vwCVServerDetails.ServerEnvironment,
vwCVServerDetails.ServerOperatingSystem,

CASE 
WHEN RIGHT(vwCVServerDetails.ServerName, 1)='Z' then
	substring(vwCVServerDetails.ServerName,1,len(vwCVServerDetails.ServerName)-2)+
	Replicate('0',2-len(cast(substring(right(vwCVServerDetails.ServerName,4),1,2) as int)+1))+
	convert(varchar(2),cast(substring(right(vwCVServerDetails.ServerName,4),1,2) as int)+1)+'A'
ELSE ''
END as ServerClusterName,
/*'' as ServerConsistencyGroup,*/
/********** end of birth cert. ***************/
/********** Backup config. ***************/
cvRecoveryLocations.Name as ServerRecoveryLocation,
CASE 
	WHEN cvForeCastAnswersBackup.Daily=1 then 'Daily'
	WHEN cvForeCastAnswersBackup.weekly=1 then 'Weekly'
	WHEN cvForeCastAnswersBackup.monthly=1 then 'Monthly'
END ServerBackupFrequency,
(isnull(cvForeCastAnswersBackup.time_hour,'') + isnull(cvForeCastAnswersBackup.time_switch,'') )as ServerBackupStartTime,
cvForeCastAnswersBackup.start_date as ServerBackupStartDate,
vwCVServerDetails.ServerCapacityProd as ServerTotalCombinedDiskCapacity,
'5 GB' as ServerCurrentCombinedDiskUtilized,
cvForeCastAnswersBackup.average_one  as ServerAvgSizeOfOneTypicalDataFile,
cvForeCastAnswersBackup.documentation  as ServerProductTurnOverDocumentation,
/********** End of Backup config. ***************/

/* Other Info */
vwCVServerDetails.ServerForeCastAnswerId,
vwCVServerDetails.ServerID
/*End of other info */
FROM
/* Project Info */
 dbo.vwCVProjectRequests 
INNER JOIN  dbo.vwCVProjects ON dbo.vwCVProjectRequests.ProjectID = dbo.vwCVProjects.ProjectID 
INNER JOIN dbo.vwCVServerDetails ON dbo.vwCVProjectRequests.RequestID = dbo.vwCVServerDetails.RequestID
/* End of Project Info --vwCVServerDetails  */
INNER JOIN cv_forecast_answers cvForeCastAnswers  on vwCVServerDetails.ServerForeCastAnswerId =cvForeCastAnswers.ID
LEFT OUTER JOIN dbo.vwCVUsers  UserAppContact on UserAppContact.userid =cvForeCastAnswers.appcontact
LEFT OUTER JOIN dbo.vwCVUsers  UserPrimaryContact on UserPrimaryContact.userid =cvForeCastAnswers.admin1
LEFT OUTER JOIN dbo.vwCVUsers  UserAdminContact on UserAdminContact.userid =cvForeCastAnswers.admin2
/* Joins for ForeCastAnswer Backup */
LEFT OUTER JOIN dbo.cv_forecast_answers_backup cvForeCastAnswersBackup
on vwCVServerDetails.ServerForeCastAnswerId =cvForeCastAnswersBackup.answerid and cvForeCastAnswersBackup.deleted=0
LEFT OUTER JOIN dbo.cv_recovery_locations cvRecoveryLocations
on cvForeCastAnswersBackup.recoveryid =cvRecoveryLocations.ID and cvRecoveryLocations.deleted=0

/* For IIS ResourceName */
LEFT OUTER JOIN dbo.cv_ondemand_tasks_pending  cvOnDemandTasksPending
	ON  cvForeCastAnswers.ID= cvOnDemandTasksPending.answerid and cvOnDemandTasksPending.deleted=0
LEFT OUTER JOIN dbo.cv_resource_requests_workflow cvResourceRequestsWorkflow
	ON cvOnDemandTasksPending.resourceid =cvResourceRequestsWorkflow.ID and cvResourceRequestsWorkflow.deleted=0
LEFT OUTER JOIN dbo.vwCVUsers  UserIISResource on cvResourceRequestsWorkflow.userid =UserIISResource.userid

/* For Model Property Details */
LEFT OUTER JOIN cv_models_property as cvModelsProperty 
	ON  cvModelsProperty.id =vwCVServerDetails.ServerModelID
	 AND cvModelsProperty.deleted=0
LEFT OUTER JOIN clearview.dbo.cv_models cvModels
	ON cvModelsProperty.modelid=cvModels.id AND  cvModels.enabled = 1 	AND cvModels.DELETED=0

LEFT OUTER JOIN cv_mnemonics 
	ON cvForeCastAnswers.mnemonicid = cv_mnemonics.id
	And cv_mnemonics.deleted = 0
WHERE vwCVServerDetails.ServerClassID in (6,7)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[24] 4[22] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vwServerDetails"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 127
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 21
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 48
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1605
         Width = 1815
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCVFactory_Feed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCVFactory_Feed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCVFactory_Feed'
GO
/****** Object:  View [dbo].[vwCVFactory_FeedStorageConfig]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCVFactory_FeedStorageConfig]
AS
SELECT 
cvStorageLuns.id as LUNID,
cvStorageLuns.answerid,
cvStorageLuns.clusterid,
cvStorageLuns.instanceid,
cvStorageLuns.csmconfigid,
cvStorageLuns.number,
cvStorageLuns.performance,
cvStorageLuns.path ,
'N' as MountPoint
from cv_storage_luns cvStorageLuns 
	INNER JOIN vwCVFactory_Feed 
	ON cvStorageLuns.answerid=vwCVFactory_Feed.ServerForeCastAnswerId
WHERE cvStorageLuns.deleted=0

UNION ALL
SELECT 
cvStorageLuns.id as LUNID,
cvStorageLuns.answerid,
cvStorageLuns.clusterid,
cvStorageLuns.instanceid,
cvStorageLuns.csmconfigid,
cvStorageLuns.number,
cvStorageMountPoints.performance,
cvStorageMountPoints.path ,
'Y' as MountPoint
from 
cv_storage_luns cvStorageLuns 
INNER JOIN cv_storage_mount_points cvStorageMountPoints
	ON  cvStorageLuns.ID =cvStorageMountPoints.LUNID and cvStorageMountPoints.deleted=0 
INNER JOIN vwCVFactory_Feed 
	ON cvStorageLuns.answerid=vwCVFactory_Feed.ServerForeCastAnswerId
Where cvStorageLuns.deleted=0

GO
/****** Object:  View [dbo].[vwCVIssuesAndEnhancements]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[vwCVIssuesAndEnhancements]
as
Select 
'Issues' as Category,
cv_issues.id,
cv_issues.requestid,
cv_issues.title,
cv_issues.description,
cv_issues.pageid,
cv_pages.title as Module,
cv_issues.status,
cv_status.statusDesc,
cv_issues.userid as RequestedByUserID,
vwCVUsers.UserName as RequestedByUser,
cv_issues.created as RequestedOn
from cv_issues
LEFT OUTER JOIN cv_pages 
	on cv_issues.pageid=cv_pages.pageid
LEFT OUTER JOIN cv_status 
	on cv_issues.status=cv_status.statusid
LEFT OUTER JOIN dbo.vwCVUsers
	on	cv_issues.userid=vwCVUsers.userid
where cv_issues.deleted=0
UNION ALL
Select 
'Enhancements' as Category,
cv_enhancement.id,
cv_enhancement.requestid,
cv_enhancement.title,
cv_enhancement.description,
cv_enhancement.pageid,
cv_pages.title as Module,
cv_enhancement.status,
cv_status.statusDesc,
cv_enhancement.userid as RequestedByUserID,
vwCVUsers.UserName as RequestedByUser,
cv_enhancement.created as RequestedOn
from cv_enhancement
LEFT OUTER JOIN cv_pages 
	on cv_enhancement.pageid=cv_pages.pageid
LEFT OUTER JOIN cv_status 
	on cv_enhancement.status=cv_status.statusid
LEFT OUTER JOIN dbo.vwCVUsers
	on	cv_enhancement.userid=vwCVUsers.userid
where cv_enhancement.deleted=0

GO
/****** Object:  View [dbo].[vwCVLocations]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[vwCVLocations] as
SELECT     dbo.cv_location_address.id AS LocationId, dbo.cv_location_address.name AS Location, dbo.cv_location_city.id AS CityId, 
                      dbo.cv_location_city.name AS City, dbo.cv_location_state.id AS StateId, dbo.cv_location_state.name AS State, 
                      dbo.cv_location_state.code AS StateCode, ISNULL(dbo.cv_location_address.name, '') + ' ( ' + ISNULL(dbo.cv_location_city.name, '') 
                      + ', ' + ISNULL(dbo.cv_location_state.code, '') + ' ) ' AS DisplayLocation
FROM         dbo.cv_location_address LEFT OUTER JOIN
                      dbo.cv_location_city ON dbo.cv_location_address.cityid = dbo.cv_location_city.id AND dbo.cv_location_city.deleted = 0 AND 
                      dbo.cv_location_city.enabled = 1 LEFT OUTER JOIN
                      dbo.cv_location_state ON dbo.cv_location_city.stateid = dbo.cv_location_state.id AND dbo.cv_location_state.deleted = 0 AND 
                      dbo.cv_location_state.enabled = 1
WHERE     (dbo.cv_location_address.deleted = 0) AND (dbo.cv_location_address.enabled = 1)


GO
/****** Object:  View [dbo].[vwCVProjectRequests]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCVProjectRequests]
AS
SELECT 
vwCVProjects.ProjectID, 

cvRequests.RequestID,
cvRequests.description AS ReqDescription, 
cvRequests.start_date AS ReqStartDate, 
cvRequests.end_date AS ReqEndDate, 
cvRequests.modified AS ReqModifiedDate ,
cvRequests.UserID as ReqUserID,
CVReqUser.username AS ReqUserName,

cvProjectRequests.ID as ProjectRequest,
cvProjectRequests.requestid AS ProjectReqID, 
cvProjectRequests.req_type AS ProjectReqType, 
cvProjectRequests.req_date AS ProjectReqDate, 
cvProjectRequests.interdependency AS ProjectReqInterdependency, 
cvProjectRequests.projects as ProjectReqProjects, 
cvProjectRequests.capability as ProjectReqCapability, 
cvProjectRequests.man_hours AS ProjectReqManHours, 
cvProjectRequests.expected_capital AS ProjectReqExpectedCapital, 
cvProjectRequests.internal_labor AS ProjectReqInternalLabor, 
cvProjectRequests.external_labor AS ProjectReqExternalLabor, 
cvProjectRequests.maintenance_increase AS ProjectReqMaintenanceIncrease, 
cvProjectRequests.project_expenses AS ProjectReqProjectExpenses, 
cvProjectRequests.estimated_avoidance AS ProjectReqEstimatedAvoidance, 
cvProjectRequests.estimated_savings AS ProjectReqEstimatedSavings, 
cvProjectRequests.realized_savings AS ProjectReqRealizedSavings,
cvProjectRequests.maintenance_avoidance AS ProjectReqMaintenanceAvoidance,
cvProjectRequests.asset_reusability AS ProjectReqAssetReusability, 
cvProjectRequests.internal_impact AS ProjectReqInternalImpact, 
cvProjectRequests.external_impact AS ProjectReqExternalImpact, 
cvProjectRequests.business_impact AS ProjectReqBusinessImpact, 
cvProjectRequests.strategic_opportunity AS ProjectReqStrategicOpportunity,
cvProjectRequests.acquisition AS ProjectReqAcquisition,
cvProjectRequests.technology_capabilities AS ProjectReqTechCapabilities,
cvProjectRequests.endlife AS ProjectReqEndLife, 
cvProjectRequests.endlife_date AS ProjectReqEndlifeDate, 
cvProjectRequests.tpm as ProjectReqTPM, 
cvProjectRequests.notify as ProjectReqNotify, 
cvProjectRequests.created as ProjectReqCreated, 
cvProjectRequests.updated as ProjectReqUpdated, 
cvProjectRequests.shelved as ProjectReqShelved,
cvProjectRequests.completed as ProjectReqCompleted, 
cvProjectRequests.deleted as ProjectReqDeleted

FROM 
vwCVProjects
LEFT OUTER JOIN CV_REQUESTS as cvRequests
	ON vwCVProjects.ProjectID=cvRequests.ProjectID
LEFT OUTER JOIN cv_project_requests as cvProjectRequests
	ON cvRequests.REQUESTID= cvProjectRequests.REQUESTID
LEFT OUTER JOIN dbo.vwCVUsers AS CVReqUser 
	ON cvRequests.userid = CVReqUser.UserID


GO
/****** Object:  View [dbo].[vwCVProjects]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCVProjects]
AS
SELECT     
CVProjects.ProjectID, 
CVProjects.name AS ProjectName, 
CVProjects.bd AS ProjectBaseDiscretion, 
CVProjects.number AS ProjectNumber, 
CVProjects.userid AS ProjectUserID, 
cvUsers.UserName AS ProjectUserName, 
cvUsers.XID AS ProjectUserXID, 
CVProjects.organization AS ProjectOrgID, 
CVOrgnization.name AS ProjectOrgName, 
CVProjects.segmentid AS ProjectSegmentID, 
CVSegments.name AS ProjectSegmentName, 
CVProjects.lead AS ProjectLead, 
CVProjectLead.UserName AS ProjectLeadName, 
CVProjectLead.XID AS ProjectLeadXID, 
CVProjects.working AS ProjectWorkingSponsorID, 
CVWorkingSponsor.UserName AS ProjectWorkingSponsorName, 
CVWorkingSponsor.XID AS ProjectWorkingSponsorXID, 
CVProjects.executive AS ProjectExecutiveSponsorID, 
CVExecutiveSponsor.UserName AS ProjectExecutiveSponsorName, 
CVExecutiveSponsor.XID AS ProjectExecutiveSponsorXID, 
CVProjects.technical AS ProjectTechnicalLeadID, 
CVTechnicalLead.UserName AS ProjectTechnicalLeadName, 
CVTechnicalLead.XID AS ProjectTechnicalLeadXID, 
CVProjects.engineer AS ProjectEngineerID, 
CVEngineer.UserName AS ProjectEngineerName, 
CVEngineer.XID AS ProjectEngineerXID, 
CVProjects.other AS ProjectOther, 
CVProjects.status AS ProjectStatusId, 
CASE WHEN CVProjects.status = - 2 THEN 'Cancelled' WHEN CVProjects.status = - 1 THEN 'Denied' WHEN CVProjects.status
                       = 0 THEN 'Pending' WHEN CVProjects.status = 1 THEN 'Approved' WHEN CVProjects.status = 2 THEN 'Active' WHEN CVProjects.status
                       = 3 THEN 'Completed' WHEN CVProjects.status = 5 THEN 'Hold' WHEN CVProjects.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS [ProjectStatus],
CVProjects.created AS ProjectCreated, 
CVProjects.modified AS ProjectModified, 
CVProjects.completed AS ProjectCompleted, 
CVProjects.deleted AS ProjectDeleted
FROM         dbo.cv_projects AS CVProjects LEFT OUTER JOIN
                      dbo.vwCVUsers AS cvUsers ON CVProjects.userid = cvUsers.userid LEFT OUTER JOIN
                      dbo.cv_organizations AS CVOrgnization ON CVProjects.organization = CVOrgnization.organizationid LEFT OUTER JOIN
                      dbo.cv_segments AS CVSegments ON CVProjects.segmentid = CVSegments.id LEFT OUTER JOIN
                      dbo.vwCVUsers AS CVProjectLead ON CVProjects.lead = CVProjectLead.userid LEFT OUTER JOIN
                      dbo.vwCVUsers AS CVWorkingSponsor ON CVProjects.working = CVWorkingSponsor.userid LEFT OUTER JOIN
                      dbo.vwCVUsers AS CVExecutiveSponsor ON CVProjects.executive = CVExecutiveSponsor.userid LEFT OUTER JOIN
                      dbo.vwCVUsers AS CVTechnicalLead ON CVProjects.technical = CVTechnicalLead.userid LEFT OUTER JOIN
                      dbo.vwCVUsers AS CVEngineer ON CVProjects.engineer = CVEngineer.userid

GO
/****** Object:  View [dbo].[vwCVServerDesignDetails]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCVServerDesignDetails] 
as
Select 
vwCVServerDetails.*,

/********** Project Information ***************/
dbo.vwCVProjects.ProjectID,
dbo.vwCVProjects.ProjectName,
dbo.vwCVProjects.ProjectNumber,
dbo.vwCVProjects.ProjectBaseDiscretion,
dbo.vwCVProjects.ProjectOrgName as ProjectPoftfolio,
dbo.vwCVProjects.ProjectLeadName as ProjectManagerName,
dbo.vwCVProjects.ProjectUserName as ProjectRequesterName ,
dbo.vwCVProjects.ProjectEngineerName as ProjectIntegrationEngineerName,
dbo.vwCVProjects.ProjectTechnicalLeadName  ,
UserIISResource.UserName as  ProjectIIResourceName ,
/********** End of Project Information ***************/

/********** Design config. ***************/
cvForeCastAnswers.implementation as ServerImplementationDate,
cvForeCastAnswers.completed  as ServerCompletionDate,
(select sum(cost) from  cv_forecast_acquisitions as cvForecastAcquisitions where cvForecastAcquisitions.modelid=cvModels.id and cvForecastAcquisitions.enabled=1 and cvForecastAcquisitions.deleted=0) as ServerAcquisitionsCost,
(select sum(cost) from  cv_forecast_operations as cvForecastOperations  where cvForecastOperations.modelid=cvModels.id and cvForecastOperations.enabled=1 and cvForecastOperations.deleted=0 ) as ServerOperationsCost,
cvModelsProperty.amp as AMPs,
cvModelsProperty.storage_ports as StoragePorts,
cvModelsProperty.network_ports as NetworkPorts,
CASE WHEN cvModelsProperty.type_blade =1 then 'Blade'
WHEN cvModelsProperty.type_physical =1 then 'Rack'
WHEN cvModelsProperty.type_vmware =1 then 'Virtual'
END  as ServerTypeCatagory,

CASE cvModels.grouping
WHEN 1 then 'Distributed'
WHEN 2 then 'Midrange'
ELSE ''
END as TypeGrouping,
cvForeCastAnswers.AppName as ServerApplicationName,
cvForeCastAnswers.AppCode as ServerApplicationCode,
UserAppContact.UserName as ServerClientContact,
UserPrimaryContact.UserName as ServerPrimaryContact,
UserAdminContact.UserName as ServerAdminContact,

/*Question Operating System */
cast((Select Response from cv_forecast_answers_Platform cvForeCastAnswersPlatform 
INNER JOIN cv_Forecast_responses cvForecastResponses
ON cvForeCastAnswersPlatform.responseid = cvForecastResponses.id
where cvForeCastAnswersPlatform.questionid=22 and cvForeCastAnswersPlatform.deleted=0  and cvForeCastAnswersPlatform.answerid = ServerForeCastAnswerId) as varchar(MAX))as QueAnsOS,
/*High availability method */
cast((Select Response from cv_forecast_answers_Platform cvForeCastAnswersPlatform 
INNER JOIN cv_Forecast_responses cvForecastResponses
ON cvForeCastAnswersPlatform.responseid = cvForecastResponses.id
where cvForeCastAnswersPlatform.questionid=5 and cvForeCastAnswersPlatform.deleted=0  and cvForeCastAnswersPlatform.answerid = ServerForeCastAnswerId) as varchar(MAX)) as QueAnsHighAvailabilityMethod,

/*Disaster recovert requirements */
cast((Select Response from cv_forecast_answers_Platform cvForeCastAnswersPlatform 
INNER JOIN cv_Forecast_responses cvForecastResponses
ON cvForeCastAnswersPlatform.responseid = cvForecastResponses.id
where cvForeCastAnswersPlatform.questionid=8 and cvForeCastAnswersPlatform.deleted=0  and cvForeCastAnswersPlatform.answerid = ServerForeCastAnswerId) as varchar(MAX)) as QueAnsRTO,
 
/*Type Of Recovery */
CAST((Select Response from cv_forecast_answers_Platform cvForeCastAnswersPlatform 
INNER JOIN cv_Forecast_responses cvForecastResponses
ON cvForeCastAnswersPlatform.responseid = cvForecastResponses.id
where cvForeCastAnswersPlatform.questionid=10 and cvForeCastAnswersPlatform.deleted=0  and cvForeCastAnswersPlatform.answerid = ServerForeCastAnswerId) as varchar(MAX)) as QueAnsTypeOfRecovery,
/********** End of Design config. ***************/
/********** birth cert. ***************/
cvForeCastAnswers.name  as ServerDesignNickName,
(SELECT cvaHBA.Name + ', ' 
   FROM ClearViewAsset.dbo.cva_hba cvaHBA 
		WHERE cvaHBA.assetid =vwCVServerDetails.ServerAssetID 
  FOR XML PATH('')
  ) AS ServerWWPortNames,

(select top 1 /*cvServerIPs.Id,cvServerIPs.ServerId,*/
cast(isnull(cvIPAddresses.add1,'')as varchar)+'.'+
cast(isnull(cvIPAddresses.add2,'')as varchar)+'.'+
cast(isnull(cvIPAddresses.add3,'') as varchar)+'.'+
cast(isnull(cvIPAddresses.add4,'')as varchar) as ServerIPAddress
FROM clearview.dbo.cv_servers_ips cvServerIPs
LEFT OUTER JOIN ClearViewIP.dbo.cv_ip_addresses cvIPAddresses
ON cvServerIPs.ipaddressid=cvIPAddresses.id 
AND cvServerIPs.deleted=0 And cvServerIPs.final =1 and cvIPAddresses.deleted=0
AND cvServerIPs.ServerId=vwCVServerDetails.ServerID) as ServerIPAddress,

'' as ServerClusterName,
'' as ServerConsistencyGroup,
/********** end of birth cert. ***************/
/********** Backup config. ***************/
cvRecoveryLocations.Name as ServerRecoveryLocation,
CASE 
	WHEN cvForeCastAnswersBackup.Daily=1 then 'Daily'
	WHEN cvForeCastAnswersBackup.weekly=1 then 'Weekly'
	WHEN cvForeCastAnswersBackup.monthly=1 then 'Monthly'
END ServerBackupFrequency,
(isnull(cvForeCastAnswersBackup.time_hour,'') + isnull(cvForeCastAnswersBackup.time_switch,'') )as ServerBackupStartTime,
cvForeCastAnswersBackup.start_date as ServerBackupStartDate,
cvForeCastAnswersBackup.average_one  as ServerAvgSizeOfOneTypicalDataFile,
cvForeCastAnswersBackup.documentation  as ServerProductTurnOverDocumentation,
/********** End of Backup config. ***************/

/* Other Info */
isnull((Select Sum(cvForecastStreetValues.cost) from ClearView.dbo.cv_forecast_street_values as cvForecastStreetValues 
where cvForecastStreetValues.ModelId=vwCVServerDetails.ServerModelID and cvForecastStreetValues.enabled=1 and cvForecastStreetValues.deleted=0
),0) as StreetValues

/*End of other info */
FROM
/* Project Info */
 dbo.vwCVProjectRequests 
INNER JOIN  dbo.vwCVProjects ON dbo.vwCVProjectRequests.ProjectID = dbo.vwCVProjects.ProjectID 
INNER JOIN dbo.vwCVServerDetails ON dbo.vwCVProjectRequests.RequestID = dbo.vwCVServerDetails.RequestID
/* End of Project Info --vwCVServerDetails  */
INNER JOIN cv_forecast_answers cvForeCastAnswers  on vwCVServerDetails.ServerForeCastAnswerId =cvForeCastAnswers.ID
LEFT OUTER JOIN dbo.vwCVUsers  UserAppContact on UserAppContact.userid =cvForeCastAnswers.appcontact
LEFT OUTER JOIN dbo.vwCVUsers  UserPrimaryContact on UserPrimaryContact.userid =cvForeCastAnswers.admin1
LEFT OUTER JOIN dbo.vwCVUsers  UserAdminContact on UserAdminContact.userid =cvForeCastAnswers.admin2
/* Joins for ForeCastAnswer Backup */
LEFT OUTER JOIN dbo.cv_forecast_answers_backup cvForeCastAnswersBackup
on vwCVServerDetails.ServerForeCastAnswerId =cvForeCastAnswersBackup.answerid and cvForeCastAnswersBackup.deleted=0
LEFT OUTER JOIN dbo.cv_recovery_locations cvRecoveryLocations
on cvForeCastAnswersBackup.recoveryid =cvRecoveryLocations.ID and cvRecoveryLocations.deleted=0

/* For IIS ResourceName */
LEFT OUTER JOIN dbo.cv_ondemand_tasks_pending  cvOnDemandTasksPending
	ON  cvForeCastAnswers.ID= cvOnDemandTasksPending.answerid and cvOnDemandTasksPending.deleted=0
LEFT OUTER JOIN dbo.cv_resource_requests_workflow cvResourceRequestsWorkflow
	ON cvOnDemandTasksPending.resourceid =cvResourceRequestsWorkflow.ID and cvResourceRequestsWorkflow.deleted=0
LEFT OUTER JOIN dbo.vwCVUsers  UserIISResource on cvResourceRequestsWorkflow.userid =UserIISResource.userid

/* For Model Property Details */
LEFT OUTER JOIN cv_models_property as cvModelsProperty 
	ON  cvModelsProperty.id =vwCVServerDetails.ServerModelID
	 AND cvModelsProperty.deleted=0
LEFT OUTER JOIN clearview.dbo.cv_models cvModels
	ON cvModelsProperty.modelid=cvModels.id AND  cvModels.enabled = 1 	AND cvModels.DELETED=0

GO
/****** Object:  View [dbo].[vwCVServerDetails]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCVServerDetails]
AS
/* SERVERS */
SELECT
	cvServer.id As ServerID,
	cvForeCast.requestid as RequestID,
	cvServerNames.prefix1 + cvServerNames.prefix2 + 
	cvServerNames.sitecode + cvServerNames.name1 + 
	cvServerNames.name2  As ServerName,

	cvServer.created As ServerCommissionDate,
	cvServersAssets.assetid As ServerAssetID,
	
	cvServer.modelid as ServerModelID,
	CASE
		WHEN cvModelsProperty.name IS NULL THEN 'Unknown Server'
		ELSE cvModelsProperty.name
	END As ServerModel,
	cvTypes.ID as ServerTypeID,
	cvTypes.Name as ServerTypeName,

	cvForeCastAnswers.id as ServerForeCastAnswerId,
	cvForeCastAnswers.environmentid as ServerEnvironmentID,
	cvEnvironment.name As ServerEnvironment,
	cvOperatingSystems.name As ServerOperatingSystem,
	cvForeCastAnswers.classid as ServerClassID,
	cvClasss.name As ServerClass,
	isnull(cvForeCastAnswers.quantity,0) as ServerQuantity,
	isnull(cvForeCastAnswers.recovery_number,0) as ServerRecoveryNumber,
	cvServerNames.created As ServerNccBuildDate,
	cvForeCastAnswers.addressid as ServerLocationID,
	cvLocationAddress.name As ServerLocation,
	cvLocationState.name As ServerLocationState,
	cvLocationCity.name As ServerLocationCity,
	cvDomains.name As ServerWorkgroup,
	cvaAssets.serial As ServerSerialNumber,
	cvaAssets.asset As ServerAssetTag,
	cvRooms.name As ServerRoom,
	cvRacks.name As ServerRack,
	cvPlatforms.name As ServerPlatform,
	CASE 
		WHEN cvModelsProperty.fabric = 0 THEN 'Cisco'
		ELSE 'Brocade' 
	END AS ServerStorageType,
	cvForeCastAnswers.mnemonicid as ServerMnemonicId,

	cvServer.csmconfigid as ServerCSMConfigID,
	cvServer.clusterid as ServerClusterID,
	cvServer.number as ServerNumber,

	cvServer.SPID as ServerServicePackID,
	(Select name from dbo.cv_service_packs cvServicePacks where cvServicePacks.ID=cvServer.SPID) as ServerServicePackName,
	
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.ID) as ServerComponentID,

	(SELECT TOP 1 name from clearview.dbo.cv_servername_components 
	WHERE cv_servername_components.id=
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.id)) as ServerComponentName,

	cvServer.domainid as ServerDomainID,
	cvDomains.Name as ServerDomainName,
	cvaStatus.Status as AssetStatusId,
	cvaStatusList.Name as AssetStatusName,
	

	cvaServer.dummy_name AS ServerDummyName,
	cvaServer.ilo AS ServerILO,
	

		CASE cvServer.DR
		When 0 then ''
		When 1 then 
			CASE dr_exist
				WHEN 0 then cvServerNames.prefix1 + cvServerNames.prefix2 + 
							cvServerNames.sitecode + cvServerNames.name1 + 
							cvServerNames.name2 +'-DR'
				WHEN 1 then cvServer.dr_name
			END
		END as ServerDRName,

		CASE 
			WHEN Exists(Select cvStorageLuns.Replicated as Replicated from cv_Storage_luns cvStorageLuns 
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1
				UNION ALL
				Select cvStorageLuns.Replicated as Replicated 
				from cv_storage_mount_points as cvStorageMountPoints INNER JOIN 
				cv_Storage_luns cvStorageLuns ON cvStorageMountPoints.lunid=cvStorageLuns.ID
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1) 
				THEN  'Yes'
			ELSE 'No'
		END as Replicated,

	(Select factory_code from cv_mnemonics where id =cvForeCastAnswers.mnemonicid) as ServerMnemonicCode,
	
	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityProd,

		(ISNULL((select sum(size_QA) from cv_storage_luns 
			   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
			   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
			   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
		+
		ISNULL((select sum(size_QA) from cv_storage_mount_points 
				 where cv_storage_mount_points.lunid  IN 
					(SELECT cv_storage_luns.id FROM cv_storage_luns 
					where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
					AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
					AND cv_storage_luns.deleted=0) 
				AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityQA,

	(ISNULL((select sum(size_test) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+

	ISNULL((select sum(size_test) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size_test>=0 and cv_storage_mount_points.deleted=0 ),0)) as ServerCapacityTest
	,
	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)*isnull(cvModelsProperty.replicate_times,0)) 	as ServerCapacityReplicated


	
FROM cv_servers cvServer
	INNER JOIN cv_forecast_answers cvForeCastAnswers
		ON cvServer.answerid = cvForeCastAnswers.id
		And cvForeCastAnswers.deleted = 0
	INNER JOIN cv_forecast cvForeCast
		ON cvForeCastAnswers.forecastid = cvForeCast.id
		And cvForeCast.deleted = 0
	INNER JOIN cv_servernames cvServerNames	
		ON cvServer.nameid = cvServerNames.id
		And cvServerNames.deleted = 0
	INNER JOIN cv_environment cvEnvironment
		ON cvForeCastAnswers.environmentid = cvEnvironment.id
		And cvEnvironment.deleted = 0
	INNER JOIN cv_classs cvClasss
		ON cvForeCastAnswers.classid = cvClasss.id
		And cvClasss.enabled = 1
		And cvClasss.deleted = 0
	INNER JOIN cv_operating_systems cvOperatingSystems
		ON cvServer.osid = cvOperatingSystems.id
		And cvOperatingSystems.enabled = 1
		And cvOperatingSystems.deleted = 0
	INNER JOIN cv_models_property cvModelsProperty
		ON cvServer.modelid = cvModelsProperty.id
		And cvModelsProperty.enabled = 1
		And cvModelsProperty.deleted = 0
	INNER JOIN cv_location_address cvLocationAddress
		ON cvForeCastAnswers.addressid = cvLocationAddress.id
		And cvLocationAddress.enabled = 1
		And cvLocationAddress.deleted = 0
	INNER JOIN cv_location_city cvLocationCity
		ON cvLocationAddress.cityid = cvLocationCity.id
		And cvLocationCity.enabled = 1
		And cvLocationCity.deleted = 0
	INNER JOIN cv_location_state cvLocationState
		ON cvLocationCity.stateid = cvLocationState.id
		And cvLocationState.enabled = 1
		And cvLocationState.deleted = 0
	INNER JOIN cv_platforms cvPlatforms
		ON cvForeCastAnswers.platformid = cvPlatforms.platformid
		And cvPlatforms.enabled = 1
		And cvPlatforms.deleted = 0
	INNER JOIN cv_domains cvDomains
		ON cvServer.domainid = cvDomains.id
		And cvDomains.enabled = 1
		And cvDomains.deleted = 0
	INNER JOIN ClearView.dbo.cv_servers_assets cvServersAssets
		ON cvServer.id = cvServersAssets.serverid
		And cvServersAssets.deleted = 0
		And cvServersAssets.latest = 1
	INNER JOIN ClearViewAsset.dbo.cva_assets cvaAssets
		ON cvServersAssets.assetid = cvaAssets.id
		And cvaAssets.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_server cvaServer
		ON cvServersAssets.assetid = cvaServer.assetid
		And cvaServer.deleted = 0
	INNER JOIN ClearView.dbo.cv_rooms cvRooms
		ON cvaServer.roomid = cvRooms.id
		And cvRooms.enabled = 1
		And cvRooms.deleted = 0
	INNER JOIN ClearView.dbo.cv_racks cvRacks
		ON cvaServer.rackid = cvRacks.id
		And cvRacks.enabled = 1
		And cvRacks.deleted = 0

	INNER JOIN ClearViewAsset.dbo.cva_status cvaStatus
		ON cvaAssets.id =cvaStatus.assetid
		And cvaStatus.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_status_list  cvaStatusList
		ON cvaStatus.status =cvaStatusList.id
		And cvaStatusList.deleted = 0

		LEFT OUTER JOIN clearview.dbo.cv_models cvModels
		ON cvModelsProperty.modelid=cvModels.id 
		AND  cvModels.enabled = 1 	AND cvModels.deleted = 0

		LEFT OUTER JOIN  ClearView.dbo.cv_types as cvTypes ON
					cvModels.typeid = cvTypes.id AND cvTypes.enabled = 1 
					AND cvTypes.deleted = 0
WHERE
	cvServer.deleted = 0
	AND cvServer.pnc = 0
/* END OF SERVERS */
UNION ALL
/* BLADES */
SELECT
	cvServer.id As ServerID,
	cvForeCast.requestid,
	cvServerNames.prefix1 + cvServerNames.prefix2 + 
	cvServerNames.sitecode + cvServerNames.name1 + 
	cvServerNames.name2  As ServerName,
	cvServer.created As ServerCommissionDate,
	cvServersAssets.assetid As ServerAssetID,
	cvServer.modelid as ServerModelID,
	CASE
		WHEN cvModelsProperty.name IS NULL THEN 'Unknown Server'
		ELSE cvModelsProperty.name
	END As ServerModel,
	cvTypes.ID as ServerTypeID,
	cvTypes.Name as ServerTypeName,


	cvForeCastAnswers.id as ServerForeCastAnswerId,
	cvForeCastAnswers.environmentid as ServerEnvironmentID,
	cvEnvironment.name As ServerEnvironment,
	cvOperatingSystems.name As ServerOperatingSystem,
	cvForeCastAnswers.classid as ServerClassID,
	cvClasss.name As ServerClass,
	isnull(cvForeCastAnswers.quantity,0) as ServerQuantity,
	isnull(cvForeCastAnswers.recovery_number,0) as ServerRecoveryNumber,
	cvServerNames.created As ServerNccBuildDate,
	cvForeCastAnswers.addressid as ServerLocationID,
	cvLocationAddress.name As ServerLocation,
	cvLocationState.name As ServerLocationState,
	cvLocationCity.name As ServerLocationCity,
	cvDomains.name As ServerWorkgroup,
	cvaAssets.serial  As ServerSerialNumber,
	cvaAssets.asset As ServerAssetTag,
	cvRooms.name As ServerRoom,
	cvRacks.name As ServerRack,
	cvPlatforms.name As ServerPlatform,
	CASE 
		WHEN cvModelsProperty.fabric = 0 THEN 'Cisco'
		ELSE 'Brocade' 
	END AS ServerStorageType,
	
	cvForeCastAnswers.mnemonicid as ServerMnemonicId,

	cvServer.csmconfigid as ServerCSMConfigID,
	cvServer.clusterid as ServerClusterID,
	cvServer.number as ServerNumber,

	cvServer.SPID as ServerServicePackID,
	(Select name from dbo.cv_service_packs cvServicePacks where cvServicePacks.ID=cvServer.SPID) as ServerServicePackName,
	
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.ID) as ServerComponentID,

	(SELECT TOP 1 name from clearview.dbo.cv_servername_components 
	WHERE cv_servername_components.id=
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.id)) as ServerComponentName,

	cvServer.domainid as ServerDomainID,
	cvDomains.Name as ServerDomainName,
	cvaStatus.Status as AssetStatusId,
	cvaStatusList.Name as AssetStatusName,


	cvaBlade.dummy_name AS ServerDummyName,
	cvaBlade.ilo AS ServerILO,

		CASE cvServer.DR
		When 0 then ''
		When 1 then 
			CASE dr_exist
				WHEN 0 then cvServerNames.prefix1 + cvServerNames.prefix2 + 
							cvServerNames.sitecode + cvServerNames.name1 + 
							cvServerNames.name2 +'-DR'
				WHEN 1 then cvServer.dr_name
			END
		END as ServerDRName,

		CASE 
			WHEN Exists(Select cvStorageLuns.Replicated as Replicated from cv_Storage_luns cvStorageLuns 
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1
				UNION ALL
				Select cvStorageLuns.Replicated as Replicated 
				from cv_storage_mount_points as cvStorageMountPoints INNER JOIN 
				cv_Storage_luns cvStorageLuns ON cvStorageMountPoints.lunid=cvStorageLuns.ID
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1) 
				THEN  'Yes'
			ELSE 'No'
		END as Replicated,

	(Select factory_code from cv_mnemonics where id =cvForeCastAnswers.mnemonicid) as ServerMnemonicCode,

	
	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityProd,

		(ISNULL((select sum(size_QA) from cv_storage_luns 
			   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
			   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
			   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
		+
		ISNULL((select sum(size_QA) from cv_storage_mount_points 
				 where cv_storage_mount_points.lunid  IN 
					(SELECT cv_storage_luns.id FROM cv_storage_luns 
					where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
					AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
					AND cv_storage_luns.deleted=0) 
				AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityQA,


	(ISNULL((select sum(size_test) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+

	ISNULL((select sum(size_test) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size_test>=0 and cv_storage_mount_points.deleted=0 ),0)) as ServerCapacityTest
,
	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)*isnull(cvModelsProperty.replicate_times,0)) 	as ServerCapacityReplicated

FROM cv_servers cvServer
	INNER JOIN cv_forecast_answers cvForeCastAnswers
		ON cvServer.answerid = cvForeCastAnswers.id
		And cvForeCastAnswers.deleted = 0
	INNER JOIN cv_forecast cvForeCast
		ON cvForeCastAnswers.forecastid = cvForeCast.id
		And cvForeCast.deleted = 0
	INNER JOIN cv_servernames cvServerNames	
		ON cvServer.nameid = cvServerNames.id
		And cvServerNames.deleted = 0
	INNER JOIN cv_environment cvEnvironment
		ON cvForeCastAnswers.environmentid = cvEnvironment.id
		And cvEnvironment.deleted = 0
	INNER JOIN cv_classs cvClasss
		ON cvForeCastAnswers.classid = cvClasss.id
		And cvClasss.enabled = 1
		And cvClasss.deleted = 0
	INNER JOIN cv_operating_systems cvOperatingSystems
		ON cvServer.osid = cvOperatingSystems.id
		And cvOperatingSystems.enabled = 1
		And cvOperatingSystems.deleted = 0
	INNER JOIN cv_models_property cvModelsProperty
		ON cvServer.modelid = cvModelsProperty.id
		And cvModelsProperty.enabled = 1
		And cvModelsProperty.deleted = 0
	INNER JOIN cv_location_address cvLocationAddress
		ON cvForeCastAnswers.addressid = cvLocationAddress.id
		And cvLocationAddress.enabled = 1
		And cvLocationAddress.deleted = 0
	INNER JOIN cv_location_city cvLocationCity
		ON cvLocationAddress.cityid = cvLocationCity.id
		And cvLocationCity.enabled = 1
		And cvLocationCity.deleted = 0
	INNER JOIN cv_location_state cvLocationState
		ON cvLocationCity.stateid = cvLocationState.id
		And cvLocationState.enabled = 1
		And cvLocationState.deleted = 0
	INNER JOIN cv_platforms cvPlatforms
		ON cvForeCastAnswers.platformid = cvPlatforms.platformid
		And cvPlatforms.enabled = 1
		And cvPlatforms.deleted = 0
	INNER JOIN cv_domains cvDomains
		ON cvServer.domainid = cvDomains.id
		And cvDomains.enabled = 1
		And cvDomains.deleted = 0
	INNER JOIN ClearView.dbo.cv_servers_assets cvServersAssets
		ON cvServer.id = cvServersAssets.serverid
		And cvServersAssets.deleted = 0
		And cvServersAssets.latest = 1
	INNER JOIN ClearViewAsset.dbo.cva_assets cvaAssets
		ON cvServersAssets.assetid = cvaAssets.id
		And cvaAssets.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_blades cvaBlade
		ON cvServersAssets.assetid = cvaBlade.assetid
		And cvaBlade.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_enclosures cvaEnclosure
		ON cvaBlade.enclosureid = cvaEnclosure.assetid
		And cvaEnclosure.deleted = 0
	INNER JOIN ClearView.dbo.cv_rooms cvRooms
		ON cvaEnclosure.roomid = cvRooms.id
		And cvRooms.enabled = 1
		And cvRooms.deleted = 0
	INNER JOIN ClearView.dbo.cv_racks cvRacks
		ON cvaEnclosure.rackid = cvRacks.id
		And cvRacks.enabled = 1
		And cvRacks.deleted = 0

	INNER JOIN ClearViewAsset.dbo.cva_status cvaStatus
		ON cvaAssets.id =cvaStatus.assetid
		And cvaStatus.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_status_list  cvaStatusList
		ON cvaStatus.status =cvaStatusList.id
		And cvaStatusList.deleted = 0

	LEFT OUTER JOIN clearview.dbo.cv_models cvModels
		ON cvModelsProperty.modelid=cvModels.id 
		AND  cvModels.enabled = 1 	AND cvModels.deleted = 0

	LEFT OUTER JOIN  ClearView.dbo.cv_types as cvTypes 
		ON cvModels.typeid = cvTypes.id AND cvTypes.enabled = 1 
					AND cvTypes.deleted = 0 

WHERE
	cvServer.deleted = 0
	AND cvServer.pnc = 0
/* END OF BLADES */
UNION ALL
/* VM WARE */
SELECT
	cvServer.id As ServerID,
	cvForeCast.requestid as RequestID,
	cvServerNames.prefix1 + cvServerNames.prefix2 + 
	cvServerNames.sitecode + cvServerNames.name1 + 
	cvServerNames.name2  As ServerName,
	cvServer.created As ServerCommissionDate,
	cvServersAssets.assetid As ServerAssetID,
	
	cvServer.modelid as ServerModelID,
	CASE
		WHEN cvModelsProperty.name IS NULL THEN 'Unknown Server'
		ELSE cvModelsProperty.name
	END As ServerModel,


	cvTypes.ID as ServerTypeID,
	cvTypes.Name as ServerTypeName,

	cvForeCastAnswers.id as ServerForeCastAnswerId,
	cvForeCastAnswers.environmentid as ServerEnvironmentID,
	cvEnvironment.name As ServerEnvironment,
	cvOperatingSystems.name As ServerOperatingSystem,
	cvForeCastAnswers.classid as ServerClassID,
	cvClasss.name As ServerClass,
	isnull(cvForeCastAnswers.quantity,0) as ServerQuantity,
	isnull(cvForeCastAnswers.recovery_number,0) as ServerRecoveryNumber,
	cvServerNames.created As ServerNccBuildDate,
	cvForeCastAnswers.addressid as ServerLocationID,
	cvLocationAddress.name As ServerLocation,
	cvLocationState.name As ServerLocationState,
	cvLocationCity.name As ServerLocationCity,
	cvDomains.name As ServerWorkgroup,
	cvaAssets.serial As ServerSerialNumber,
	cvaAssets.asset As ServerAssetTag,
	'N/A' As ServerRoom,
	'N/A' As ServerRack,
	cvPlatforms.name As ServerPlatform,
	CASE 
		WHEN cvModelsProperty.fabric = 0 THEN 'Cisco'
		ELSE 'Brocade' 
	END AS ServerStorageType,

	cvForeCastAnswers.mnemonicid as ServerMnemonicId,

	cvServer.csmconfigid as ServerCSMConfigID,
	cvServer.clusterid as ServerClusterID,
	cvServer.number as ServerNumber,

	cvServer.SPID as ServerServicePackID,
	(Select name from dbo.cv_service_packs cvServicePacks where cvServicePacks.ID=cvServer.SPID) as ServerServicePackName,
	
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.ID) as ServerComponentID,

	(SELECT TOP 1 name from clearview.dbo.cv_servername_components 
	WHERE cv_servername_components.id=
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.id)) as ServerComponentName,

	cvServer.domainid as ServerDomainID,
	cvDomains.Name as ServerDomainName,
	cvaStatus.Status as AssetStatusId,
	cvaStatusList.Name as AssetStatusName,


	'N/A' AS ServerDummyName,
	'N/A' AS ServerILO,

		CASE cvServer.DR
		When 0 then ''
		When 1 then 
			CASE dr_exist
				WHEN 0 then cvServerNames.prefix1 + cvServerNames.prefix2 + 
							cvServerNames.sitecode + cvServerNames.name1 + 
							cvServerNames.name2 +'-DR'
				WHEN 1 then cvServer.dr_name
			END
		END as ServerDRName,

		CASE 
			WHEN Exists(Select cvStorageLuns.Replicated as Replicated from cv_Storage_luns cvStorageLuns 
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1
				UNION ALL
				Select cvStorageLuns.Replicated as Replicated 
				from cv_storage_mount_points as cvStorageMountPoints INNER JOIN 
				cv_Storage_luns cvStorageLuns ON cvStorageMountPoints.lunid=cvStorageLuns.ID
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1) 
				THEN  'Yes'
			ELSE 'No'
		END as Replicated,

	(Select factory_code from cv_mnemonics where id =cvForeCastAnswers.mnemonicid) as ServerMnemonicCode,

	
	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityProd,

		(ISNULL((select sum(size_QA) from cv_storage_luns 
			   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
			   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
			   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
		+
		ISNULL((select sum(size_QA) from cv_storage_mount_points 
				 where cv_storage_mount_points.lunid  IN 
					(SELECT cv_storage_luns.id FROM cv_storage_luns 
					where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
					AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
					AND cv_storage_luns.deleted=0) 
				AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityQA,


	(ISNULL((select sum(size_test) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+

	ISNULL((select sum(size_test) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size_test>=0 and cv_storage_mount_points.deleted=0 ),0)) as ServerCapacityTest
,
	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)*isnull(cvModelsProperty.replicate_times,0)) 	as ServerCapacityReplicated

FROM cv_servers cvServer
	INNER JOIN cv_forecast_answers cvForeCastAnswers
		ON cvServer.answerid = cvForeCastAnswers.id
		And cvForeCastAnswers.deleted = 0
	INNER JOIN cv_forecast cvForeCast
		ON cvForeCastAnswers.forecastid = cvForeCast.id
		And cvForeCast.deleted = 0
	INNER JOIN cv_servernames cvServerNames	
		ON cvServer.nameid = cvServerNames.id
		And cvServerNames.deleted = 0
	INNER JOIN cv_environment cvEnvironment
		ON cvForeCastAnswers.environmentid = cvEnvironment.id
		And cvEnvironment.deleted = 0
	INNER JOIN cv_classs cvClasss
		ON cvForeCastAnswers.classid = cvClasss.id
		And cvClasss.enabled = 1
		And cvClasss.deleted = 0
	INNER JOIN cv_operating_systems cvOperatingSystems
		ON cvServer.osid = cvOperatingSystems.id
		And cvOperatingSystems.enabled = 1
		And cvOperatingSystems.deleted = 0
	INNER JOIN cv_models_property cvModelsProperty
		ON cvServer.modelid = cvModelsProperty.id
		And cvModelsProperty.enabled = 1
		And cvModelsProperty.deleted = 0
	INNER JOIN cv_location_address cvLocationAddress
		ON cvForeCastAnswers.addressid = cvLocationAddress.id
		And cvLocationAddress.enabled = 1
		And cvLocationAddress.deleted = 0
	INNER JOIN cv_location_city cvLocationCity
		ON cvLocationAddress.cityid = cvLocationCity.id
		And cvLocationCity.enabled = 1
		And cvLocationCity.deleted = 0
	INNER JOIN cv_location_state cvLocationState
		ON cvLocationCity.stateid = cvLocationState.id
		And cvLocationState.enabled = 1
		And cvLocationState.deleted = 0
	INNER JOIN cv_platforms cvPlatforms
		ON cvForeCastAnswers.platformid = cvPlatforms.platformid
		And cvPlatforms.enabled = 1
		And cvPlatforms.deleted = 0
	INNER JOIN cv_domains cvDomains
		ON cvServer.domainid = cvDomains.id
		And cvDomains.enabled = 1
		And cvDomains.deleted = 0
	INNER JOIN ClearView.dbo.cv_servers_assets cvServersAssets
		ON cvServer.id = cvServersAssets.serverid
		And cvServersAssets.deleted = 0
		And cvServersAssets.latest = 1
	INNER JOIN ClearViewAsset.dbo.cva_assets cvaAssets
		ON cvServersAssets.assetid = cvaAssets.id
		And cvaAssets.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_guests cvaServer
		ON cvServersAssets.assetid = cvaServer.assetid
		And cvaServer.deleted = 0

	INNER JOIN ClearViewAsset.dbo.cva_status cvaStatus
		ON cvaAssets.id =cvaStatus.assetid
		And cvaStatus.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_status_list  cvaStatusList
		ON cvaStatus.status =cvaStatusList.id
		And cvaStatusList.deleted = 0

	LEFT OUTER JOIN clearview.dbo.cv_models cvModels
		ON cvModelsProperty.modelid=cvModels.id 
		AND  cvModels.enabled = 1 	AND cvModels.deleted = 0

	LEFT OUTER JOIN  ClearView.dbo.cv_types as cvTypes 
		ON cvModels.typeid = cvTypes.id AND cvTypes.enabled = 1 
					AND cvTypes.deleted = 0 

WHERE
	cvServer.deleted = 0
	AND cvServer.pnc = 0
/*END OF VM WARE */
UNION ALL
/* SERVER PNC */
SELECT
	cvServer.id As ServerID,
	cvForeCast.requestid,
	cvServerNames.os + cvServerNames.location + cvServerNames.mnemonic + cvServerNames.environment + cvServerNames.name1 + cvServerNames.name2 + cvServerNames.func + cvServerNames.specific AS ServerName,
	cvServer.created As ServerCommissionDate,
	cvServersAssets.assetid As ServerAssetID,
	cvServer.modelid as ServerModelID,
	CASE
		WHEN cvModelsProperty.name IS NULL THEN 'Unknown Server'
		ELSE cvModelsProperty.name
	END As ServerModel,
	
	cvTypes.ID as ServerTypeID,
	cvTypes.Name as ServerTypeName,

	cvForeCastAnswers.id as ServerForeCastAnswerId,
	cvForeCastAnswers.environmentid as ServerEnvironmentID,
	cvEnvironment.name As ServerEnvironment,
	cvOperatingSystems.name As ServerOperatingSystem,
	cvForeCastAnswers.classid as ServerClassID,
	cvClasss.name As ServerClass,
	isnull(cvForeCastAnswers.quantity,0) as ServerQuantity,
	isnull(cvForeCastAnswers.recovery_number,0) as ServerRecoveryNumber,
	cvServerNames.created As ServerNccBuildDate,
	cvForeCastAnswers.addressid as ServerLocationID,
	cvLocationAddress.name As ServerLocation,
	cvLocationState.name As ServerLocationState,
	cvLocationCity.name As ServerLocationCity,
	cvDomains.name As ServerWorkgroup,
	cvaAssets.serial  As ServerSerialNumber,
	cvaAssets.asset As ServerAssetTag,
	cvRooms.name As ServerRoom,
	cvRacks.name As ServerRack,
	cvPlatforms.name As ServerPlatform,
	CASE 
		WHEN cvModelsProperty.fabric = 0 THEN 'Cisco'
		ELSE 'Brocade' 
	END AS ServerStorageType,


	cvForeCastAnswers.mnemonicid as ServerMnemonicId,


	cvServer.csmconfigid as ServerCSMConfigID,
	cvServer.clusterid as ServerClusterID,
	cvServer.number as ServerNumber,

	cvServer.SPID as ServerServicePackID,
	(Select name from dbo.cv_service_packs cvServicePacks where cvServicePacks.ID=cvServer.SPID) as ServerServicePackName,
	
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.ID) as ServerComponentID,

	(SELECT TOP 1 name from clearview.dbo.cv_servername_components 
	WHERE cv_servername_components.id=
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.id)) as ServerComponentName,

	cvServer.domainid as ServerDomainID,
	cvDomains.Name as ServerDomainName,
	cvaStatus.Status as AssetStatusId,
	cvaStatusList.Name as AssetStatusName,


	cvaServer.dummy_name AS ServerDummyName,
	cvaServer.ilo AS ServerILO,

		CASE cvServer.DR
		When 0 then ''
		When 1 then 
			CASE dr_exist
				WHEN 0 then cvServerNames.os + cvServerNames.location + cvServerNames.mnemonic + cvServerNames.environment + cvServerNames.name1 + cvServerNames.name2 + cvServerNames.func + cvServerNames.specific +'-DR'
				WHEN 1 then cvServer.dr_name
			END
		END as ServerDRName,

		CASE 
			WHEN Exists(Select cvStorageLuns.Replicated as Replicated from cv_Storage_luns cvStorageLuns 
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1
				UNION ALL
				Select cvStorageLuns.Replicated as Replicated 
				from cv_storage_mount_points as cvStorageMountPoints INNER JOIN 
				cv_Storage_luns cvStorageLuns ON cvStorageMountPoints.lunid=cvStorageLuns.ID
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1) 
				THEN  'Yes'
			ELSE 'No'
		END as Replicated,


	(Select factory_code from cv_mnemonics where id =cvForeCastAnswers.mnemonicid) as ServerMnemonicCode,
	
	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityProd,


		(ISNULL((select sum(size_QA) from cv_storage_luns 
			   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
			   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
			   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
		+
		ISNULL((select sum(size_QA) from cv_storage_mount_points 
				 where cv_storage_mount_points.lunid  IN 
					(SELECT cv_storage_luns.id FROM cv_storage_luns 
					where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
					AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
					AND cv_storage_luns.deleted=0) 
				AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityQA,



	(ISNULL((select sum(size_test) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+

	ISNULL((select sum(size_test) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size_test>=0 and cv_storage_mount_points.deleted=0 ),0)) as ServerCapacityTest

,
	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)*isnull(cvModelsProperty.replicate_times,0)) 	as ServerCapacityReplicated

FROM cv_servers cvServer
	INNER JOIN cv_forecast_answers cvForeCastAnswers
		ON cvServer.answerid = cvForeCastAnswers.id
		And cvForeCastAnswers.deleted = 0
	INNER JOIN cv_forecast cvForeCast
		ON cvForeCastAnswers.forecastid = cvForeCast.id
		And cvForeCast.deleted = 0
	INNER JOIN cv_servernames_factory cvServerNames	
		ON cvServer.nameid = cvServerNames.id
		And cvServerNames.deleted = 0
	INNER JOIN cv_environment cvEnvironment
		ON cvForeCastAnswers.environmentid = cvEnvironment.id
		And cvEnvironment.deleted = 0
	INNER JOIN cv_classs cvClasss
		ON cvForeCastAnswers.classid = cvClasss.id
		And cvClasss.enabled = 1
		And cvClasss.deleted = 0
	INNER JOIN cv_operating_systems cvOperatingSystems
		ON cvServer.osid = cvOperatingSystems.id
		And cvOperatingSystems.enabled = 1
		And cvOperatingSystems.deleted = 0
	INNER JOIN cv_models_property cvModelsProperty
		ON cvServer.modelid = cvModelsProperty.id
		And cvModelsProperty.enabled = 1
		And cvModelsProperty.deleted = 0
	INNER JOIN cv_location_address cvLocationAddress
		ON cvForeCastAnswers.addressid = cvLocationAddress.id
		And cvLocationAddress.enabled = 1
		And cvLocationAddress.deleted = 0
	INNER JOIN cv_location_city cvLocationCity
		ON cvLocationAddress.cityid = cvLocationCity.id
		And cvLocationCity.enabled = 1
		And cvLocationCity.deleted = 0
	INNER JOIN cv_location_state cvLocationState
		ON cvLocationCity.stateid = cvLocationState.id
		And cvLocationState.enabled = 1
		And cvLocationState.deleted = 0
	INNER JOIN cv_platforms cvPlatforms
		ON cvForeCastAnswers.platformid = cvPlatforms.platformid
		And cvPlatforms.enabled = 1
		And cvPlatforms.deleted = 0
	INNER JOIN cv_domains cvDomains
		ON cvServer.domainid = cvDomains.id
		And cvDomains.enabled = 1
		And cvDomains.deleted = 0
	INNER JOIN ClearView.dbo.cv_servers_assets cvServersAssets
		ON cvServer.id = cvServersAssets.serverid
		And cvServersAssets.deleted = 0
		And cvServersAssets.latest = 1
	INNER JOIN ClearViewAsset.dbo.cva_assets cvaAssets
		ON cvServersAssets.assetid = cvaAssets.id
		And cvaAssets.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_server cvaServer
		ON cvServersAssets.assetid = cvaServer.assetid
		And cvaServer.deleted = 0
	INNER JOIN ClearView.dbo.cv_rooms cvRooms
		ON cvaServer.roomid = cvRooms.id
		And cvRooms.enabled = 1
		And cvRooms.deleted = 0
	INNER JOIN ClearView.dbo.cv_racks cvRacks
		ON cvaServer.rackid = cvRacks.id
		And cvRacks.enabled = 1
		And cvRacks.deleted = 0

	INNER JOIN ClearViewAsset.dbo.cva_status cvaStatus
		ON cvaAssets.id =cvaStatus.assetid
		And cvaStatus.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_status_list  cvaStatusList
		ON cvaStatus.status =cvaStatusList.id
		And cvaStatusList.deleted = 0

	LEFT OUTER JOIN clearview.dbo.cv_models cvModels
		ON cvModelsProperty.modelid=cvModels.id 
		AND  cvModels.enabled = 1 	AND cvModels.deleted = 0

	LEFT OUTER JOIN  ClearView.dbo.cv_types as cvTypes 
		ON cvModels.typeid = cvTypes.id AND cvTypes.enabled = 1 
					AND cvTypes.deleted = 0 

WHERE
	cvServer.deleted = 0
	AND cvServer.pnc = 1
/* END OF SERVER PNC */
UNION ALL
/* BLADES PNC */
SELECT
	cvServer.id As ServerID,
	cvForeCast.requestid,
	cvServerNames.os + cvServerNames.location + cvServerNames.mnemonic + cvServerNames.environment + cvServerNames.name1 + cvServerNames.name2 + cvServerNames.func + cvServerNames.specific AS ServerName,
	cvServer.created As ServerCommissionDate,
	cvServersAssets.assetid As ServerAssetID,
	cvServer.modelid as ServerModelID,
	CASE
		WHEN cvModelsProperty.name IS NULL THEN 'Unknown Server'
		ELSE cvModelsProperty.name
	END As ServerModel,
	
	cvTypes.ID as ServerTypeID,
	cvTypes.Name as ServerTypeName,

	cvForeCastAnswers.id as ServerForeCastAnswerId,
	cvForeCastAnswers.environmentid as ServerEnvironmentID,
	cvEnvironment.name As ServerEnvironment,
	cvOperatingSystems.name As ServerOperatingSystem,
	cvForeCastAnswers.classid as ServerClassID,
	cvClasss.name As ServerClass,
	isnull(cvForeCastAnswers.quantity,0) as ServerQuantity,
	isnull(cvForeCastAnswers.recovery_number,0) as ServerRecoveryNumber,
	cvServerNames.created As ServerNccBuildDate,
	cvForeCastAnswers.addressid as ServerLocationID,
	cvLocationAddress.name As ServerLocation,
	cvLocationState.name As ServerLocationState,
	cvLocationCity.name As ServerLocationCity,
	cvDomains.name As ServerWorkgroup,
	cvaAssets.serial  As ServerSerialNumber,
	cvaAssets.asset As ServerAssetTag,
	cvRooms.name As ServerRoom,
	cvRacks.name As ServerRack,
	cvPlatforms.name As ServerPlatform,
	CASE 
		WHEN cvModelsProperty.fabric = 0 THEN 'Cisco'
		ELSE 'Brocade' 
	END AS ServerStorageType,

	cvForeCastAnswers.mnemonicid as ServerMnemonicId,

	cvServer.csmconfigid as ServerCSMConfigID,
	cvServer.clusterid as ServerClusterID,
	cvServer.number as ServerNumber,

	cvServer.SPID as ServerServicePackID,
	(Select name from dbo.cv_service_packs cvServicePacks where cvServicePacks.ID=cvServer.SPID) as ServerServicePackName,
	
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.ID) as ServerComponentID,

	(SELECT TOP 1 name from clearview.dbo.cv_servername_components 
	WHERE cv_servername_components.id=
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.id)) as ServerComponentName,

	cvServer.domainid as ServerDomainID,
	cvDomains.Name as ServerDomainName,
	cvaStatus.Status as AssetStatusId,
	cvaStatusList.Name as AssetStatusName,


	cvaBlade.dummy_name AS ServerDummyName,
	cvaBlade.ilo AS ServerILO,


		CASE cvServer.DR
		When 0 then ''
		When 1 then 
			CASE dr_exist
				WHEN 0 then cvServerNames.os + cvServerNames.location + cvServerNames.mnemonic + cvServerNames.environment + cvServerNames.name1 + cvServerNames.name2 + cvServerNames.func + cvServerNames.specific +'-DR'
				WHEN 1 then cvServer.dr_name
			END
		END as ServerDRName,

		CASE 
			WHEN Exists(Select cvStorageLuns.Replicated as Replicated from cv_Storage_luns cvStorageLuns 
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1
				UNION ALL
				Select cvStorageLuns.Replicated as Replicated 
				from cv_storage_mount_points as cvStorageMountPoints INNER JOIN 
				cv_Storage_luns cvStorageLuns ON cvStorageMountPoints.lunid=cvStorageLuns.ID
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1) 
				THEN  'Yes'
			ELSE 'No'
		END as Replicated,

	(Select factory_code from cv_mnemonics where id =cvForeCastAnswers.mnemonicid) as ServerMnemonicCode,

	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityProd,


		(ISNULL((select sum(size_QA) from cv_storage_luns 
			   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
			   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
			   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
		+
		ISNULL((select sum(size_QA) from cv_storage_mount_points 
				 where cv_storage_mount_points.lunid  IN 
					(SELECT cv_storage_luns.id FROM cv_storage_luns 
					where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
					AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
					AND cv_storage_luns.deleted=0) 
				AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityQA,



	(ISNULL((select sum(size_test) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+

	ISNULL((select sum(size_test) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size_test>=0 and cv_storage_mount_points.deleted=0 ),0)) as ServerCapacityTest

	,
		(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)*isnull(cvModelsProperty.replicate_times,0)) 	as ServerCapacityReplicated

FROM cv_servers cvServer
	INNER JOIN cv_forecast_answers cvForeCastAnswers
		ON cvServer.answerid = cvForeCastAnswers.id
		And cvForeCastAnswers.deleted = 0
	INNER JOIN cv_forecast cvForeCast
		ON cvForeCastAnswers.forecastid = cvForeCast.id
		And cvForeCast.deleted = 0
	INNER JOIN cv_servernames_factory cvServerNames	
		ON cvServer.nameid = cvServerNames.id
		And cvServerNames.deleted = 0
	INNER JOIN cv_environment cvEnvironment
		ON cvForeCastAnswers.environmentid = cvEnvironment.id
		And cvEnvironment.deleted = 0
	INNER JOIN cv_classs cvClasss
		ON cvForeCastAnswers.classid = cvClasss.id
		And cvClasss.enabled = 1
		And cvClasss.deleted = 0
	INNER JOIN cv_operating_systems cvOperatingSystems
		ON cvServer.osid = cvOperatingSystems.id
		And cvOperatingSystems.enabled = 1
		And cvOperatingSystems.deleted = 0
	INNER JOIN cv_models_property cvModelsProperty
		ON cvServer.modelid = cvModelsProperty.id
		And cvModelsProperty.enabled = 1
		And cvModelsProperty.deleted = 0
	INNER JOIN cv_location_address cvLocationAddress
		ON cvForeCastAnswers.addressid = cvLocationAddress.id
		And cvLocationAddress.enabled = 1
		And cvLocationAddress.deleted = 0
	INNER JOIN cv_location_city cvLocationCity
		ON cvLocationAddress.cityid = cvLocationCity.id
		And cvLocationCity.enabled = 1
		And cvLocationCity.deleted = 0
	INNER JOIN cv_location_state cvLocationState
		ON cvLocationCity.stateid = cvLocationState.id
		And cvLocationState.enabled = 1
		And cvLocationState.deleted = 0
	INNER JOIN cv_platforms cvPlatforms
		ON cvForeCastAnswers.platformid = cvPlatforms.platformid
		And cvPlatforms.enabled = 1
		And cvPlatforms.deleted = 0
	INNER JOIN cv_domains cvDomains
		ON cvServer.domainid = cvDomains.id
		And cvDomains.enabled = 1
		And cvDomains.deleted = 0
	INNER JOIN ClearView.dbo.cv_servers_assets cvServersAssets
		ON cvServer.id = cvServersAssets.serverid
		And cvServersAssets.deleted = 0
		And cvServersAssets.latest = 1
	INNER JOIN ClearViewAsset.dbo.cva_assets cvaAssets
		ON cvServersAssets.assetid = cvaAssets.id
		And cvaAssets.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_blades cvaBlade
		ON cvServersAssets.assetid = cvaBlade.assetid
		And cvaBlade.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_enclosures cvaEnclosure
		ON cvaBlade.enclosureid = cvaEnclosure.assetid
		And cvaEnclosure.deleted = 0
	INNER JOIN ClearView.dbo.cv_rooms cvRooms
		ON cvaEnclosure.roomid = cvRooms.id
		And cvRooms.enabled = 1
		And cvRooms.deleted = 0
	INNER JOIN ClearView.dbo.cv_racks cvRacks
		ON cvaEnclosure.rackid = cvRacks.id
		And cvRacks.enabled = 1
		And cvRacks.deleted = 0

	INNER JOIN ClearViewAsset.dbo.cva_status cvaStatus
		ON cvaAssets.id =cvaStatus.assetid
		And cvaStatus.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_status_list  cvaStatusList
		ON cvaStatus.status =cvaStatusList.id
		And cvaStatusList.deleted = 0

	LEFT OUTER JOIN clearview.dbo.cv_models cvModels
		ON cvModelsProperty.modelid=cvModels.id 
		AND  cvModels.enabled = 1 	AND cvModels.deleted = 0

	LEFT OUTER JOIN  ClearView.dbo.cv_types as cvTypes 
		ON cvModels.typeid = cvTypes.id AND cvTypes.enabled = 1 
					AND cvTypes.deleted = 0 

WHERE
	cvServer.deleted = 0
	AND cvServer.pnc = 1
/* END OF BLADES PNC */
UNION ALL
/* VMWARE PNC*/


SELECT
	cvServer.id As ServerID,
	cvForeCast.requestid,
	cvServerNames.os + cvServerNames.location + cvServerNames.mnemonic + cvServerNames.environment + cvServerNames.name1 + cvServerNames.name2 + cvServerNames.func + cvServerNames.specific AS ServerName,
	cvServer.created As ServerCommissionDate,
	cvServersAssets.assetid As ServerAssetID,
	cvServer.modelid as ServerModelID,
	CASE
		WHEN cvModelsProperty.name IS NULL THEN 'Unknown Server'
		ELSE cvModelsProperty.name
	END As ServerModel,


	cvTypes.ID as ServerTypeID,
	cvTypes.Name as ServerTypeName,

	cvForeCastAnswers.id as ServerForeCastAnswerId,
	cvForeCastAnswers.environmentid as ServerEnvironmentID,
	cvEnvironment.name As ServerEnvironment,
	cvOperatingSystems.name As ServerOperatingSystem,
	cvForeCastAnswers.classid as ServerClassID,
	cvClasss.name As ServerClass,
	isnull(cvForeCastAnswers.quantity,0) as ServerQuantity,
	isnull(cvForeCastAnswers.recovery_number,0) as ServerRecoveryNumber,
	cvServerNames.created As ServerNccBuildDate,
	cvForeCastAnswers.addressid as ServerLocationID,
	cvLocationAddress.name As ServerLocation,
	cvLocationState.name As ServerLocationState,
	cvLocationCity.name As ServerLocationCity,
	cvDomains.name As ServerWorkgroup,
	cvaAssets.serial  As ServerSerialNumber,
	cvaAssets.asset As ServerAssetTag,
	'N/A' As ServerRoom,
	'N/A' As ServerRack,
	cvPlatforms.name As ServerPlatform,
	CASE 
		WHEN cvModelsProperty.fabric = 0 THEN 'Cisco'
		ELSE 'Brocade' 
	END AS ServerStorageType,

	cvForeCastAnswers.mnemonicid as ServerMnemonicId,

	cvServer.csmconfigid as ServerCSMConfigID,
	cvServer.clusterid as ServerClusterID,
	cvServer.number as ServerNumber,

	cvServer.SPID as ServerServicePackID,
	(Select name from dbo.cv_service_packs cvServicePacks where cvServicePacks.ID=cvServer.SPID) as ServerServicePackName,
	
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.ID) as ServerComponentID,

	(SELECT TOP 1 name from clearview.dbo.cv_servername_components 
	WHERE cv_servername_components.id=
	(Select TOP 1 cvServerComponents.componentid from clearview.dbo.cv_servers_components cvServerComponents 
	WHERE cvServerComponents.deleted=0 AND cvServerComponents.serverid =cvServer.id)) as ServerComponentName,

	cvServer.domainid as ServerDomainID,
	cvDomains.Name as ServerDomainName,
	cvaStatus.Status as AssetStatusId,
	cvaStatusList.Name as AssetStatusName,


	'N/A' AS ServerDummyName,
	'N/A' AS ServerILO,

		CASE cvServer.DR
		When 0 then ''
		When 1 then 
			CASE dr_exist
				WHEN 0 then cvServerNames.os + cvServerNames.location + cvServerNames.mnemonic + cvServerNames.environment + cvServerNames.name1 + cvServerNames.name2 + cvServerNames.func + cvServerNames.specific+'-DR'
				WHEN 1 then cvServer.dr_name
			END
		END as ServerDRName,

		CASE 
			WHEN Exists(Select cvStorageLuns.Replicated as Replicated from cv_Storage_luns cvStorageLuns 
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1
				UNION ALL
				Select cvStorageLuns.Replicated as Replicated 
				from cv_storage_mount_points as cvStorageMountPoints INNER JOIN 
				cv_Storage_luns cvStorageLuns ON cvStorageMountPoints.lunid=cvStorageLuns.ID
				where cvStorageLuns.answerid=cvServer.answerid AND 
				cvStorageLuns.csmconfigid=cvServer.csmconfigid AND
				cvStorageLuns.clusterid=cvServer.clusterid AND
				cvStorageLuns.number=cvServer.number AND cvStorageLuns.Replicated =1) 
				THEN  'Yes'
			ELSE 'No'
		END as Replicated,

	(Select factory_code from cv_mnemonics where id =cvForeCastAnswers.mnemonicid) as ServerMnemonicCode,

	
	(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityProd,


		(ISNULL((select sum(size_QA) from cv_storage_luns 
			   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
			   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
			   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
		+
		ISNULL((select sum(size_QA) from cv_storage_mount_points 
				 where cv_storage_mount_points.lunid  IN 
					(SELECT cv_storage_luns.id FROM cv_storage_luns 
					where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
					AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
					AND cv_storage_luns.deleted=0) 
				AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)) 	as ServerCapacityQA,



	(ISNULL((select sum(size_test) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+

	ISNULL((select sum(size_test) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size_test>=0 and cv_storage_mount_points.deleted=0 ),0)) as ServerCapacityTest

,
		(ISNULL((select sum(size) from cv_storage_luns 
		   where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
		   AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
		   AND cv_storage_luns.size>=0 and cv_storage_luns.deleted=0),0) 
	+
	ISNULL((select sum(size) from cv_storage_mount_points 
			 where cv_storage_mount_points.lunid  IN 
				(SELECT cv_storage_luns.id FROM cv_storage_luns 
				where cv_storage_luns.answerid=cvServer.answerid AND cv_storage_luns.csmconfigid=cvServer.csmconfigid 
				AND cv_storage_luns.clusterid=cvServer.clusterid AND cv_storage_luns.number=cvServer.number 
				AND cv_storage_luns.deleted=0) 
			AND cv_storage_mount_points.size>=0 and cv_storage_mount_points.deleted=0 ),0)*isnull(cvModelsProperty.replicate_times,0)) 	as ServerCapacityReplicated
FROM cv_servers cvServer
	INNER JOIN cv_forecast_answers cvForeCastAnswers
		ON cvServer.answerid = cvForeCastAnswers.id
		And cvForeCastAnswers.deleted = 0
	INNER JOIN cv_forecast cvForeCast
		ON cvForeCastAnswers.forecastid = cvForeCast.id
		And cvForeCast.deleted = 0
	INNER JOIN cv_servernames_factory cvServerNames	
		ON cvServer.nameid = cvServerNames.id
		And cvServerNames.deleted = 0
	INNER JOIN cv_environment cvEnvironment
		ON cvForeCastAnswers.environmentid = cvEnvironment.id
		And cvEnvironment.deleted = 0
	INNER JOIN cv_classs cvClasss
		ON cvForeCastAnswers.classid = cvClasss.id
		And cvClasss.enabled = 1
		And cvClasss.deleted = 0
	INNER JOIN cv_operating_systems cvOperatingSystems
		ON cvServer.osid = cvOperatingSystems.id
		And cvOperatingSystems.enabled = 1
		And cvOperatingSystems.deleted = 0
	INNER JOIN cv_models_property cvModelsProperty
		ON cvServer.modelid = cvModelsProperty.id
		And cvModelsProperty.enabled = 1
		And cvModelsProperty.deleted = 0
	INNER JOIN cv_location_address cvLocationAddress
		ON cvForeCastAnswers.addressid = cvLocationAddress.id
		And cvLocationAddress.enabled = 1
		And cvLocationAddress.deleted = 0
	INNER JOIN cv_location_city cvLocationCity
		ON cvLocationAddress.cityid = cvLocationCity.id
		And cvLocationCity.enabled = 1
		And cvLocationCity.deleted = 0
	INNER JOIN cv_location_state cvLocationState
		ON cvLocationCity.stateid = cvLocationState.id
		And cvLocationState.enabled = 1
		And cvLocationState.deleted = 0
	INNER JOIN cv_platforms cvPlatforms
		ON cvForeCastAnswers.platformid = cvPlatforms.platformid
		And cvPlatforms.enabled = 1
		And cvPlatforms.deleted = 0
	INNER JOIN cv_domains cvDomains
		ON cvServer.domainid = cvDomains.id
		And cvDomains.enabled = 1
		And cvDomains.deleted = 0
	INNER JOIN ClearView.dbo.cv_servers_assets cvServersAssets
		ON cvServer.id = cvServersAssets.serverid
		And cvServersAssets.deleted = 0
		And cvServersAssets.latest = 1
	INNER JOIN ClearViewAsset.dbo.cva_assets cvaAssets
		ON cvServersAssets.assetid = cvaAssets.id
		And cvaAssets.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_guests cvaServer
		ON cvServersAssets.assetid = cvaServer.assetid
		And cvaServer.deleted = 0

	INNER JOIN ClearViewAsset.dbo.cva_status cvaStatus
		ON cvaAssets.id =cvaStatus.assetid
		And cvaStatus.deleted = 0
	INNER JOIN ClearViewAsset.dbo.cva_status_list  cvaStatusList
		ON cvaStatus.status =cvaStatusList.id
		And cvaStatusList.deleted = 0
	
	LEFT OUTER JOIN clearview.dbo.cv_models cvModels
		ON cvModelsProperty.modelid=cvModels.id 
		AND  cvModels.enabled = 1 	AND cvModels.deleted = 0

	LEFT OUTER JOIN  ClearView.dbo.cv_types as cvTypes 
		ON cvModels.typeid = cvTypes.id AND cvTypes.enabled = 1 
					AND cvTypes.deleted = 0 

WHERE
	cvServer.deleted = 0
	AND cvServer.pnc = 1

/*END OF VMWARE PNC*/

GO
/****** Object:  View [dbo].[vwCVServiceDetails]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCVServiceDetails]
as
SELECT
	cvServicesFolder.ID as ServiceFolderId,
	cvServicesFolder.Name as ServiceFolderName,
	cvServicesFolder.Description as ServiceFolderDesc,
	cvServicesFolder.parent as ParentServiceFolderId,
	cvParentServiceFolder.Name as ParentServiceFolderName,
	cvParentServiceFolder.Description as ParentServiceFolderDesc,
	cvServicesFolder.Parent as ServiceFolderParent,
	cvServices.ServiceID,
	cvServices.Name as ServiceName,
	cvServices.Description as ServiceDescription,
	cvServices.sla as ServiceSLA,
	cvServices.Modified as ServiceModifiedDate,
	ServiceUser.UserName as ServiceOwner,
	(SELECT dbo.fnGetServiceFolderPath(cvServicesFolder.ID) )AS ServiceDirectoryPath,
	(Select max(created) from dbo.cv_resource_requests
	 where serviceid=cvServices.ServiceID) as ServiceLastUsed

FROM
	cv_services_folder cvServicesFolder
	LEFT OUTER JOIN cv_services_folder cvParentServiceFolder
		ON cvServicesFolder.parent =cvParentServiceFolder.id
		AND cvParentServiceFolder.deleted = 0 and cvParentServiceFolder.enabled = 1
	LEFT OUTER  JOIN cv_services_folders cvServicesFolders
		ON cvServicesFolder.id=cvServicesFolders.Folderid
		AND cvServicesFolders.deleted=0
	LEFT OUTER JOIN cv_services cvServices
		ON
			cvServicesFolders.serviceid = cvServices.serviceid
			--AND cvServices.show = 1
			AND cvServices.enabled = 1
			--AND cvServices.step = 0
			AND cvServices.deleted = 0
	LEFT OUTER JOIN dbo.cv_services_users cvServicesUsers
		ON cvServices.ServiceID=cvServicesUsers.ServiceID
		AND cvServicesUsers.deleted=0 and cvServicesUsers.assign=-1
	LEFT OUTER JOIN dbo.vwCVUsers ServiceUser
		ON cvServicesUsers.userid=ServiceUser.userid
		AND ServiceUser.deleted=0
WHERE
	cvServicesFolder.deleted = 0 and cvServicesFolder.enabled = 1
--ORDER BY cvServicesFolder.ID ,cvServicesFolder.parent

GO
/****** Object:  View [dbo].[vwCVServiceRequests]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwCVServiceRequests]
AS
SELECT     TOP (100) PERCENT dbo.cv_requests.requestid AS ReqId, dbo.cv_requests.projectid AS ReqProjectId, dbo.cv_requests.userid AS ReqSubmittedUserId, 
                      CVReqSubmittedUser.UserName AS ReqSubmittedUserName, dbo.cv_requests.description AS ReqDescription, 
                      dbo.cv_requests.start_date AS ReqStartDate, dbo.cv_requests.end_date AS ReqEndDate, dbo.cv_requests.created AS ReqCreatedDate, 
                      dbo.cv_requests.modified AS ReqModifiedDate, dbo.cv_requests.completed AS ReqCompletedDate, dbo.cv_requests.deleted AS ReqDeletedDate, 
                      dbo.cv_resource_requests.id AS ReqResourceID, dbo.cv_resource_requests.itemid AS ReqResourceItemId, 
                      dbo.cv_request_items.name AS ReqResourceItemName, dbo.cv_request_items.applicationid AS ReqResourceItemAppID, 
                      dbo.cv_applications.name AS ReqResourceItemAppName, dbo.cv_resource_requests.serviceid AS ReqResourceServiceID, 
                      dbo.cv_services.name AS ReqResourceServiceName, dbo.cv_services.description AS ReqResourceServiceDesc, 
                      dbo.cv_resource_requests.number AS ReqResourceNumber, dbo.cv_resource_requests.name AS ReqResourceName, 
                      dbo.cv_resource_requests.devices AS ReqResourceDevices, dbo.cv_resource_requests.allocated AS ReqResourceAllocated, 
                      dbo.cv_resource_requests.status AS ReqResourceStatus, 
					  CASE WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' WHEN cv_resource_requests.status = - 1 THEN 'Denied' WHEN cv_resource_requests.status
                       = 0 THEN 'Pending' WHEN cv_resource_requests.status = 1 THEN 'Approved' WHEN cv_resource_requests.status = 2 THEN 'Active' WHEN cv_resource_requests.status
                       = 3 THEN 'Completed' WHEN cv_resource_requests.status = 5 THEN 'Hold' WHEN cv_resource_requests.status = 10 THEN 'Future' ELSE 'Invalid' END
                       AS 'TechnicianStatus',
					  dbo.cv_resource_requests.solo AS ReqResourceSolo, 
                      dbo.cv_resource_requests.accepted AS ReqResourceAccepted, dbo.cv_resource_requests.reason AS ReqResourceReason, 
                      dbo.cv_resource_requests.platform_approval AS ReqResourcePlatformApproval, dbo.cv_resource_requests.assignedby AS ReqResourceAssignedBy, 
                      dbo.cv_resource_requests.assigned AS ReqResourceAssigned, dbo.cv_resource_requests.created AS ReqResourceCreated, 
                      dbo.cv_resource_requests.modified AS ReqResourceModified, dbo.cv_resource_requests.completed AS ReqResourceCompleted, 
                      dbo.cv_resource_requests.deleted AS ReqResourceDeleted, dbo.cv_resource_request_update.status AS ReqResourceUpdatesStatus, 
                      dbo.cv_resource_request_update.comments AS ReqResourceUpdatesComment, 
                      dbo.cv_WM_remediation.reason AS ReqResourceRemediationReason, dbo.cv_WM_iis.reason AS ReqResourceIISReason
FROM         dbo.cv_requests INNER JOIN
                      dbo.cv_resource_requests ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid INNER JOIN
                      dbo.vwCVUsers AS CVReqSubmittedUser ON dbo.cv_requests.userid = CVReqSubmittedUser.userid LEFT OUTER JOIN
                      dbo.cv_resource_request_update ON dbo.cv_resource_requests.id = dbo.cv_resource_request_update.parent LEFT OUTER JOIN
                      dbo.cv_WM_remediation ON dbo.cv_resource_requests.number = dbo.cv_WM_remediation.number AND 
                      dbo.cv_resource_requests.itemid = dbo.cv_WM_remediation.itemid AND 
                      dbo.cv_resource_requests.requestid = dbo.cv_WM_remediation.requestid LEFT OUTER JOIN
                      dbo.cv_WM_iis ON dbo.cv_resource_requests.number = dbo.cv_WM_iis.number AND dbo.cv_resource_requests.itemid = dbo.cv_WM_iis.itemid AND 
                      dbo.cv_resource_requests.requestid = dbo.cv_WM_iis.requestid LEFT OUTER JOIN
                      dbo.cv_request_items ON dbo.cv_resource_requests.itemid = dbo.cv_request_items.itemid LEFT OUTER JOIN
                      dbo.cv_applications ON dbo.cv_applications.applicationid = dbo.cv_request_items.applicationid LEFT OUTER JOIN
                      dbo.cv_service_requests ON dbo.cv_resource_requests.requestid = dbo.cv_service_requests.requestid LEFT OUTER JOIN
                      dbo.cv_services ON dbo.cv_resource_requests.serviceid = dbo.cv_services.serviceid


GO
/****** Object:  View [dbo].[vwCVServiceRequestsResourceWorkFlow]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwCVServiceRequestsResourceWorkFlow]
AS
SELECT     dbo.vwCVServiceRequests.ReqId, dbo.vwCVServiceRequests.ReqProjectId, dbo.vwCVServiceRequests.ReqSubmittedUserId, 
                      dbo.vwCVServiceRequests.ReqSubmittedUserName, dbo.vwCVServiceRequests.ReqDescription, dbo.vwCVServiceRequests.ReqStartDate, 
                      dbo.vwCVServiceRequests.ReqEndDate, dbo.vwCVServiceRequests.ReqCreatedDate, dbo.vwCVServiceRequests.ReqModifiedDate, 
                      dbo.vwCVServiceRequests.ReqCompletedDate, dbo.vwCVServiceRequests.ReqDeletedDate, dbo.vwCVServiceRequests.ReqResourceID, 
                      dbo.vwCVServiceRequests.ReqResourceItemId, dbo.vwCVServiceRequests.ReqResourceItemName, 
                      dbo.vwCVServiceRequests.ReqResourceItemAppID, dbo.vwCVServiceRequests.ReqResourceItemAppName, 
                      dbo.vwCVServiceRequests.ReqResourceServiceID, dbo.vwCVServiceRequests.ReqResourceServiceName, 
                      dbo.vwCVServiceRequests.ReqResourceServiceDesc, dbo.vwCVServiceRequests.ReqResourceNumber, 
                      dbo.vwCVServiceRequests.ReqResourceName, dbo.vwCVServiceRequests.ReqResourceDevices, dbo.vwCVServiceRequests.ReqResourceAllocated, 
                      dbo.vwCVServiceRequests.ReqResourceStatus, dbo.vwCVServiceRequests.TechnicianStatus, dbo.vwCVServiceRequests.ReqResourceSolo, 
                      dbo.vwCVServiceRequests.ReqResourceAccepted, dbo.vwCVServiceRequests.ReqResourceReason, 
                      dbo.vwCVServiceRequests.ReqResourcePlatformApproval, dbo.vwCVServiceRequests.ReqResourceAssignedBy, 
                      dbo.vwCVServiceRequests.ReqResourceAssigned, dbo.vwCVServiceRequests.ReqResourceCreated, 
                      dbo.vwCVServiceRequests.ReqResourceModified, dbo.vwCVServiceRequests.ReqResourceCompleted, 
                      dbo.vwCVServiceRequests.ReqResourceDeleted, dbo.vwCVServiceRequests.ReqResourceUpdatesStatus, 
                      dbo.vwCVServiceRequests.ReqResourceUpdatesComment, dbo.vwCVServiceRequests.ReqResourceRemediationReason, 
                      dbo.vwCVServiceRequests.ReqResourceIISReason, dbo.cv_resource_requests_workflow.name AS ReqResourceWorkFlowName, 
                      dbo.cv_resource_requests_workflow.userid AS ReqResourceWorkflowUserId, dbo.vwCVUsers.UserName AS ReqResourceWorkflowUserName, 
                      dbo.cv_resource_requests_workflow.devices AS ReqResourceWorkflowDevices, 
                      dbo.cv_resource_requests_workflow.used AS ReqResourceWorkflowUsed, 
                      dbo.cv_resource_requests_workflow.allocated AS ReqResourceWorkflowAllocated, 
                      dbo.cv_resource_requests_workflow.status AS ReqResourceWorkflowStatus, 
                      dbo.cv_resource_requests_workflow.joined AS ReqResourceWorkflowJoined, 
                      dbo.cv_resource_requests_workflow.created AS ReqResourceWorkflowCreated, 
                      dbo.cv_resource_requests_workflow.modified AS ReqResourceWorkflowModified, 
                      dbo.cv_resource_requests_workflow.modifiedby AS ReqResourceWorkflowModifiedBy, 
                      dbo.cv_resource_requests_workflow.completed AS ReqResourceWorkflowCompleted, 
                      dbo.cv_resource_requests_workflow.deleted AS ReqResourceWorkflowDeleted, dbo.vwCVUsers.manager AS ReqResourceWorkflowUserManager, 
                      dbo.vwCVUsers.Managername AS ReqResourceWorkflowUserManagerName
FROM         dbo.vwCVServiceRequests INNER JOIN
                      dbo.cv_resource_requests_workflow ON dbo.vwCVServiceRequests.ReqResourceID = dbo.cv_resource_requests_workflow.parent LEFT OUTER JOIN
                      dbo.vwCVUsers ON dbo.cv_resource_requests_workflow.userid = dbo.vwCVUsers.userid


GO
/****** Object:  View [dbo].[vwCVTaskDetails]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwCVTaskDetails]
AS 
SELECT     
dbo.cv_requests.requestid AS RequestId, 
dbo.cv_resource_requests.name AS TaskName, 
dbo.cv_requests.description AS TaskDescription, 
dbo.cv_requests.start_date AS TaskStartDate, 
dbo.cv_requests.end_date AS TaskEndDate, 
dbo.cv_requests.UserId as RequestorUserId,
Requestor.UserName as Requestor,
dbo.cv_resource_requests_workflow.userid as ResourceAssignedUserID,
dbo.vwCVUsers.UserName AS ResourceAssigned,
CASE 
	WHEN cv_resource_requests.status = - 2 THEN 'Cancelled' 
	WHEN cv_resource_requests.status = - 1 THEN 'Denied' 
	WHEN cv_resource_requests.status= 0 THEN 'Pending' 
	WHEN cv_resource_requests.status = 1 THEN 'Approved' 
	WHEN cv_resource_requests.status = 2 THEN 'Active' 
	WHEN cv_resource_requests.status= 3 THEN 'Completed' 
	WHEN cv_resource_requests.status = 5 THEN 'Hold' 
	WHEN cv_resource_requests.status = 10 THEN 'Future' 
	ELSE 'Invalid' 
END
AS [TechnicianStatus]
FROM         dbo.cv_requests 
INNER JOIN dbo.cv_resource_requests 
	ON dbo.cv_requests.requestid = dbo.cv_resource_requests.requestid 
	AND dbo.cv_resource_requests.deleted=0  
	AND cv_resource_requests.itemid=-1 
	AND cv_resource_requests.serviceid=0 
	AND cv_resource_requests.number=0
INNER JOIN dbo.cv_resource_requests_workflow 
	ON dbo.cv_resource_requests.id = dbo.cv_resource_requests_workflow.parent 
	AND cv_resource_requests_workflow.deleted=0
INNER JOIN dbo.vwCVUsers 
	ON dbo.cv_resource_requests_workflow.userid = dbo.vwCVUsers.userid
INNER JOIN dbo.vwCVUsers as Requestor
	ON dbo.cv_requests.userid = Requestor.userid
WHERE 
cv_requests.deleted=0 and cv_requests.projectid=0


GO
/****** Object:  View [dbo].[vwCVUsers]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCVUsers]
AS
SELECT  CVUsers.userid, 
		CVUsers.xid, 
		CVUsers.fname, 
		CVUsers.lname, 
		RTRIM(isnull(CVUsers.lname,'')) + ', ' + RTRIM(isnull(CVUsers.fname,'')) AS UserName, 
        CVUsers.manager, 
		RTRIM(isnull(cvUserManager.lname,'')) + ', ' + RTRIM(isnull(cvUserManager.fname,'')) AS Managername, 
		CVUsers.ismanager, 
		CVUsers.board, 
        CVUsers.director, 
		CVUsers.pager, 
		CVUsers.atid, 
		CVUsers.phone, 
		CVUsers.other, 
		CVUsers.vacation, 
		CVUsers.multiple_apps AS MultipleApplications, 
		CVUsers.add_location AS AddLocation, 
		CVUsers.enabled, 
		CVUsers.modified, 
		CVUsers.deleted

FROM         
dbo.cv_users AS CVUsers 
LEFT OUTER JOIN  dbo.cv_users AS cvUserManager 
	ON CVUsers.manager = cvUserManager.userid

GO
/****** Object:  View [dbo].[vwCVWorkloadManager]    Script Date: 07/31/2009 11:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwCVWorkloadManager]
AS
SELECT    
/* Project Details */
CASE 
	WHEN vwProjects.ProjectNumber IS NULL THEN '1' 
	WHEN vwProjects.ProjectNumber LIKE 'EPS%' THEN '1' 
	WHEN vwProjects.ProjectNumber LIKE 'CV%' THEN '1' 
	ELSE '0' 
END AS Task, 

CASE 
	WHEN vwProjects.ProjectNumber IS NULL THEN cvServiceRequests.name 
	WHEN vwProjects.ProjectNumber LIKE 'EPS%' THEN vwProjects.ProjectName 
	WHEN vwProjects.ProjectNumber LIKE 'CV%' THEN vwProjects.ProjectName
	ELSE vwProjects.ProjectName  
END AS ProjectORServiceName,

CASE WHEN vwProjects.ProjectNumber IS NULL THEN 'CVT' + CAST(cvRequests.requestid AS VARCHAR(10)) 
     ELSE vwProjects.ProjectNumber 
END AS ProjectNumber, 
CASE WHEN vwProjects.ProjectNumber LIKE 'CV%' THEN 'Base' 
	 WHEN vwProjects.ProjectNumber LIKE 'EPS%' THEN 'Base' 
	 WHEN vwProjects.ProjectNumber IS NULL THEN 'Base' 
	 ELSE vwProjects.ProjectBaseDiscretion
END AS ProjectType,

CASE WHEN vwProjects.ProjectNumber LIKE 'CV%' THEN 'Enterprise Production Services' 
	 WHEN vwProjects.ProjectNumber LIKE 'EPS%' THEN 'Enterprise Production Services'
	 WHEN vwProjects.ProjectNumber IS NULL THEN 'Enterprise Production Services' 
	 ELSE vwProjects.ProjectOrgName  
END AS Portfolio,
vwProjects.ProjectID,
vwProjects.ProjectLeadName,
vwProjects.ProjectWorkingSponsorName,
vwProjects.ProjectExecutiveSponsorName,
vwProjects.ProjectTechnicalLeadName,
vwProjects.ProjectEngineerName,
vwProjects.ProjectStatusId,
vwProjects.ProjectStatus,

/* End of Project Details */
/* Request Details */
cvRequests.RequestId, 
cvRequests.Description as RequestDescription, 
CvRequestItems.name AS Department, 
CvRequestItems.Applicationid ,
cvApplications.name AS Application, 
vwRequestedBy.UserName as RequestedBy,
cvRequests.Modified AS RequestModified, 
cvRequests.start_date as RequestStartDate,
cvRequests.end_date as RequestEndDate,
cvServices.name AS ServiceName, 
cvServices.sla AS SLA, 
vwTechnician.UserName as Technician,
cvResourceRequests.Allocated,
cvResourceRequests.Name as RequestServiceDesc,
cvResourceRequests.Devices, 
cvResourceRequests.status as TechnicianStatusID,
CASE 
	WHEN cvResourceRequests.status = - 2 THEN 'Cancelled' 
	WHEN cvResourceRequests.status = - 1 THEN 'Denied' 
	WHEN cvResourceRequests.status = 0 THEN 'Pending' 
	WHEN cvResourceRequests.status = 1 THEN 'Approved' 
	WHEN cvResourceRequests.status = 2 THEN 'Active' 
	WHEN cvResourceRequests.status = 3 THEN 'Completed' 
	WHEN cvResourceRequests.status = 5 THEN 'Hold' 
	WHEN cvResourceRequests.status = 10 THEN 'Future' 
	ELSE 'Invalid' 
END AS TechnicianStatus, 
 
cvResourceRequestUpdate.status AS TechnicianColor, 
cvWMiis.reason as Reason1, 
cvWMRemediation.reason AS Reason2, 
cvResourceRequests.Assigned, 
cvResourceRequests.Created as RequestCreated,
cvResourceRequests.completed AS Completed,
cvResourceRequests.modified AS LastUpdated

/* End of Request Details */
 
FROM   Clearview.dbo.cv_requests cvRequests 
	 INNER JOIN Clearview.dbo.cv_resource_requests cvResourceRequests
		ON cvRequests.requestid = cvResourceRequests.requestid 
		AND cvRequests.deleted = 0
	LEFT OUTER JOIN Clearview.dbo.cv_resource_requests_workflow  cvResourceRequestsWorkflow
		ON cvResourceRequests.id =cvResourceRequestsWorkflow.parent 
	LEFT OUTER JOIN Clearview.dbo.cv_resource_request_update cvResourceRequestUpdate
		ON cvResourceRequestsWorkflow.id  =cvResourceRequestUpdate.parent 
		AND cvResourceRequestUpdate.latest = 1 
		AND cvResourceRequestUpdate.deleted = 0
		AND cvResourceRequestsWorkflow.deleted = 0 
	LEFT OUTER JOIN Clearview.dbo.vwCVProjects vwProjects
		ON cvRequests.projectid = vwProjects.projectid 
		AND vwProjects.ProjectDeleted = 0
	INNER JOIN Clearview.dbo.vwCVUsers vwRequestedBy
		ON cvRequests.userid = vwRequestedBy.userid 
		AND vwRequestedBy.enabled = 1 AND vwRequestedBy.deleted = 0  
	LEFT OUTER JOIN Clearview.dbo.cv_service_requests cvServiceRequests
		ON cvResourceRequests.requestid = cvServiceRequests.requestid 
		AND cvServiceRequests.checkout = 1 AND cvServiceRequests.deleted = 0 
	LEFT OUTER JOIN Clearview.dbo.cv_request_items  cvRequestItems
		INNER JOIN Clearview.dbo.cv_applications cvApplications
			ON cvRequestItems.applicationid = cvApplications.applicationid 
			AND cvApplications.enabled = 1 
			AND cvApplications.deleted = 0 
		ON cvResourceRequests.itemid = cvRequestItems.itemid 
		AND cvRequestItems.enabled = 1 
		AND cvRequestItems.deleted = 0 
	LEFT OUTER JOIN Clearview.dbo.cv_services cvServices
		ON cvResourceRequests.serviceid =cvServices.serviceid 
		AND cvServices.deleted = 0  

	LEFT OUTER JOIN Clearview.dbo.cv_WM_iis cvWMiis
		ON cvResourceRequests.requestid = cvWMiis.requestid 
		AND cvResourceRequests.itemid = cvWMiis.itemid 
		AND cvResourceRequests.number = cvWMiis.number 
		AND cvWMiis.deleted = 0 
	LEFT OUTER JOIN Clearview.dbo.cv_WM_project_coordinator cvWMProjectCoordinator
		ON cvResourceRequests.requestid = cvWMProjectCoordinator.requestid 
		AND cvResourceRequests.itemid = cvWMProjectCoordinator.itemid 
		AND cvResourceRequests.number = cvWMProjectCoordinator.number 
		AND cvWMProjectCoordinator.deleted = 0 
	LEFT OUTER JOIN Clearview.dbo.cv_WM_remediation cvWMremediation
		ON cvResourceRequests.requestid = cvWMremediation.requestid 
		AND cvResourceRequests.itemid = cvWMremediation.itemid 
		AND cvResourceRequests.number = cvWMremediation.number 
		AND cvWMremediation.deleted = 0 
	LEFT OUTER JOIN Clearview.dbo.cv_WM_server_retrieve cvWMServerRetrieve
		ON cvResourceRequests.requestid = cvWMServerRetrieve.requestid 
		AND cvResourceRequests.itemid = cvWMServerRetrieve.itemid 
		AND cvResourceRequests.number = cvWMServerRetrieve.number 
		AND cvWMServerRetrieve.deleted = 0 
	LEFT OUTER JOIN Clearview.dbo.cv_WM_server_archive cvWMServerArchive
		ON cvResourceRequests.requestid = cvWMServerArchive.requestid 
		AND cvResourceRequests.itemid = cvWMServerArchive.itemid 
		AND cvResourceRequests.number = cvWMServerArchive.number 
		AND cvWMServerArchive.deleted = 0 
	LEFT OUTER JOIN Clearview.dbo.cv_WM_tpm cvWMtpm
		ON cvResourceRequests.requestid = cvWMtpm.requestid 
		AND cvResourceRequests.itemid = cvWMtpm.itemid 
		AND cvResourceRequests.number = cvWMtpm.number 
		AND cvWMtpm.deleted = 0 
	LEFT OUTER JOIN Clearview.dbo.cv_WM_workstation cvWMworkstation
		ON cvResourceRequests.requestid = cvWMworkstation.requestid 
		AND cvResourceRequests.itemid = cvWMworkstation.itemid 
		AND cvResourceRequests.number = cvWMworkstation.number 
		AND cvWMworkstation.deleted = 0
	LEFT OUTER JOIN Clearview.dbo.vwCVUsers AS vwTechnician 
		ON cvResourceRequestsWorkflow.userid = vwTechnician.userid 
		AND vwTechnician.enabled = 1 
		AND vwTechnician.deleted = 0
					
WHERE cvResourceRequests.deleted=0 AND cvResourceRequests.accepted >= 0
