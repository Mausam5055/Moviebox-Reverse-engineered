.class public interface abstract Lcom/cloud/tmc/integration/invoke/action/Action$Complete;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/invoke/action/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/invoke/action/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Complete"
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
.method public abstract onComplete(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
