.class public Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;
.super Lcom/cloud/tmc/integration/net/TmcResponseCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback<",
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0Oo:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1$1;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;)V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/net/BaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v0, "Step_FRAMEWORK_UPDATE_\u6570\u636e\u66f4\u65b0\u5931\u8d25"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;->OooO0oo:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-interface {p2, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "100000"

    invoke-static {v1, v0, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showUpdateStepErrorMsg(Ljava/lang/String;ILjava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->setFrameWorkModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    iget-boolean p2, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;->OooO0oo:Z

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p2, "Step_FRAMEWORK_UPDATE_\u540c\u6b65\u8df3\u8f6c"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/net/BaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Lcom/cloud/tmc/integration/model/AppInfoModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/AppInfoModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Lcom/cloud/tmc/integration/net/BaseResponse;

    invoke-direct {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;->OooO00o(Lcom/cloud/tmc/integration/model/AppInfoModel;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V

    return-void
.end method
