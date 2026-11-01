.class public Lcom/transsion/baseui/widget/PileLayout;
.super Landroid/view/ViewGroup;


# instance fields
.field protected a:F

.field protected b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/baseui/widget/PileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/baseui/widget/PileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p3, Lcom/transsion/baseui/R$styleable;->PileLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/baseui/R$styleable;->PileLayout_PileLayout_vertivalSpace:I

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p0, p3}, Lcom/transsion/baseui/widget/PileLayout;->dp2px(F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/baseui/widget/PileLayout;->a:F

    sget p2, Lcom/transsion/baseui/R$styleable;->PileLayout_PileLayout_pileWidth:I

    const/high16 p3, 0x41200000    # 10.0f

    invoke-virtual {p0, p3}, Lcom/transsion/baseui/widget/PileLayout;->dp2px(F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/baseui/widget/PileLayout;->b:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public dp2px(F)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    sub-int v1, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v6, v4, :cond_3

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    add-int v12, v2, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    add-int/2addr v12, v13

    if-le v12, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v3, v3

    int-to-float v7, v7

    iget v8, v0, Lcom/transsion/baseui/widget/PileLayout;->a:F

    add-float/2addr v7, v8

    add-float/2addr v3, v7

    float-to-int v3, v3

    move v7, v5

    move v8, v7

    :cond_1
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v13, v2, v12

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v3

    add-int/2addr v12, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v12, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v9, v13, v14, v12, v15}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v2, v11

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v11, v9

    iget v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v9

    add-int/lit8 v9, v4, -0x1

    if-eq v8, v9, :cond_2

    int-to-float v2, v2

    iget v9, v0, Lcom/transsion/baseui/widget/PileLayout;->b:F

    sub-float/2addr v2, v9

    float-to-int v2, v2

    :cond_2
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v6, p0

    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v13, v11, :cond_6

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v11, -0x1

    if-ne v13, v0, :cond_0

    add-int/2addr v5, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_0
    move/from16 v19, v10

    goto/16 :goto_3

    :cond_1
    const/4 v3, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    move v12, v4

    move/from16 v4, p2

    move/from16 v19, v10

    move v10, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    add-int v0, v15, v1

    int-to-float v3, v0

    if-lez v16, :cond_2

    iget v4, v6, Lcom/transsion/baseui/widget/PileLayout;->b:F

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    sub-float v4, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int v5, v8, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    sub-int v5, v5, v17

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v0, v10

    int-to-float v3, v12

    iget v4, v6, Lcom/transsion/baseui/widget/PileLayout;->a:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v5, v0

    move v15, v1

    move v4, v2

    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    if-lez v16, :cond_4

    iget v0, v6, Lcom/transsion/baseui/widget/PileLayout;->b:F

    sub-float/2addr v3, v0

    float-to-int v0, v3

    :cond_4
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v15, v0

    move v4, v1

    move v5, v10

    :goto_2
    add-int/lit8 v0, v11, -0x1

    if-ne v13, v0, :cond_5

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v5, v4

    move v14, v0

    :cond_5
    add-int/lit8 v16, v16, 0x1

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v19

    goto/16 :goto_0

    :cond_6
    move/from16 v19, v10

    move v10, v5

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v7, v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v14, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int v8, v14, v1

    :goto_4
    if-ne v9, v0, :cond_8

    move/from16 v10, v19

    goto :goto_5

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int v5, v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int v10, v5, v0

    :goto_5
    invoke-virtual {v6, v8, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
