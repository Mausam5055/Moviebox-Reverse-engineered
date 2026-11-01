.class public interface abstract Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;,
        Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;,
        Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;,
        Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u0003\u0010\u0011\u0012J,\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007H\u0016J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
        "",
        "backResult",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "isIntercept",
        "",
        "intercept",
        "isRemove",
        "getInterceptName",
        "",
        "getPriority",
        "",
        "chain",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;",
        "Chain",
        "Params",
        "Result",
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
.method public abstract backResult(Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Z)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
.end method

.method public abstract getInterceptName()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method public abstract intercept(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
.end method
