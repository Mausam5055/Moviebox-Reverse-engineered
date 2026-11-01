.class public abstract Lcom/cloud/sdk/commonutil/util/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/location/Location; = null

.field private static b:D = 0.0

.field private static c:D = 0.0

.field private static d:I = 0x0

.field private static e:J = 0x0L

.field private static f:Ljava/lang/String; = ""

.field private static final g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/sdk/commonutil/util/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static a()Z
    .locals 4

    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->c:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->h()V

    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->e:J

    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->h()V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static d()D
    .locals 2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->h()V

    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->b:D

    return-wide v0
.end method

.method private static e()V
    .locals 5

    const-string v0, "network"

    const-string v1, "gps"

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    sput-object v1, Lcom/cloud/sdk/commonutil/util/d;->a:Landroid/location/Location;

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/d;->g(Landroid/location/Location;)V

    :cond_1
    if-eqz v4, :cond_2

    sget-object v1, Lcom/cloud/sdk/commonutil/util/d;->a:Landroid/location/Location;

    if-nez v1, :cond_2

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/d;->a:Landroid/location/Location;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/d;->g(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "ssp"

    const-string v2, "Location Impossible to connect to LocationManager"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/d;->a:Landroid/location/Location;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/d;->g(Landroid/location/Location;)V

    :cond_3
    return-void
.end method

.method public static f()D
    .locals 2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->h()V

    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->c:D

    return-wide v0
.end method

.method private static g(Landroid/location/Location;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/cloud/sdk/commonutil/util/d;->b:D

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/cloud/sdk/commonutil/util/d;->c:D

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/cloud/sdk/commonutil/util/d;->d:I

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/cloud/sdk/commonutil/util/d;->e:J

    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss SSS Z"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    sget-wide v1, Lcom/cloud/sdk/commonutil/util/d;->e:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cloud/sdk/commonutil/util/d;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static h()V
    .locals 1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->e()V

    :cond_0
    return-void
.end method
