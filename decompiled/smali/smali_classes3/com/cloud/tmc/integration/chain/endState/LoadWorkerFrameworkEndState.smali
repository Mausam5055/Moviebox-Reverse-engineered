.class public final Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/chain/ChainState;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;",
        "Lcom/cloud/tmc/integration/chain/ChainState;",
        "dataBundle",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "chainType",
        "Lcom/cloud/tmc/integration/chain/ChainType;",
        "getChainType",
        "()Lcom/cloud/tmc/integration/chain/ChainType;",
        "getDataBundle",
        "()Landroid/os/Bundle;",
        "step",
        "",
        "getStep",
        "()I",
        "setChainContext",
        "",
        "chainContext",
        "Lcom/cloud/tmc/integration/chain/ChainContext;",
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
.field private final dataBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;-><init>(Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "dataBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->dataBundle:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getChainType()Lcom/cloud/tmc/integration/chain/ChainType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/chain/ChainType;->TYPE_END:Lcom/cloud/tmc/integration/chain/ChainType;

    return-object v0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->dataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStep()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getTime()J
    .locals 2

    invoke-static {p0}, Lcom/cloud/tmc/integration/chain/ChainState$DefaultImpls;->getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertData(Lcom/cloud/tmc/integration/chain/ChainState;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/ChainState$DefaultImpls;->insertData(Lcom/cloud/tmc/integration/chain/ChainState;Lcom/cloud/tmc/integration/chain/ChainState;Landroid/os/Bundle;)V

    return-void
.end method

.method public log()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/chain/ChainState$DefaultImpls;->log(Lcom/cloud/tmc/integration/chain/ChainState;)V

    return-void
.end method

.method public setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->log()V

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/cloud/tmc/integration/chain/ChainContext;->setChainState(Lcom/cloud/tmc/integration/chain/ChainState;)V

    :cond_0
    return-void
.end method

.method public setTime(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/ChainState$DefaultImpls;->setTime(Lcom/cloud/tmc/integration/chain/ChainState;J)V

    return-void
.end method
