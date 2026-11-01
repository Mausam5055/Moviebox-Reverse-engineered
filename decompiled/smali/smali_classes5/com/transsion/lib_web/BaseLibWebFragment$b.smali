.class public final Lcom/transsion/lib_web/BaseLibWebFragment$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/lib_web/BaseLibWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/lib_web/BaseLibWebFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$b;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reportLoadError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgm/i;->a:Lgm/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLoadError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgm/i;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/lib_web/domain/DomPerformance;

    invoke-direct {v0}, Lcom/transsion/lib_web/domain/DomPerformance;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setErrorMsg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$b;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setDom_performance(Lcom/transsion/lib_web/domain/DomPerformance;)V

    return-void
.end method

.method public final reportLoadStats(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgm/i;->a:Lgm/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLoadStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgm/i;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$b;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/transsion/lib_web/LoadUrlData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/a;->r(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/transsion/lib_web/domain/DomPerformance;

    invoke-direct {v0}, Lcom/transsion/lib_web/domain/DomPerformance;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "dnsLookup"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setDnsLookup(Ljava/lang/Long;)V

    const-string p1, "tcpConnect"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setTcpConnect(Ljava/lang/Long;)V

    const-string p1, "requestTime"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setRequestTime(Ljava/lang/Long;)V

    const-string p1, "responseTime"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setResponseTime(Ljava/lang/Long;)V

    const-string p1, "domLoading"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setDomLoading(Ljava/lang/Long;)V

    const-string p1, "domInteractive"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setDomInteractive(Ljava/lang/Long;)V

    const-string p1, "domComplete"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setDomComplete(Ljava/lang/Long;)V

    const-string p1, "loadEventTime"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setLoadEventTime(Ljava/lang/Long;)V

    const-string p1, "totalLoadTime"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setTotalLoadTime(Ljava/lang/Long;)V

    const-string p1, "readyState"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setReadyState(Ljava/lang/String;)V

    const-string p1, "success"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setSuccess(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$b;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setDom_performance(Lcom/transsion/lib_web/domain/DomPerformance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
