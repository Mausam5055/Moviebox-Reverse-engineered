.class public final Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;
.super Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;


# instance fields
.field private final application:Landroid/app/Application;

.field private mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->application:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isShow()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->application:Landroid/app/Application;

    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;-><init>(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ApplicationToast;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "ApplicationToast"

    const-string v2, "show"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
