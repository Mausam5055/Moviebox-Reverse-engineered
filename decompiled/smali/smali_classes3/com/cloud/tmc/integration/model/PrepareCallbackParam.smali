.class public final Lcom/cloud/tmc/integration/model/PrepareCallbackParam;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u001e\u001a\u00020\rH\u0016R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;",
        "",
        "context",
        "Lcom/cloud/tmc/integration/model/PrepareContext;",
        "(Lcom/cloud/tmc/integration/model/PrepareContext;)V",
        "()V",
        "action",
        "Lcom/cloud/tmc/integration/activity/StartAction;",
        "appInfo",
        "Lcom/cloud/tmc/integration/model/AppModel;",
        "appLoadResult",
        "Lcom/cloud/tmc/integration/structure/AppLoadResult;",
        "frameworkVersion",
        "",
        "getFrameworkVersion",
        "()Ljava/lang/String;",
        "setFrameworkVersion",
        "(Ljava/lang/String;)V",
        "needWaitIpc",
        "",
        "getNeedWaitIpc",
        "()Z",
        "setNeedWaitIpc",
        "(Z)V",
        "startParams",
        "Landroid/os/Bundle;",
        "getStartParams",
        "()Landroid/os/Bundle;",
        "setStartParams",
        "(Landroid/os/Bundle;)V",
        "toString",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public action:Lcom/cloud/tmc/integration/activity/StartAction;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public appInfo:Lcom/cloud/tmc/integration/model/AppModel;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private frameworkVersion:Ljava/lang/String;

.field private needWaitIpc:Z

.field private startParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appInfo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->startParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getFrameworkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->frameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeedWaitIpc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->needWaitIpc:Z

    return v0
.end method

.method public final getStartParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public final setFrameworkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->frameworkVersion:Ljava/lang/String;

    return-void
.end method

.method public final setNeedWaitIpc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->needWaitIpc:Z

    return-void
.end method

.method public final setStartParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->startParams:Landroid/os/Bundle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->needWaitIpc:Z

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->action:Lcom/cloud/tmc/integration/activity/StartAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrepareCallbackParam{, needWaitIpc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", action="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
