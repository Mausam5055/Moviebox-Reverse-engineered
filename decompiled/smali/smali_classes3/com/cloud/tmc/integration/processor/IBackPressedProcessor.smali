.class public interface abstract Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "addInterceptors",
        "",
        "intercept",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
        "getInterceptors",
        "",
        "removeInterceptors",
        "startBackPressedInterceptorChain",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;",
        "params",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;",
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
.method public abstract addInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V
.end method

.method public abstract getInterceptors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V
.end method

.method public abstract startBackPressedInterceptorChain(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
.end method
