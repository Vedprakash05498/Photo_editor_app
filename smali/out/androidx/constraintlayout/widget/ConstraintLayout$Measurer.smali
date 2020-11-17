.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "l"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 617
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 619
    return-void
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .registers 7
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 609
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 610
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 611
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 612
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 613
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 614
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 615
    return-void
.end method

.method public final didMeasures()V
    .registers 6

    .line 857
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 858
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 859
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 860
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_1b

    .line 861
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 858
    .end local v2    # "child":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 865
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 866
    .local v1, "helperCount":I
    if-lez v1, :cond_41

    .line 867
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_41

    .line 868
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 869
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 867
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 872
    .end local v2    # "i":I
    :cond_41
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .registers 33
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "measure"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 625
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    .line 626
    return-void

    .line 628
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 629
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 630
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 631
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 632
    return-void

    .line 643
    :cond_1f
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 644
    .local v3, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 646
    .local v4, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 647
    .local v6, "horizontalDimension":I
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 649
    .local v7, "verticalDimension":I
    const/4 v8, 0x0

    .line 650
    .local v8, "horizontalSpec":I
    const/4 v9, 0x0

    .line 652
    .local v9, "verticalSpec":I
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v10, v11

    .line 653
    .local v10, "heightPadding":I
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 655
    .local v11, "widthPadding":I
    const/4 v12, 0x0

    .line 656
    .local v12, "didHorizontalWrap":Z
    const/4 v13, 0x0

    .line 658
    .local v13, "didVerticalWrap":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 660
    .local v14, "child":Landroid/view/View;
    sget-object v15, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/4 v5, 0x2

    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .local v20, "horizontalSpec":I
    const/4 v8, 0x1

    if-eq v15, v8, :cond_d2

    if-eq v15, v5, :cond_c0

    const/4 v5, 0x3

    if-eq v15, v5, :cond_aa

    const/4 v5, 0x4

    if-eq v15, v5, :cond_53

    move/from16 v15, v20

    const/4 v8, 0x2

    goto/16 :goto_de

    .line 680
    :cond_53
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v15, -0x2

    invoke-static {v5, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 681
    .end local v20    # "horizontalSpec":I
    .local v5, "horizontalSpec":I
    const/4 v12, 0x1

    .line 682
    iget v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v15, v8, :cond_61

    const/4 v15, 0x1

    goto :goto_62

    :cond_61
    const/4 v15, 0x0

    .line 683
    .local v15, "shouldDoWrap":Z
    :goto_62
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x2

    const/16 v20, 0x0

    aput v20, v8, v16

    .line 684
    iget-boolean v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v8, :cond_a4

    .line 685
    if-eqz v15, :cond_87

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v19, 0x3

    aget v8, v8, v19

    if-eqz v8, :cond_87

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aget v8, v8, v16

    .line 687
    move/from16 v20, v5

    .end local v5    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-ne v8, v5, :cond_8d

    goto :goto_89

    .line 685
    .end local v20    # "horizontalSpec":I
    .restart local v5    # "horizontalSpec":I
    :cond_87
    move/from16 v20, v5

    .line 687
    .end local v5    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    :goto_89
    instance-of v5, v14, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v5, :cond_8f

    :cond_8d
    const/4 v5, 0x1

    goto :goto_90

    :cond_8f
    const/4 v5, 0x0

    .line 690
    .local v5, "useCurrent":Z
    :goto_90
    if-eqz v15, :cond_94

    if-eqz v5, :cond_a6

    .line 691
    :cond_94
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    move/from16 v22, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "useCurrent":Z
    .local v22, "useCurrent":Z
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 692
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    const/4 v12, 0x0

    move v15, v8

    const/4 v8, 0x2

    goto :goto_de

    .line 684
    .end local v8    # "horizontalSpec":I
    .end local v22    # "useCurrent":Z
    .local v5, "horizontalSpec":I
    :cond_a4
    move/from16 v20, v5

    .line 699
    .end local v5    # "horizontalSpec":I
    .end local v15    # "shouldDoWrap":Z
    .restart local v20    # "horizontalSpec":I
    :cond_a6
    move/from16 v15, v20

    const/4 v8, 0x2

    goto :goto_de

    .line 674
    :cond_aa
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v8

    add-int/2addr v8, v11

    .line 674
    const/4 v15, -0x1

    invoke-static {v5, v8, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 676
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    move/from16 v20, v8

    const/4 v8, 0x2

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    aput v15, v5, v8

    .line 678
    move/from16 v15, v20

    goto :goto_de

    .line 667
    :cond_c0
    const/4 v8, 0x2

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v15, -0x2

    invoke-static {v5, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 668
    .end local v20    # "horizontalSpec":I
    .restart local v5    # "horizontalSpec":I
    const/4 v12, 0x1

    .line 669
    move/from16 v20, v5

    .end local v5    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v15, v5, v8

    .line 671
    move/from16 v15, v20

    goto :goto_de

    .line 662
    :cond_d2
    const/4 v8, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 663
    .end local v20    # "horizontalSpec":I
    .local v15, "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v5, v8

    .line 665
    nop

    .line 699
    :goto_de
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v20

    aget v5, v5, v20

    move/from16 v20, v6

    const/4 v6, 0x1

    .end local v6    # "horizontalDimension":I
    .local v20, "horizontalDimension":I
    if-eq v5, v6, :cond_160

    if-eq v5, v8, :cond_152

    const/4 v6, 0x3

    if-eq v5, v6, :cond_140

    const/4 v6, 0x4

    if-eq v5, v6, :cond_f5

    goto/16 :goto_16c

    .line 720
    :cond_f5
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v6, -0x2

    invoke-static {v5, v10, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 722
    const/4 v13, 0x1

    .line 723
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_104

    const/4 v5, 0x1

    goto :goto_105

    :cond_104
    const/4 v5, 0x0

    .line 724
    .local v5, "shouldDoWrap":Z
    :goto_105
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v8, 0x3

    const/16 v16, 0x0

    aput v16, v6, v8

    .line 725
    iget-boolean v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v6, :cond_13d

    .line 726
    if-eqz v5, :cond_124

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v8, 0x2

    aget v6, v6, v8

    if-eqz v6, :cond_124

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-ne v6, v8, :cond_128

    :cond_124
    instance-of v6, v14, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v6, :cond_12a

    :cond_128
    const/4 v6, 0x1

    goto :goto_12b

    :cond_12a
    const/4 v6, 0x0

    .line 730
    .local v6, "useCurrent":Z
    :goto_12b
    if-eqz v5, :cond_12f

    if-eqz v6, :cond_16c

    .line 731
    :cond_12f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    move/from16 v17, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "shouldDoWrap":Z
    .local v17, "shouldDoWrap":Z
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 732
    const/4 v13, 0x0

    goto :goto_16c

    .line 725
    .end local v6    # "useCurrent":Z
    .end local v17    # "shouldDoWrap":Z
    .restart local v5    # "shouldDoWrap":Z
    :cond_13d
    move/from16 v17, v5

    .end local v5    # "shouldDoWrap":Z
    .restart local v17    # "shouldDoWrap":Z
    goto :goto_16c

    .line 714
    .end local v17    # "shouldDoWrap":Z
    :cond_140
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v6

    add-int/2addr v6, v10

    .line 714
    const/4 v8, -0x1

    invoke-static {v5, v6, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 716
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v6, 0x3

    aput v8, v5, v6

    .line 718
    goto :goto_16c

    .line 706
    :cond_152
    const/4 v6, 0x3

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v8, -0x2

    invoke-static {v5, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 708
    const/4 v13, 0x1

    .line 709
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v8, v5, v6

    .line 711
    goto :goto_16c

    .line 701
    :cond_160
    const/4 v6, 0x3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 702
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v5, v6

    .line 704
    nop

    .line 739
    :cond_16c
    :goto_16c
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_172

    const/4 v5, 0x1

    goto :goto_173

    :cond_172
    const/4 v5, 0x0

    .line 740
    .local v5, "horizontalMatchConstraints":Z
    :goto_173
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_179

    const/4 v6, 0x1

    goto :goto_17a

    :cond_179
    const/4 v6, 0x0

    .line 742
    .local v6, "verticalMatchConstraints":Z
    :goto_17a
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v8, :cond_185

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v8, :cond_183

    goto :goto_185

    :cond_183
    const/4 v8, 0x0

    goto :goto_186

    :cond_185
    :goto_185
    const/4 v8, 0x1

    .line 744
    .local v8, "verticalDimensionKnown":Z
    :goto_186
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v0, :cond_191

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_18f

    goto :goto_191

    :cond_18f
    const/4 v0, 0x0

    goto :goto_192

    :cond_191
    :goto_191
    const/4 v0, 0x1

    .line 746
    .local v0, "horizontalDimensionKnown":Z
    :goto_192
    const/16 v17, 0x0

    if-eqz v5, :cond_1a0

    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v18, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v17

    if-lez v3, :cond_1a2

    const/4 v3, 0x1

    goto :goto_1a3

    .end local v18    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1a0
    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v18    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1a2
    const/4 v3, 0x0

    .line 747
    .local v3, "horizontalUseRatio":Z
    :goto_1a3
    if-eqz v6, :cond_1af

    move-object/from16 v22, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v22, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v4, v17

    if-lez v4, :cond_1b1

    const/4 v4, 0x1

    goto :goto_1b2

    .end local v22    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1af
    move-object/from16 v22, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v22    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1b1
    const/4 v4, 0x0

    .line 749
    .local v4, "verticalUseRatio":Z
    :goto_1b2
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v23, v7

    .end local v7    # "verticalDimension":I
    .local v23, "verticalDimension":I
    move-object/from16 v7, v17

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 751
    .local v7, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/16 v17, 0x0

    .line 752
    .local v17, "width":I
    const/16 v24, 0x0

    .line 753
    .local v24, "height":I
    const/16 v25, 0x0

    .line 755
    .local v25, "baseline":I
    move/from16 v26, v10

    .end local v10    # "heightPadding":I
    .local v26, "heightPadding":I
    iget-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-nez v10, :cond_1e9

    if-eqz v5, :cond_1e9

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v10, :cond_1e9

    if-eqz v6, :cond_1e9

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v10, :cond_1d5

    goto :goto_1e9

    :cond_1d5
    move/from16 v28, v3

    move/from16 v27, v5

    move/from16 v21, v11

    move/from16 v3, v17

    move/from16 v5, v25

    const/16 v16, 0x0

    move/from16 v29, v24

    move/from16 v24, v6

    move/from16 v6, v29

    goto/16 :goto_2e5

    .line 759
    :cond_1e9
    :goto_1e9
    instance-of v10, v14, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v10, :cond_1fd

    instance-of v10, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v10, :cond_1fd

    .line 760
    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 761
    .local v10, "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    move/from16 v27, v5

    .end local v5    # "horizontalMatchConstraints":Z
    .local v27, "horizontalMatchConstraints":Z
    move-object v5, v14

    check-cast v5, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v5, v10, v15, v9}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    .line 762
    .end local v10    # "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    goto :goto_202

    .line 759
    .end local v27    # "horizontalMatchConstraints":Z
    .restart local v5    # "horizontalMatchConstraints":Z
    :cond_1fd
    move/from16 v27, v5

    .line 763
    .end local v5    # "horizontalMatchConstraints":Z
    .restart local v27    # "horizontalMatchConstraints":Z
    invoke-virtual {v14, v15, v9}, Landroid/view/View;->measure(II)V

    .line 766
    :goto_202
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 767
    .local v5, "w":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 768
    .local v10, "h":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v25

    .line 770
    move/from16 v28, v5

    .line 771
    .end local v17    # "width":I
    .local v28, "width":I
    move/from16 v17, v10

    .line 778
    .end local v24    # "height":I
    .local v17, "height":I
    if-eqz v12, :cond_223

    .line 779
    move/from16 v24, v6

    .end local v6    # "verticalMatchConstraints":Z
    .local v24, "verticalMatchConstraints":Z
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v5, v6, v16

    .line 780
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v21, 0x2

    aput v10, v6, v21

    goto :goto_231

    .line 782
    .end local v24    # "verticalMatchConstraints":Z
    .restart local v6    # "verticalMatchConstraints":Z
    :cond_223
    move/from16 v24, v6

    const/16 v16, 0x0

    const/16 v21, 0x2

    .end local v6    # "verticalMatchConstraints":Z
    .restart local v24    # "verticalMatchConstraints":Z
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v6, v16

    .line 783
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v6, v21

    .line 785
    :goto_231
    if-eqz v13, :cond_242

    .line 786
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v21, 0x1

    aput v10, v6, v21

    .line 787
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v19, 0x3

    aput v5, v6, v19

    const/16 v16, 0x0

    goto :goto_250

    .line 789
    :cond_242
    const/16 v19, 0x3

    const/16 v21, 0x1

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v6, v21

    .line 790
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v6, v19

    .line 793
    :goto_250
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v6, :cond_261

    .line 794
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v19, v9

    move/from16 v9, v28

    .end local v28    # "width":I
    .local v9, "width":I
    .local v19, "verticalSpec":I
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v9, v28

    .end local v9    # "width":I
    .restart local v28    # "width":I
    goto :goto_265

    .line 793
    .end local v19    # "verticalSpec":I
    .local v9, "verticalSpec":I
    :cond_261
    move/from16 v19, v9

    move/from16 v9, v28

    .line 796
    .end local v28    # "width":I
    .local v9, "width":I
    .restart local v19    # "verticalSpec":I
    :goto_265
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v6, :cond_26f

    .line 797
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 799
    :cond_26f
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v6, :cond_280

    .line 800
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v21, v11

    move/from16 v11, v17

    .end local v17    # "height":I
    .local v11, "height":I
    .local v21, "widthPadding":I
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v11, v17

    .end local v11    # "height":I
    .restart local v17    # "height":I
    goto :goto_284

    .line 799
    .end local v21    # "widthPadding":I
    .local v11, "widthPadding":I
    :cond_280
    move/from16 v21, v11

    move/from16 v11, v17

    .line 802
    .end local v17    # "height":I
    .local v11, "height":I
    .restart local v21    # "widthPadding":I
    :goto_284
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v6, :cond_28e

    .line 803
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 806
    :cond_28e
    if-eqz v3, :cond_2a0

    if-eqz v8, :cond_2a0

    .line 807
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 808
    .local v6, "ratio":F
    move/from16 v28, v3

    .end local v3    # "horizontalUseRatio":Z
    .local v28, "horizontalUseRatio":Z
    int-to-float v3, v11

    mul-float v3, v3, v6

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v3, v3, v17

    float-to-int v3, v3

    .line 809
    .end local v6    # "ratio":F
    .end local v9    # "width":I
    .local v3, "width":I
    move v9, v3

    goto :goto_2b0

    .line 806
    .end local v28    # "horizontalUseRatio":Z
    .local v3, "horizontalUseRatio":Z
    .restart local v9    # "width":I
    :cond_2a0
    move/from16 v28, v3

    .line 809
    .end local v3    # "horizontalUseRatio":Z
    .restart local v28    # "horizontalUseRatio":Z
    if-eqz v4, :cond_2b0

    if-eqz v0, :cond_2b0

    .line 810
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 811
    .local v3, "ratio":F
    int-to-float v6, v9

    div-float/2addr v6, v3

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v6, v6, v17

    float-to-int v6, v6

    move v11, v6

    .line 814
    .end local v3    # "ratio":F
    :cond_2b0
    :goto_2b0
    if-ne v5, v9, :cond_2bc

    if-eq v10, v11, :cond_2b5

    goto :goto_2bc

    :cond_2b5
    move v3, v9

    move v6, v11

    move/from16 v9, v19

    move/from16 v5, v25

    goto :goto_2e5

    .line 815
    :cond_2bc
    :goto_2bc
    if-eq v5, v9, :cond_2c6

    .line 816
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move v15, v6

    .end local v15    # "horizontalSpec":I
    .local v6, "horizontalSpec":I
    goto :goto_2c8

    .line 815
    .end local v6    # "horizontalSpec":I
    .restart local v15    # "horizontalSpec":I
    :cond_2c6
    const/high16 v3, 0x40000000    # 2.0f

    .line 818
    :goto_2c8
    if-eq v10, v11, :cond_2cf

    .line 819
    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .end local v19    # "verticalSpec":I
    .local v3, "verticalSpec":I
    goto :goto_2d1

    .line 818
    .end local v3    # "verticalSpec":I
    .restart local v19    # "verticalSpec":I
    :cond_2cf
    move/from16 v3, v19

    .line 821
    .end local v19    # "verticalSpec":I
    .restart local v3    # "verticalSpec":I
    :goto_2d1
    invoke-virtual {v14, v15, v3}, Landroid/view/View;->measure(II)V

    .line 822
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 823
    .end local v9    # "width":I
    .local v17, "width":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 824
    .end local v11    # "height":I
    .local v6, "height":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v25

    move v9, v3

    move/from16 v3, v17

    move/from16 v5, v25

    .line 833
    .end local v10    # "h":I
    .end local v17    # "width":I
    .end local v25    # "baseline":I
    .local v3, "width":I
    .local v5, "baseline":I
    .local v9, "verticalSpec":I
    :goto_2e5
    const/4 v10, -0x1

    if-eq v5, v10, :cond_2ea

    const/4 v10, 0x1

    goto :goto_2eb

    :cond_2ea
    const/4 v10, 0x0

    .line 835
    .local v10, "hasBaseline":Z
    :goto_2eb
    iget v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v3, v11, :cond_2f6

    iget v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v6, v11, :cond_2f4

    goto :goto_2f6

    :cond_2f4
    const/4 v11, 0x0

    goto :goto_2f7

    :cond_2f6
    :goto_2f6
    const/4 v11, 0x1

    :goto_2f7
    iput-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 837
    iget-boolean v11, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v11, :cond_2fe

    .line 838
    const/4 v10, 0x1

    .line 840
    :cond_2fe
    if-eqz v10, :cond_30c

    const/4 v11, -0x1

    if-eq v5, v11, :cond_30c

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v11

    if-eq v11, v5, :cond_30c

    .line 841
    const/4 v11, 0x1

    iput-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 843
    :cond_30c
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 844
    iput v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 845
    iput-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 846
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 853
    return-void
.end method
