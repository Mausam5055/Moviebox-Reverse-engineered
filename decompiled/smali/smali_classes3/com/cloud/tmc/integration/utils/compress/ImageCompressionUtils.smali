.class public final Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J:\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J8\u0010\u0008\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;",
        "",
        "()V",
        "calculateInSampleSize",
        "",
        "options",
        "Landroid/graphics/BitmapFactory$Options;",
        "ratio",
        "compressImage",
        "Ljava/io/File;",
        "imageFile",
        "quality",
        "compressedWidth",
        "compressedHeight",
        "compressDir",
        "",
        "",
        "imageData",
        "format",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 5

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x1

    move v2, p1

    move v3, v0

    :goto_0
    div-int v4, p1, p2

    if-gt v2, v4, :cond_1

    div-int v4, v0, p2

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    :goto_1
    shr-int/lit8 v2, v2, 0x1

    shr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final compressImage(Ljava/io/File;IIILjava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "imageFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/io/FilesKt;->w(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    const-string v1, "webp"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/compress/a;->a()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/compress/b;->a()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    invoke-static {p0}, Lkotlin/io/FilesKt;->g(Ljava/io/File;)[B

    move-result-object v1

    invoke-static {v1, p1, p2, p3, v0}, Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;->compressImage([BIIILandroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p1

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p4

    :cond_5
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compressed_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final compressImage([BIIILandroid/graphics/Bitmap$CompressFormat;)[B
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "imageData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p4, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    div-int/2addr v2, p2

    int-to-double v5, v2

    invoke-static {v5, v6}, Lkotlin/math/MathKt;->c(D)I

    move-result v2

    div-int/2addr v4, p3

    int-to-double v4, v4

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->c(D)I

    move-result v4

    invoke-static {v4, v2}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v2

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    div-int/2addr v2, p2

    int-to-double v4, v2

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->c(D)I

    move-result v2

    goto :goto_0

    :cond_2
    if-lez p3, :cond_3

    div-int/2addr v4, p3

    int-to-double v4, v4

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->c(D)I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    sget-object v4, Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;

    invoke-direct {v4, v0, v2}, Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p0

    invoke-static {p0, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez p2, :cond_4

    if-lez p3, :cond_4

    invoke-static {p0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    :cond_4
    if-lez p2, :cond_5

    int-to-float p3, v2

    int-to-float v2, p2

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float/2addr p3, v2

    float-to-int p3, p3

    invoke-static {p0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    :cond_5
    if-lez p3, :cond_6

    int-to-float p2, v0

    int-to-float v0, p3

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    :cond_6
    move-object p2, p0

    :goto_1
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, p4, p1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string p1, "outputStream.toByteArray()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic compressImage$default(Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/io/File;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/16 p1, 0x50

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;->compressImage(Ljava/io/File;IIILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic compressImage$default([BIIILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/Object;)[B
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/16 p1, 0x50

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_3

    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;->compressImage([BIIILandroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    return-object p0
.end method
