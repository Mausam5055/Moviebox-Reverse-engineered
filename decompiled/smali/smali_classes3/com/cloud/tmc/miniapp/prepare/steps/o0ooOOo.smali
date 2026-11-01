.class public Lcom/cloud/tmc/miniapp/prepare/steps/o0ooOOo;
.super Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    invoke-direct {v0, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_0
    return-void
.end method

.method public OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->WARMUP_CHECK:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    return-object v0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    new-instance p3, Lcom/cloud/tmc/integration/model/AppInfoQuery;

    const-string v0, "100000"

    invoke-direct {p3, v0}, Lcom/cloud/tmc/integration/model/AppInfoQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppInfoQuery(Lcom/cloud/tmc/integration/model/AppInfoQuery;)V

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    if-nez p3, :cond_0

    const-string p2, "appInfoManager\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o0ooOOo;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p2, "\u6846\u67b6\u5305AppModel\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o0ooOOo;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/integration/model/PrepareContext;->setFrameWorkModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-interface {p2, p3}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    goto :goto_0

    :cond_2
    const-string p2, "\u672c\u5730\u4e0d\u5b58\u5728\u6846\u67b6\u5305\u6587\u4ef6"

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o0ooOOo;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
