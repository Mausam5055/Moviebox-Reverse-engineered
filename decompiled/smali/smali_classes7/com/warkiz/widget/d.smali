.class public Lcom/warkiz/widget/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:[I

.field private c:Lcom/warkiz/widget/ArrowView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/widget/LinearLayout;

.field private g:I

.field private h:I

.field private i:Landroid/content/Context;

.field private j:I

.field private k:Lcom/warkiz/widget/IndicatorSeekBar;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:F

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/warkiz/widget/IndicatorSeekBar;IIIILandroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/warkiz/widget/d;->b:[I

    iput-object p1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    iput p3, p0, Lcom/warkiz/widget/d;->h:I

    iput p4, p0, Lcom/warkiz/widget/d;->j:I

    iput-object p7, p0, Lcom/warkiz/widget/d;->m:Landroid/view/View;

    iput-object p8, p0, Lcom/warkiz/widget/d;->n:Landroid/view/View;

    int-to-float p1, p5

    iput p1, p0, Lcom/warkiz/widget/d;->o:F

    iput p6, p0, Lcom/warkiz/widget/d;->p:I

    invoke-direct {p0}, Lcom/warkiz/widget/d;->e()I

    move-result p1

    iput p1, p0, Lcom/warkiz/widget/d;->a:I

    iget-object p1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/warkiz/widget/d;->g:I

    invoke-direct {p0}, Lcom/warkiz/widget/d;->h()V

    return-void
.end method

.method private a(F)V
    .locals 14

    iget v0, p0, Lcom/warkiz/widget/d;->j:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/d;->c()I

    move-result v0

    int-to-float v1, v0

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v3, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    iget-object v1, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    int-to-float v0, v1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    neg-int v4, p1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v5, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/warkiz/widget/d;->a:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v3, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    iget-object v1, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/warkiz/widget/d;->a:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    sub-float/2addr v0, p1

    sub-float/2addr v1, v0

    float-to-int v4, v1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v5, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private b()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    iget v0, p0, Lcom/warkiz/widget/d;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/warkiz/widget/R$drawable;->isb_indicator_rounded_corners:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/warkiz/widget/R$drawable;->isb_indicator_square_corners:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    :goto_0
    iget v1, p0, Lcom/warkiz/widget/d;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private c()I
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    iget-object v1, p0, Lcom/warkiz/widget/d;->b:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/warkiz/widget/d;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private e()I
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 10

    iget v0, p0, Lcom/warkiz/widget/d;->j:I

    const/4 v1, 0x4

    const-string v2, "id"

    const-string v3, "isb_progress"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/warkiz/widget/d;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    iget v2, p0, Lcom/warkiz/widget/d;->o:F

    invoke-static {v1, v2}, Lcom/warkiz/widget/g;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/warkiz/widget/d;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "the view identified by isb_progress in indicator custom layout can not be cast to TextView"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the attr\uff1aindicator_custom_layout must be set while you set the indicator type to CUSTOM."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/warkiz/widget/CircleBubbleView;

    iget-object v5, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    iget v6, p0, Lcom/warkiz/widget/d;->o:F

    iget v7, p0, Lcom/warkiz/widget/d;->p:I

    iget v8, p0, Lcom/warkiz/widget/d;->h:I

    const-string v9, "1000"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/warkiz/widget/CircleBubbleView;-><init>(Landroid/content/Context;FIILjava/lang/String;)V

    iput-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/warkiz/widget/CircleBubbleView;->setProgress(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    sget v1, Lcom/warkiz/widget/R$layout;->isb_indicator:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    sget v1, Lcom/warkiz/widget/R$id;->indicator_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/warkiz/widget/d;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    sget v1, Lcom/warkiz/widget/R$id;->indicator_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/warkiz/widget/ArrowView;

    iput-object v0, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    iget v1, p0, Lcom/warkiz/widget/d;->h:I

    invoke-virtual {v0, v1}, Lcom/warkiz/widget/ArrowView;->setColor(I)V

    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    sget v1, Lcom/warkiz/widget/R$id;->isb_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    iget v4, p0, Lcom/warkiz/widget/d;->o:F

    invoke-static {v1, v4}, Lcom/warkiz/widget/g;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/warkiz/widget/d;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/warkiz/widget/d;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/warkiz/widget/d;->b()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/warkiz/widget/d;->n:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/warkiz/widget/d;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/warkiz/widget/d;->n:Landroid/view/View;

    if-lez v0, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/warkiz/widget/d;->n(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/warkiz/widget/d;->m(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/warkiz/widget/d;->m(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private k(Landroid/view/View;IIII)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1
    if-ne p3, v1, :cond_2

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    if-ne p4, v1, :cond_3

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_3
    if-ne p5, v1, :cond_4

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_4
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method


# virtual methods
.method d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    return-object v0
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method g()V
    .locals 4

    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/warkiz/widget/d;->j:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    :cond_1
    return-void
.end method

.method i()Z
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j()V
    .locals 3

    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    instance-of v2, v1, Lcom/warkiz/widget/CircleBubbleView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/warkiz/widget/CircleBubbleView;

    invoke-virtual {v1, v0}, Lcom/warkiz/widget/CircleBubbleView;->setProgress(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    instance-of v1, v0, Lcom/warkiz/widget/CircleBubbleView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/warkiz/widget/CircleBubbleView;

    invoke-virtual {v0, p1}, Lcom/warkiz/widget/CircleBubbleView;->setProgress(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/warkiz/widget/d;->n(Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method

.method public n(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    iput-object p2, p0, Lcom/warkiz/widget/d;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/warkiz/widget/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lcom/warkiz/widget/d;->b()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/warkiz/widget/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method o(F)V
    .locals 5

    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/warkiz/widget/d;->j()V

    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, p1, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/warkiz/widget/d;->g:I

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    invoke-direct {p0, p1}, Lcom/warkiz/widget/d;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method p(F)V
    .locals 8

    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/warkiz/widget/d;->j()V

    iget-object v0, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/warkiz/widget/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/warkiz/widget/d;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/warkiz/widget/d;->g:I

    add-int/2addr v0, v1

    neg-int v5, v0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    invoke-direct {p0, p1}, Lcom/warkiz/widget/d;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method q(I)V
    .locals 6

    iget-object v1, p0, Lcom/warkiz/widget/d;->c:Lcom/warkiz/widget/ArrowView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    return-void
.end method

.method r(I)V
    .locals 6

    iget-object v1, p0, Lcom/warkiz/widget/d;->l:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/warkiz/widget/d;->k(Landroid/view/View;IIII)V

    return-void
.end method
