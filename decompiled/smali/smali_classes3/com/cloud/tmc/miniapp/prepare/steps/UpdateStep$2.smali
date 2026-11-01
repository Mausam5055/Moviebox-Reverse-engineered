.class public Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;
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

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0Oo:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2$1;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;)V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 10
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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_UPDATE_server failed"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0Oo:Ljava/lang/String;

    const-string v8, "server"

    move-object v3, p1

    move-object v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;->OooO00o(Lcom/cloud/tmc/integration/net/BaseResponse;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 11
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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_UPDATE_server success"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0Oo:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    const-string v9, "server"

    move-object v3, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;->OooO00o(Lcom/cloud/tmc/integration/net/BaseResponse;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
