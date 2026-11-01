.class public final Lcg/b;
.super Lokhttp3/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcg/b$a;
    }
.end annotation


# static fields
.field public static final c:Lcg/b$a;

.field private static final d:Lokhttp3/EventListener$Factory;


# instance fields
.field private a:Lcom/tmc/network/stat/RequestStat;

.field private b:Lcom/tmc/network/stat/ConnectStat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcg/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcg/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcg/b;->c:Lcg/b$a;

    new-instance v0, Lcg/a;

    invoke-direct {v0}, Lcg/a;-><init>()V

    sput-object v0, Lcg/b;->d:Lokhttp3/EventListener$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcg/b;-><init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;)V
    .locals 2

    const-string v0, "requestStat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectStat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    iput-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iput-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    sget-object p1, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor;->isConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tmc/network/stat/ConnectStat;->setNetworkConnected(Z)V

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor;->getNetworkStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tmc/network/stat/ConnectStat;->setNetStatus(I)V

    iget-object p2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object v0, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->getNetStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tmc/network/stat/RequestStat;->setNetStatus(I)V

    iget-object p2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object v0, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->isNetworkConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tmc/network/stat/RequestStat;->setNetworkConnected(Z)V

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tmc/network/stat/ConnectStat;->setAppName(Ljava/lang/String;)V

    iget-object p2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tmc/network/stat/RequestStat;->setAppName(Ljava/lang/String;)V

    iget-object p2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tmc/network/stat/RequestStat;->setNetworkType(Ljava/lang/String;)V

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor;->getNetworkType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/stat/ConnectStat;->setNetworkType(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setNetworkImprove(Z)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setNetworkImprove(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Lcom/tmc/network/stat/RequestStat;

    invoke-direct {p1}, Lcom/tmc/network/stat/RequestStat;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Lcom/tmc/network/stat/ConnectStat;

    invoke-direct {p2}, Lcom/tmc/network/stat/ConnectStat;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcg/b;-><init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;)V

    return-void
.end method

.method public static synthetic b(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    invoke-static {p0}, Lcg/b;->c(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcg/b;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcg/b;-><init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public static final synthetic d()Lokhttp3/EventListener$Factory;
    .locals 1

    sget-object v0, Lcg/b;->d:Lokhttp3/EventListener$Factory;

    return-object v0
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getCallStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setOnewayTime(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1}, Lcom/tmc/network/stat/RequestStat;->isPre()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    move-result-object p1

    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v0}, Lcom/tmc/monitor/AppMonitor;->c(Leg/c;)V

    :cond_0
    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getCallStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setOnewayTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object v0, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->getRet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setConnRet(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setErrMsg(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/RequestStat;->getStep()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/16 p2, -0x18f

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setErrCode(I)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getDnsStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setDnsTime(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1}, Lcom/tmc/network/stat/ConnectStat;->isPre()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    move-result-object p1

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1, p2}, Lcom/tmc/monitor/AppMonitor;->c(Leg/c;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/16 p2, -0x192

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setErrCode(I)V

    goto :goto_0

    :cond_1
    instance-of p1, p2, Ljava/net/ConnectException;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/16 p2, -0x190

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setErrCode(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/16 p2, -0x196

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setErrCode(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1}, Lcom/tmc/network/stat/RequestStat;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Canceled"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1}, Lcom/tmc/network/stat/RequestStat;->isPre()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    move-result-object p1

    iget-object p2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, p2}, Lcom/tmc/monitor/AppMonitor;->c(Leg/c;)V

    :cond_4
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/RequestStat;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setHost(Ljava/lang/String;)V

    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object v1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v1}, Lcom/tmc/network/stat/ConnectStat;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/RequestStat;->setHost(Ljava/lang/String;)V

    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tmc/network/stat/RequestStat;->setCallStart(J)V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "isPre"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/RequestStat;->setPre(Z)V

    iget-object v0, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setPre(Z)V

    :cond_0
    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    const-string v1, "requestChannel"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tmc/network/stat/RequestStat;->setRequestChannel(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    return-void
.end method

.method public canceled(Lokhttp3/Call;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->canceled(Lokhttp3/Call;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getCallStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setOnewayTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setIp(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setProtocol(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setRet(I)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p4, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p4}, Lcom/tmc/network/stat/ConnectStat;->getConnectStart()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/ConnectStat;->setConnTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getConnTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setConnWaitTime(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1}, Lcom/tmc/network/stat/ConnectStat;->getConnTime()J

    move-result-wide p2

    iget-object p4, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p4}, Lcom/tmc/network/stat/ConnectStat;->getTlsTime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/ConnectStat;->setTcpTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getTcpTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setTcpTime(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    iget-object p2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/RequestStat;->getStep()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1}, Lcom/tmc/network/stat/ConnectStat;->isPre()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    move-result-object p1

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1, p2}, Lcom/tmc/monitor/AppMonitor;->c(Leg/c;)V

    :cond_2
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-object v0, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->getConnectStart()J

    move-result-wide v0

    sub-long/2addr p3, v0

    invoke-virtual {p1, p3, p4}, Lcom/tmc/network/stat/ConnectStat;->setConnTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object p3, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p3}, Lcom/tmc/network/stat/ConnectStat;->getConnTime()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/tmc/network/stat/RequestStat;->setConnWaitTime(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setRet(I)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrMsg(Ljava/lang/String;)V

    instance-of p1, p5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/16 p3, -0x192

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrCode(I)V

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "Certificate pinning failure!"

    const/4 p4, 0x1

    invoke-static {p1, p3, p4}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne p1, p4, :cond_4

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1, p4}, Lcom/tmc/network/stat/ConnectStat;->setPinning(Z)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, p4}, Lcom/tmc/network/stat/RequestStat;->setPinning(Z)V

    goto :goto_0

    :cond_1
    instance-of p1, p5, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrCode(I)V

    goto :goto_0

    :cond_2
    instance-of p1, p5, Ljava/net/ConnectException;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/16 p3, -0x190

    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrCode(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/16 p3, -0x196

    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrCode(I)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    iget-object p3, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p3}, Lcom/tmc/network/stat/RequestStat;->getStep()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1}, Lcom/tmc/network/stat/ConnectStat;->isPre()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    move-result-object p1

    iget-object p3, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1, p3}, Lcom/tmc/monitor/AppMonitor;->c(Leg/c;)V

    :cond_5
    sget-object p1, Lcom/tmc/network/strategy/LocalDnsStrategy;->c:Lcom/tmc/network/strategy/LocalDnsStrategy$a;

    invoke-virtual {p1}, Lcom/tmc/network/strategy/LocalDnsStrategy$a;->a()Lcom/tmc/network/strategy/LocalDnsStrategy;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "inetSocketAddress.hostName"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    const-string p4, "inetSocketAddress.address"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/tmc/network/strategy/LocalDnsStrategy;->i(Ljava/lang/String;Ljava/net/InetAddress;)V

    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setConnectStart(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setIp(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getIp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setIp(Ljava/lang/String;)V

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setConnRet(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-interface {p2}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tmc/network/stat/RequestStat;->setIp(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tmc/network/stat/RequestStat;->setProtocol(Ljava/lang/String;)V

    invoke-interface {p2}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setPinning(Z)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setPinning(Z)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-interface {p2}, Lokhttp3/Connection;->handshake()Lokhttp3/Handshake;

    move-result-object p2

    const-string v0, ""

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setTlsVersion(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    iget-object p2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/RequestStat;->getTlsVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setTlsVersion(Ljava/lang/String;)V

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetAddressList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->getDnsStart()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/ConnectStat;->setDnsTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getDnsTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setDnsTime(J)V

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setDnsStart(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/RequestStat;->getReqBodyStart()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setReqBodyTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setSendDataEnd(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/RequestStat;->getReqHeaderStart()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setSendDataTime(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setReqBodyStart(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/RequestStat;->getReqHeaderStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setReqHeaderTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setSendDataEnd(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1}, Lcom/tmc/network/stat/RequestStat;->getReqHeaderTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setSendDataTime(J)V

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setReqHeaderStart(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setRecvBodySize(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/RequestStat;->getSendDataEnd()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setRecvDataTime(J)V

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getResHeaderStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setResHeaderTime(J)V

    const-string p1, "X-Cache"

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const-string v3, "miss"

    invoke-virtual {v2, v3}, Lcom/tmc/network/stat/RequestStat;->setXCache(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "hit"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v2}, Lcom/tmc/network/stat/RequestStat;->setXCache(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const-string v2, "x-request-cdn"

    invoke-static {p2, v2, v0, v1, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tmc/network/stat/RequestStat;->setRequestSrc(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const-string v2, "X-LLID"

    invoke-static {p2, v2, v0, v1, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tmc/network/stat/RequestStat;->setRequestLLID(Ljava/lang/String;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const-string v2, "EagleId"

    invoke-static {p2, v2, v0, v1, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setEagleId(Ljava/lang/String;)V

    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getSendDataEnd()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setFirstDataTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setResHeaderStart(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getTlsStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setTlsTime(J)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object p2, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getTlsTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setTlsTime(J)V

    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setTlsStart(J)V

    iget-object p1, p0, Lcg/b;->b:Lcom/tmc/network/stat/ConnectStat;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    iget-object p1, p0, Lcg/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    return-void
.end method
