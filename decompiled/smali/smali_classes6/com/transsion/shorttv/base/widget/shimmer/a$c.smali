.class public Lcom/transsion/shorttv/base/widget/shimmer/a$c;
.super Lcom/transsion/shorttv/base/widget/shimmer/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/base/widget/shimmer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/shorttv/base/widget/shimmer/a$b;-><init>()V

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/a$b;->a:Lcom/transsion/shorttv/base/widget/shimmer/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/shorttv/base/widget/shimmer/a;->q:Z

    return-void
.end method


# virtual methods
.method bridge synthetic c(Landroid/content/res/TypedArray;)Lcom/transsion/shorttv/base/widget/shimmer/a$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/base/widget/shimmer/a$c;->v(Landroid/content/res/TypedArray;)Lcom/transsion/shorttv/base/widget/shimmer/a$c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic d()Lcom/transsion/shorttv/base/widget/shimmer/a$b;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/shimmer/a$c;->w()Lcom/transsion/shorttv/base/widget/shimmer/a$c;

    move-result-object v0

    return-object v0
.end method

.method v(Landroid/content/res/TypedArray;)Lcom/transsion/shorttv/base/widget/shimmer/a$c;
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/shorttv/base/widget/shimmer/a$b;->c(Landroid/content/res/TypedArray;)Lcom/transsion/shorttv/base/widget/shimmer/a$b;

    sget v0, Lcom/transsion/shorttv/R$styleable;->ShortTvShimmerFrameLayout_short_tv_shimmer_base_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/shorttv/R$styleable;->ShortTvShimmerFrameLayout_short_tv_shimmer_base_color:I

    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/shimmer/a$b;->a:Lcom/transsion/shorttv/base/widget/shimmer/a;

    iget v1, v1, Lcom/transsion/shorttv/base/widget/shimmer/a;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/base/widget/shimmer/a$c;->x(I)Lcom/transsion/shorttv/base/widget/shimmer/a$c;

    :cond_0
    sget v0, Lcom/transsion/shorttv/R$styleable;->ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/shorttv/R$styleable;->ShortTvShimmerFrameLayout_short_tv_shimmer_highlight_color:I

    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/shimmer/a$b;->a:Lcom/transsion/shorttv/base/widget/shimmer/a;

    iget v1, v1, Lcom/transsion/shorttv/base/widget/shimmer/a;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/base/widget/shimmer/a$c;->y(I)Lcom/transsion/shorttv/base/widget/shimmer/a$c;

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/shimmer/a$c;->w()Lcom/transsion/shorttv/base/widget/shimmer/a$c;

    move-result-object p1

    return-object p1
.end method

.method protected w()Lcom/transsion/shorttv/base/widget/shimmer/a$c;
    .locals 0

    return-object p0
.end method

.method public x(I)Lcom/transsion/shorttv/base/widget/shimmer/a$c;
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/a$b;->a:Lcom/transsion/shorttv/base/widget/shimmer/a;

    iget v1, v0, Lcom/transsion/shorttv/base/widget/shimmer/a;->f:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    iput p1, v0, Lcom/transsion/shorttv/base/widget/shimmer/a;->f:I

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/shimmer/a$c;->w()Lcom/transsion/shorttv/base/widget/shimmer/a$c;

    move-result-object p1

    return-object p1
.end method

.method public y(I)Lcom/transsion/shorttv/base/widget/shimmer/a$c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/a$b;->a:Lcom/transsion/shorttv/base/widget/shimmer/a;

    iput p1, v0, Lcom/transsion/shorttv/base/widget/shimmer/a;->e:I

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/shimmer/a$c;->w()Lcom/transsion/shorttv/base/widget/shimmer/a$c;

    move-result-object p1

    return-object p1
.end method
