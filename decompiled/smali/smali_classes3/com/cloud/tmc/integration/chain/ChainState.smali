.class public interface abstract Lcom/cloud/tmc/integration/chain/ChainState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/chain/ChainState$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0007H\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0016J\u0012\u0010\u001a\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/ChainState;",
        "",
        "chainType",
        "Lcom/cloud/tmc/integration/chain/ChainType;",
        "getChainType",
        "()Lcom/cloud/tmc/integration/chain/ChainType;",
        "dataBundle",
        "Landroid/os/Bundle;",
        "getDataBundle",
        "()Landroid/os/Bundle;",
        "step",
        "",
        "getStep",
        "()I",
        "value",
        "",
        "time",
        "getTime",
        "()J",
        "setTime",
        "(J)V",
        "insertData",
        "",
        "chainState",
        "data",
        "log",
        "setChainContext",
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


# virtual methods
.method public abstract getChainType()Lcom/cloud/tmc/integration/chain/ChainType;
.end method

.method public abstract getDataBundle()Landroid/os/Bundle;
.end method

.method public abstract getStep()I
.end method

.method public abstract getTime()J
.end method

.method public abstract insertData(Lcom/cloud/tmc/integration/chain/ChainState;Landroid/os/Bundle;)V
.end method

.method public abstract log()V
.end method

.method public abstract setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
.end method

.method public abstract setTime(J)V
.end method
