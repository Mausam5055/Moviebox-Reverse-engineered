.class public final Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J,\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0013H\u0014J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\r\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
        "tl",
        "",
        "tr",
        "br",
        "bl",
        "(FFFF)V",
        "ID",
        "",
        "kotlin.jvm.PlatformType",
        "radius",
        "",
        "[Ljava/lang/Float;",
        "equals",
        "",
        "o",
        "",
        "hashCode",
        "",
        "transform",
        "Landroid/graphics/Bitmap;",
        "pool",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
        "source",
        "outWidth",
        "outHeight",
        "updateDiskCacheKey",
        "",
        "messageDigest",
        "Ljava/security/MessageDigest;",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final ID:Ljava/lang/String;

.field private final radius:[Ljava/lang/Float;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const-class v0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->ID:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    check-cast p1, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    iget-object p1, p1, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p3, "pool"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "source"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p3, "pool[source.width, sourc\u2026 Bitmap.Config.ARGB_8888]"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p2, 0x1

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    invoke-virtual {p3, v2, v2, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p3, v0, v4, v1, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    aget-object p2, v1, p2

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    invoke-virtual {p3, v1, v2, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_3

    :cond_3
    move p2, v3

    :goto_3
    invoke-virtual {p3, v0, v1, p2, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    iget-object p2, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    aget-object p2, p2, v5

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/2addr v4, v5

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p3, v1, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_5

    :cond_5
    move p2, v3

    :goto_5
    invoke-virtual {p3, v0, v1, p2, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    iget-object p2, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    const/4 v1, 0x3

    aget-object p2, p2, v1

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/2addr v1, v5

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/2addr v4, v5

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p3, v2, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_7
    invoke-virtual {p3, v0, v1, v3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3

    const-string v0, "messageDigest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->ID:Ljava/lang/String;

    const-string v1, "ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    const-string v2, "CHARSET"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "allocate(4).putInt(Array\u2026hashCode(radius)).array()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
