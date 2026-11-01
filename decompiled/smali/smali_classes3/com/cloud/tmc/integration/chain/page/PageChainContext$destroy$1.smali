.class final Lcom/cloud/tmc/integration/chain/page/PageChainContext$destroy$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/chain/page/PageChainContext;->destroy(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/chain/page/PageChainContext;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext$destroy$1;->this$0:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getRenderId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext$destroy$1;->this$0:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getRenderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext$destroy$1;->invoke(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
