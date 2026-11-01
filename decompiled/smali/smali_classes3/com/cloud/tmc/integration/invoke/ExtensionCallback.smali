.class public interface abstract Lcom/cloud/tmc/integration/invoke/ExtensionCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onException(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Throwable;)V
.end method

.method public abstract onInterrupt(Lcom/cloud/tmc/kernel/extension/Extension;)V
.end method

.method public abstract onProgress(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onStart(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation
.end method
