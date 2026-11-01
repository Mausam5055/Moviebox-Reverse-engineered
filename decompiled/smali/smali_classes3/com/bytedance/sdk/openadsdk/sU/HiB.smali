.class public Lcom/bytedance/sdk/openadsdk/sU/HiB;
.super Ljava/lang/Object;


# static fields
.field public static Dq:I = 0x2

.field protected static EjP:I = 0x1e

.field protected static HiB:J = 0x3c00L

.field public static Jcg:I = 0x1

.field protected static Sj:Ljava/lang/String; = "images"

.field public static TEQ:I = 0x8

.field protected static TKC:I = 0x1

.field public static Ym:I = 0x10

.field public static aa:I = 0x20

.field protected static sP:Ljava/lang/String; = null

.field public static uA:I = 0x4

.field public static vS:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static Sj(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static Sj(Landroid/content/Context;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    move v0, p0

    :goto_1
    move p0, v3

    goto :goto_3

    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_3
    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public static Sj(Landroid/content/Context;I)Z
    .locals 5

    sget v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_0

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    :goto_0
    const-string v3, "android.permission.CAMERA"

    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    sget v2, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Jcg:I

    or-int/2addr v0, v2

    sput v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "android.hardware.camera"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    sget v2, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Dq:I

    or-int/2addr v0, v2

    sput v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    :cond_2
    const-string v0, "android.hardware.sensor.gyroscope"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    sget v2, Lcom/bytedance/sdk/openadsdk/sU/HiB;->uA:I

    or-int/2addr v0, v2

    sput v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    :cond_3
    const-string v0, "android.hardware.sensor.accelerometer"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    sget v2, Lcom/bytedance/sdk/openadsdk/sU/HiB;->TEQ:I

    or-int/2addr v0, v2

    sput v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    :cond_4
    const-string v0, "android.hardware.sensor.compass"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    sget v2, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Ym:I

    or-int/2addr v0, v2

    sput v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    :cond_5
    if-eqz v4, :cond_6

    const-string v0, "android.hardware.microphone"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget p0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    sget v0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->aa:I

    or-int/2addr p0, v0

    sput p0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    :cond_6
    sget p0, Lcom/bytedance/sdk/openadsdk/sU/HiB;->vS:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method protected static Sj(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static sP(Landroid/content/Context;)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static sP(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
