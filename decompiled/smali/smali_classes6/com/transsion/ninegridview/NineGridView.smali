.class public Lcom/transsion/ninegridview/NineGridView;
.super Landroid/view/ViewGroup;


# static fields
.field public static final MODE_FILL:I = 0x0

.field public static final MODE_GRID:I = 0x1

.field private static m:Lpn/b;


# instance fields
.field private a:I

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:Lcom/transsion/ninegridview/NineGridViewAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/ninegridview/NineGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/ninegridview/NineGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xfa

    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    const/16 p3, 0x9

    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    const/4 p3, 0x3

    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    int-to-float v0, v0

    invoke-static {v1, v0, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    sget-object p3, Lcom/transsion/ninegridview/R$styleable;->NineGridView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_gridSpacing:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_singleImageSize:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_singleImageRatio:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_maxSize:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_mode:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->e:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->e:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->j:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/ninegridview/NineGridView;)Lcom/transsion/ninegridview/NineGridViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ninegridview/NineGridView;->l:Lcom/transsion/ninegridview/NineGridViewAdapter;

    return-object p0
.end method

.method private b(I)Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->l:Lcom/transsion/ninegridview/NineGridViewAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ninegridview/NineGridViewAdapter;->generateImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/ninegridview/NineGridView$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ninegridview/NineGridView$a;-><init>(Lcom/transsion/ninegridview/NineGridView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static getImageLoader()Lpn/b;
    .locals 1

    sget-object v0, Lcom/transsion/ninegridview/NineGridView;->m:Lpn/b;

    return-object v0
.end method

.method public static setImageLoader(Lpn/b;)V
    .locals 0

    sput-object p0, Lcom/transsion/ninegridview/NineGridView;->m:Lpn/b;

    return-void
.end method


# virtual methods
.method public getMaxSize()I
    .locals 1

    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/ImageView;

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->f:I

    div-int p4, p2, p3

    rem-int p3, p2, p3

    iget p5, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    add-int/2addr p5, v0

    mul-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    add-int/2addr p5, p3

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    add-int/2addr p3, v0

    mul-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    add-int/2addr p3, p4

    iget p4, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    add-int/2addr p4, p5

    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    add-int/2addr v0, p3

    invoke-virtual {v2, p5, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    sget-object v0, Lcom/transsion/ninegridview/NineGridView;->m:Lpn/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p3, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/ninegridview/ImageInfo;

    iget-object v3, p3, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    iget v5, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    iget-object p3, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/ninegridview/ImageInfo;

    iget-object v6, p3, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lpn/b;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ninegridview/ImageInfo;

    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    iget v3, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    cmpl-float p2, v1, v3

    const/high16 v1, 0x43580000    # 216.0f

    if-lez p2, :cond_0

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    float-to-int v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    float-to-int v1, v1

    mul-int/2addr p2, v1

    iget p1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    float-to-int p1, p1

    div-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    float-to-int v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    float-to-int v1, v1

    mul-int/2addr p2, v1

    iget p1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    float-to-int p1, p1

    div-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    int-to-float p2, p1

    iget v1, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    div-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    iget v1, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    if-le p2, v1, :cond_3

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float p2, p2

    div-float/2addr v2, p2

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    iput v1, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x3

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    :cond_3
    :goto_0
    iget p1, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    iget p2, p0, Lcom/transsion/ninegridview/NineGridView;->f:I

    mul-int/2addr p1, p2

    iget v1, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    sub-int/2addr p2, v0

    mul-int/2addr v1, p2

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    iget v1, p0, Lcom/transsion/ninegridview/NineGridView;->g:I

    mul-int/2addr p2, v1

    iget v2, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    sub-int/2addr v1, v0

    mul-int/2addr v2, v1

    add-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int v1, p2, v0

    :cond_4
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdapter(Lcom/transsion/ninegridview/NineGridViewAdapter;)V
    .locals 6
    .param p1    # Lcom/transsion/ninegridview/NineGridViewAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->l:Lcom/transsion/ninegridview/NineGridViewAdapter;

    invoke-virtual {p1}, Lcom/transsion/ninegridview/NineGridViewAdapter;->getImageInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    if-lez v3, :cond_1

    if-le v2, v3, :cond_1

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :cond_1
    div-int/lit8 v3, v2, 0x3

    rem-int/lit8 v4, v2, 0x3

    const/4 v5, 0x1

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    add-int/2addr v3, v4

    iput v3, p0, Lcom/transsion/ninegridview/NineGridView;->g:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/transsion/ninegridview/NineGridView;->f:I

    iget v3, p0, Lcom/transsion/ninegridview/NineGridView;->e:I

    if-ne v3, v5, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const/4 v3, 0x2

    iput v3, p0, Lcom/transsion/ninegridview/NineGridView;->g:I

    iput v3, p0, Lcom/transsion/ninegridview/NineGridView;->f:I

    :cond_3
    iget-object v3, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    if-nez v3, :cond_5

    :goto_1
    if-ge v1, v2, :cond_8

    invoke-direct {p0, v1}, Lcom/transsion/ninegridview/NineGridView;->b(I)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_6

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    goto :goto_3

    :cond_6
    if-ge v1, v2, :cond_8

    :goto_2
    if-ge v1, v2, :cond_8

    invoke-direct {p0, v1}, Lcom/transsion/ninegridview/NineGridView;->b(I)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/ninegridview/NineGridViewAdapter;->getImageInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    if-le v1, v2, :cond_9

    sub-int/2addr v2, v5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/ninegridview/NineGridViewWrapper;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/transsion/ninegridview/NineGridViewWrapper;

    invoke-virtual {p1}, Lcom/transsion/ninegridview/NineGridViewAdapter;->getImageInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v2, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/transsion/ninegridview/NineGridViewWrapper;->setMoreNum(I)V

    :cond_9
    iput-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_a
    :goto_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setGridSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    return-void
.end method

.method public setMaxSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    return-void
.end method

.method public setSingleImageRatio(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    return-void
.end method

.method public setSingleImageSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    return-void
.end method
