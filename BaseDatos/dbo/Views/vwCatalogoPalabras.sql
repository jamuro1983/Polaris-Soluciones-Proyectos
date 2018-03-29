CREATE VIEW dbo.vwCatalogoPalabras
AS
SELECT        dbo.Palabra.DescripcionPalabra, dbo.Pais.DescripcionPais, dbo.Idioma.DescripcionIdioma, dbo.Definicion.Definicion, dbo.Palabra.IdPalabra, dbo.Idioma.IdIdioma, dbo.Pais.IdPais, dbo.Definicion.IdDefinicion
FROM            dbo.Palabra INNER JOIN
                         dbo.Definicion ON dbo.Palabra.IdPalabra = dbo.Definicion.IdPalabra INNER JOIN
                         dbo.Idioma ON dbo.Definicion.IdIdioma = dbo.Idioma.IdIdioma INNER JOIN
                         dbo.PalabraPorPais ON dbo.Palabra.IdPalabra = dbo.PalabraPorPais.IdPalabra INNER JOIN
                         dbo.Pais ON dbo.PalabraPorPais.IdPais = dbo.Pais.IdPais
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwCatalogoPalabras';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'     Table = 1170
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwCatalogoPalabras';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
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
         Begin Table = "Palabra"
            Begin Extent = 
               Top = 90
               Left = 46
               Bottom = 186
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Definicion"
            Begin Extent = 
               Top = 6
               Left = 264
               Bottom = 136
               Right = 434
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Idioma"
            Begin Extent = 
               Top = 6
               Left = 474
               Bottom = 102
               Right = 662
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pais"
            Begin Extent = 
               Top = 6
               Left = 700
               Bottom = 102
               Right = 872
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PalabraPorPais"
            Begin Extent = 
               Top = 148
               Left = 399
               Bottom = 261
               Right = 576
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
         Width = 2535
         Width = 2235
         Width = 2175
         Width = 2445
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1740
         Alias = 900
    ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwCatalogoPalabras';

