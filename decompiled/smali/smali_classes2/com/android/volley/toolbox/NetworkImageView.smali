.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 0

    iget p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->e:I

    return p0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic c(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->g:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private e()V
    .locals 1

    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method


# virtual methods
.method d(Z)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    move v2, v4

    move v5, v2

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->e()V

    return-void

    :cond_5
    new-instance v0, Lcom/android/volley/toolbox/NetworkImageView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->d(Z)V

    return-void
.end method

.method public setDefaultImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->d:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->b:I

    return-void
.end method

.method public setErrorImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->f:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setErrorImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->g:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->g:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->f:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->e:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/h;)V
    .locals 0

    invoke-static {}, Lcom/android/volley/toolbox/n;->a()V

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->d(Z)V

    return-void
.end method
