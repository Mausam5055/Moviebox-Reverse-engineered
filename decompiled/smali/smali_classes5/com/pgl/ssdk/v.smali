.class public Lcom/pgl/ssdk/v;
.super Ljava/lang/Object;


# static fields
.field public static a:I = -0x1

.field public static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 3

    sget v0, Lcom/pgl/ssdk/v;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/pgl/ssdk/x;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/ssdk/u0;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "camera_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    sput v0, Lcom/pgl/ssdk/v;->b:I

    return v0

    :cond_1
    new-instance v0, Lcom/pgl/ssdk/v$a;

    invoke-direct {v0}, Lcom/pgl/ssdk/v$a;-><init>()V

    invoke-static {v0}, Lcom/pgl/ssdk/o0;->b(Ljava/lang/Runnable;)V

    return v1
.end method

.method static synthetic a(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/pgl/ssdk/v;->b(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/pgl/ssdk/v;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    sput p0, Lcom/pgl/ssdk/v;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput v1, Lcom/pgl/ssdk/v;->b:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x2

    sput p0, Lcom/pgl/ssdk/v;->b:I

    :goto_0
    sget p0, Lcom/pgl/ssdk/v;->b:I

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/pgl/ssdk/v;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    sput p0, Lcom/pgl/ssdk/v;->a:I

    :cond_0
    sget p0, Lcom/pgl/ssdk/v;->a:I

    return p0
.end method
