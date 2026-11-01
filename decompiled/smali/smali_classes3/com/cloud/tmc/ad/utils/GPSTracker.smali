.class public Lcom/cloud/tmc/ad/utils/GPSTracker;
.super Ljava/lang/Object;


# static fields
.field private static accu:I = 0x0

.field private static coordTime:J = 0x0L

.field private static coordTimeStr:Ljava/lang/String; = ""

.field private static latitude:D

.field private static location:Landroid/location/Location;

.field private static longitude:D

.field private static final mFailTimes:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->mFailTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getLocation()V

    return-void
.end method

.method private static checkNeedRetry()Z
    .locals 4

    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->longitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->mFailTimes:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public static getAccu()I
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    sget v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->accu:I

    return v0
.end method

.method public static getCoordTime()J
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTime:J

    return-wide v0
.end method

.method public static getCoordTimeStr()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    sget-object v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTimeStr:Ljava/lang/String;

    return-object v0
.end method

.method public static getLatitude()D
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->latitude:D

    return-wide v0
.end method

.method private static getLocation()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "ssp"

    const-string v1, "network"

    const-string v2, "gps"

    :try_start_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    return-void

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    sput-object v2, Lcom/cloud/tmc/ad/utils/GPSTracker;->location:Landroid/location/Location;

    invoke-static {v2}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateGPSCoordinates(Landroid/location/Location;)V

    :cond_1
    if-eqz v5, :cond_2

    sget-object v2, Lcom/cloud/tmc/ad/utils/GPSTracker;->location:Landroid/location/Location;

    if-nez v2, :cond_2

    const-string v2, "Positioning through the network"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    sput-object v1, Lcom/cloud/tmc/ad/utils/GPSTracker;->location:Landroid/location/Location;

    invoke-static {v1}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateGPSCoordinates(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v1, "Location Impossible to connect to LocationManager"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    sget-object v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateGPSCoordinates(Landroid/location/Location;)V

    :cond_3
    return-void
.end method

.method public static getLongitude()D
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->longitude:D

    return-wide v0
.end method

.method private static updateGPSCoordinates(Landroid/location/Location;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->latitude:D

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->longitude:D

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->accu:I

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTime:J

    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss SSS Z"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    sget-wide v1, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTimeStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ad"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static updateLocation()V
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->checkNeedRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getLocation()V

    :cond_0
    return-void
.end method
