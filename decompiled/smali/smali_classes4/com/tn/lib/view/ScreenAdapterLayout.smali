.class public Lcom/tn/lib/view/ScreenAdapterLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Z

.field private b:Z

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    iput-boolean p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    iput-boolean p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->b:Z

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    iget-boolean v0, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->b:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lez v4, :cond_0

    int-to-float v4, v4

    iget v5, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->c:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->d:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v4, v4

    iget v5, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->d:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setScale(FF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    iput p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->c:F

    iput p2, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->d:F

    return-void
.end method
