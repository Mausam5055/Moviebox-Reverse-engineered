.class public Lcom/airbnb/lottie/model/layer/c;
.super Lcom/airbnb/lottie/model/layer/a;


# instance fields
.field private final E:Landroid/graphics/Paint;

.field private final F:Landroid/graphics/Rect;

.field private final G:Landroid/graphics/Rect;

.field private final H:Lcom/airbnb/lottie/l0;

.field private I:Ln4/a;

.field private J:Ln4/a;

.field private K:Ln4/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance v0, Ll4/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ll4/a;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->U(Ljava/lang/String;)Lcom/airbnb/lottie/l0;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->y()Lu4/j;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ln4/c;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->y()Lu4/j;

    move-result-object p2

    invoke-direct {p1, p0, p0, p2}, Ln4/c;-><init>(Ln4/a$b;Lcom/airbnb/lottie/model/layer/a;Lu4/j;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->K:Ln4/c;

    :cond_0
    return-void
.end method

.method private P()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->J:Ln4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieDrawable;->L(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/l0;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lw4/c;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->b(Ljava/lang/Object;Lw4/c;)V

    sget-object v0, Lcom/airbnb/lottie/p0;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->I:Ln4/a;

    goto :goto_0

    :cond_0
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->I:Ln4/a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/p0;->N:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->J:Ln4/a;

    goto :goto_0

    :cond_2
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->J:Ln4/a;

    :cond_3
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    if-eqz p2, :cond_0

    invoke-static {}, Lv4/l;->e()F

    move-result p2

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    invoke-virtual {p3}, Lcom/airbnb/lottie/l0;->f()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/l0;->d()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/c;->P()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lv4/l;->e()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->I:Ln4/a;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->F:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->V()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    invoke-virtual {v3}, Lcom/airbnb/lottie/l0;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    invoke-virtual {v4}, Lcom/airbnb/lottie/l0;->d()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->K:Ln4/c;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, p2, p3}, Ln4/c;->b(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    :cond_3
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->F:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_1
    return-void
.end method
