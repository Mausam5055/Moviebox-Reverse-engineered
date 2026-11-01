.class public interface abstract Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelToast()V
.end method

.method public abstract createToast(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;)",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;"
        }
    .end annotation
.end method

.method public abstract registerStrategy(Landroid/app/Application;)V
.end method

.method public abstract showToast(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V
.end method
