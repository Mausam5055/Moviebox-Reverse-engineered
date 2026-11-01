.class public final Lcom/cloud/tmc/integration/model/NavigateData;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/NavigateData;",
        "",
        "()V",
        "actionName",
        "",
        "getActionName",
        "()Ljava/lang/String;",
        "setActionName",
        "(Ljava/lang/String;)V",
        "delta",
        "",
        "getDelta",
        "()I",
        "setDelta",
        "(I)V",
        "isAutoExit",
        "",
        "()Z",
        "setAutoExit",
        "(Z)V",
        "params",
        "getParams",
        "setParams",
        "url",
        "getUrl",
        "setUrl",
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
.field private actionName:Ljava/lang/String;

.field private delta:I

.field private isAutoExit:Z

.field private params:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/model/NavigateData;->isAutoExit:Z

    return-void
.end method


# virtual methods
.method public final getActionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/NavigateData;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDelta()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/NavigateData;->delta:I

    return v0
.end method

.method public final getParams()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/NavigateData;->params:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/NavigateData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final isAutoExit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/NavigateData;->isAutoExit:Z

    return v0
.end method

.method public final setActionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/NavigateData;->actionName:Ljava/lang/String;

    return-void
.end method

.method public final setAutoExit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/NavigateData;->isAutoExit:Z

    return-void
.end method

.method public final setDelta(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/NavigateData;->delta:I

    return-void
.end method

.method public final setParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/NavigateData;->params:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/NavigateData;->url:Ljava/lang/String;

    return-void
.end method
