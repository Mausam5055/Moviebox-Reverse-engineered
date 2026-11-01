.class public interface abstract Lcom/cloud/tmc/integration/invoke/action/Action$Progress;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/invoke/action/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/invoke/action/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Progress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/integration/invoke/action/Action;"
    }
.end annotation


# virtual methods
.method public abstract onProgress(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            "TT;)V"
        }
    .end annotation
.end method
