.class public interface abstract Lcom/cloud/tmc/integration/chain/ChainContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/chain/ChainContext$Companion;,
        Lcom/cloud/tmc/integration/chain/ChainContext$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/ChainContext;",
        "",
        "contextType",
        "Lcom/cloud/tmc/integration/chain/ContextType;",
        "getContextType",
        "()Lcom/cloud/tmc/integration/chain/ContextType;",
        "destroy",
        "",
        "data",
        "Landroid/os/Bundle;",
        "log",
        "msg",
        "",
        "setChainState",
        "chainState",
        "Lcom/cloud/tmc/integration/chain/ChainState;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/chain/ChainContext$Companion;

.field public static final TAG_CHAIN:Ljava/lang/String; = "chainPoint"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/chain/ChainContext$Companion;->$$INSTANCE:Lcom/cloud/tmc/integration/chain/ChainContext$Companion;

    sput-object v0, Lcom/cloud/tmc/integration/chain/ChainContext;->Companion:Lcom/cloud/tmc/integration/chain/ChainContext$Companion;

    return-void
.end method


# virtual methods
.method public abstract destroy(Landroid/os/Bundle;)V
.end method

.method public abstract getContextType()Lcom/cloud/tmc/integration/chain/ContextType;
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public abstract setChainState(Lcom/cloud/tmc/integration/chain/ChainState;)V
.end method
