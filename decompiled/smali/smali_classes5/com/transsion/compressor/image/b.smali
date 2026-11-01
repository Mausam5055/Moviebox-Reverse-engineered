.class public Lcom/transsion/compressor/image/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/transsion/compressor/image/d;

.field private c:I

.field private d:I

.field private final e:Z


# direct methods
.method constructor <init>(Lcom/transsion/compressor/image/d;Ljava/io/File;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/compressor/image/b;->a:Ljava/io/File;

    iput-object p1, p0, Lcom/transsion/compressor/image/b;->b:Lcom/transsion/compressor/image/d;

    iput-boolean p3, p0, Lcom/transsion/compressor/image/b;->e:Z

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput p3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-interface {p1}, Lcom/transsion/compressor/image/d;->open()Ljava/io/InputStream;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Lcom/transsion/compressor/image/b;->c:I

    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lcom/transsion/compressor/image/b;->d:I

    return-void
.end method

.method private b()I
    .locals 8

    iget v0, p0, Lcom/transsion/compressor/image/b;->c:I

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iput v0, p0, Lcom/transsion/compressor/image/b;->c:I

    iget v1, p0, Lcom/transsion/compressor/image/b;->d:I

    rem-int/lit8 v3, v1, 0x2

    if-ne v3, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iput v1, p0, Lcom/transsion/compressor/image/b;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/transsion/compressor/image/b;->c:I

    iget v3, p0, Lcom/transsion/compressor/image/b;->d:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, v0

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    const-wide/high16 v4, 0x3fe2000000000000L    # 0.5625

    if-gtz v3, :cond_5

    float-to-double v6, v1

    cmpl-double v3, v6, v4

    if-lez v3, :cond_5

    const/16 v1, 0x680

    if-ge v0, v1, :cond_2

    return v2

    :cond_2
    const/16 v1, 0x137e

    if-ge v0, v1, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    if-le v0, v1, :cond_4

    const/16 v1, 0x2800

    if-ge v0, v1, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    div-int/lit16 v0, v0, 0x500

    return v0

    :cond_5
    float-to-double v6, v1

    cmpg-double v1, v6, v4

    if-gtz v1, :cond_7

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v6, v3

    if-lez v1, :cond_7

    div-int/lit16 v0, v0, 0x500

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v2, v0

    :goto_0
    return v2

    :cond_7
    int-to-double v0, v0

    const-wide/high16 v2, 0x4094000000000000L    # 1280.0

    div-double/2addr v2, v6

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a()Ljava/io/File;
    .locals 6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-direct {p0}, Lcom/transsion/compressor/image/b;->b()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v1, p0, Lcom/transsion/compressor/image/b;->b:Lcom/transsion/compressor/image/d;

    invoke-interface {v1}, Lcom/transsion/compressor/image/d;->open()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Lcom/transsion/compressor/image/Checker;->SINGLE:Lcom/transsion/compressor/image/Checker;

    iget-object v4, p0, Lcom/transsion/compressor/image/b;->b:Lcom/transsion/compressor/image/d;

    invoke-interface {v4}, Lcom/transsion/compressor/image/d;->open()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/compressor/image/Checker;->isJpg(Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/transsion/compressor/image/b;->b:Lcom/transsion/compressor/image/d;

    invoke-interface {v4}, Lcom/transsion/compressor/image/d;->open()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/compressor/image/Checker;->getOrientation(Ljava/io/InputStream;)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/transsion/compressor/image/b;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x46

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/transsion/compressor/image/b;->a:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v0, p0, Lcom/transsion/compressor/image/b;->a:Ljava/io/File;

    return-object v0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v2
.end method
