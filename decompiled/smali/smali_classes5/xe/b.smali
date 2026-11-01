.class public Lxe/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lid/b;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Lid/b;->n()I

    move-result v6

    invoke-virtual {p1}, Lid/b;->k()I

    move-result v7

    mul-int v0, v6, v7

    new-array v1, v0, [I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v7, :cond_2

    mul-int v3, v2, v6

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_1

    add-int v5, v3, v4

    invoke-virtual {p1, v4, v2}, Lid/b;->g(II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/high16 v8, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v8, -0x1

    :goto_2
    aput v8, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lid/b;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/zxing/g;

    invoke-direct {v0}, Lcom/google/zxing/g;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/zxing/g;->b(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lid/b;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lcom/google/zxing/WriterException;

    invoke-direct {p2, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
.end method
