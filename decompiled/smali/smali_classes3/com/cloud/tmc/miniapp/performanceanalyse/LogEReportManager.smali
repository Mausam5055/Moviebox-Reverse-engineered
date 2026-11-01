.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;,
        Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;


# instance fields
.field public OooO00o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0O0:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->Companion:Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getExistAppIds()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getForegroundAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->getRemoteGrayScale()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->getLocalGrayScal()F

    move-result v2

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->getRemoteGrayScale()F

    move-result v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tag"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LOG_ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {p1, v0, p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    new-instance v1, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO0O0:F

    invoke-direct {v1, v2, v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;-><init>(FF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public saveConfig(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO0O0:F

    return-void
.end method
