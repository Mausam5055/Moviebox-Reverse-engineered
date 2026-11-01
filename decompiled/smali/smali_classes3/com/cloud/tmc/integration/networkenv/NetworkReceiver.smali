.class public Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static ETHERNET_TIME:J = 0x0L

.field private static LAST_TYPE:I = -0x3

.field private static final NETWORK_MOBILE:I = 0x1

.field private static final NETWORK_NONE:I = -0x1

.field private static final NETWORK_WIFI:I = 0x0

.field private static NONE_TIME:J = 0x0L

.field private static TAG:Ljava/lang/String; = "TAG"

.field private static WIFI_TIME:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v0
.end method


# virtual methods
.method public getTime()J
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->WIFI_TIME:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    sget-wide v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->ETHERNET_TIME:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    sget-wide v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->NONE_TIME:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->getNetworkState(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    sget p2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    if-eqz p2, :cond_0

    sput-wide v0, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->WIFI_TIME:J

    sput p1, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "wifi\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    sget v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    if-eq v2, p2, :cond_1

    sput-wide v0, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->ETHERNET_TIME:J

    sput p1, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6570\u636e\u7f51\u7edc\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    sget v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    if-eq v2, p2, :cond_2

    sput-wide v0, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->NONE_TIME:J

    sput p1, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u65e0\u7f51\u7edc\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method
