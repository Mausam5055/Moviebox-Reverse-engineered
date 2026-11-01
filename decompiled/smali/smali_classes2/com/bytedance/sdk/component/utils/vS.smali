.class public Lcom/bytedance/sdk/component/utils/vS;
.super Ljava/lang/Object;


# direct methods
.method public static Sj([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v3, p0

    invoke-static {p0, v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p0, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public static sP([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x47

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    const/16 v3, 0x49

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    const/16 v2, 0x46

    if-ne p0, v2, :cond_0

    return v1

    :cond_0
    return v0
.end method
