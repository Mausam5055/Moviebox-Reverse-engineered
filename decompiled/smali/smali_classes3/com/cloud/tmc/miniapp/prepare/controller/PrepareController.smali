.class public interface abstract Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;
    }
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract lock(Ljava/lang/Object;)V
.end method

.method public abstract moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
.end method

.method public abstract moveToNext()V
.end method

.method public abstract start()V
.end method

.method public abstract unlock(Ljava/lang/Object;)V
.end method
