.class public Lcom/mbridge/msdk/video/dynview/shape/a;
.super Landroid/graphics/drawable/ShapeDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/dynview/shape/a$b;,
        Lcom/mbridge/msdk/video/dynview/shape/a$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/video/dynview/shape/a$b;)V
    .locals 1

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->a(Lcom/mbridge/msdk/video/dynview/shape/a$b;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->h:Z

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->b(Lcom/mbridge/msdk/video/dynview/shape/a$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->f:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->c(Lcom/mbridge/msdk/video/dynview/shape/a$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->g:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->d(Lcom/mbridge/msdk/video/dynview/shape/a$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->h:Z

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->e(Lcom/mbridge/msdk/video/dynview/shape/a$b;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->a:I

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->f(Lcom/mbridge/msdk/video/dynview/shape/a$b;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->d:I

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->g(Lcom/mbridge/msdk/video/dynview/shape/a$b;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->e:I

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->h(Lcom/mbridge/msdk/video/dynview/shape/a$b;)F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->b:F

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->i(Lcom/mbridge/msdk/video/dynview/shape/a$b;)F

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->c:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->i:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->i:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->j:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/video/dynview/shape/a$b;Lcom/mbridge/msdk/video/dynview/shape/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/shape/a;-><init>(Lcom/mbridge/msdk/video/dynview/shape/a$b;)V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/video/dynview/shape/a$b;
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/video/dynview/shape/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;-><init>(Lcom/mbridge/msdk/video/dynview/shape/a$a;)V

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->c:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->d:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->e:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->c:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->d:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->e:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->h:Z

    if-eqz v3, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/video/dynview/shape/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->f:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v3}, Lcom/mbridge/msdk/video/dynview/shape/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->d:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->e:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->b:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->b:F

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->c:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->d:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->e:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->c:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->h:Z

    if-eqz v0, :cond_2

    :try_start_2
    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/video/dynview/shape/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->g:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v0}, Lcom/mbridge/msdk/video/dynview/shape/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->i:Landroid/graphics/Paint;

    const-string v1, "#40EAEAEA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->b:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->c:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->j:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->j:Landroid/graphics/Matrix;

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p3, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->c:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->d:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->e:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->b:F

    iget v4, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->d:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->e:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->b:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->h:Z

    if-eqz v3, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/video/dynview/shape/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->f:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v3}, Lcom/mbridge/msdk/video/dynview/shape/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->d:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->e:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->c:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->b:F

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->c:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->b:F

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->d:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->e:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->h:Z

    if-eqz v0, :cond_2

    :try_start_2
    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/video/dynview/shape/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->g:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v0}, Lcom/mbridge/msdk/video/dynview/shape/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/shape/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/shape/a;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/shape/a;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method
