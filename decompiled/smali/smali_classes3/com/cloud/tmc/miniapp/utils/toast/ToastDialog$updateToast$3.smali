.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->updateToast(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->$toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 1

    const-string p1, "ToastDialog"

    const-string v0, "onDismiss"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->$toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->access$isLoadingToastType(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->access$cancelAnimator(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    :cond_0
    return-void
.end method
