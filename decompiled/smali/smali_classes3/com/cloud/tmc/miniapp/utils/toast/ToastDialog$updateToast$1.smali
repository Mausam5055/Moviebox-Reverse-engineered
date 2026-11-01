.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;


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

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;->$toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;->$toast:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const-string v3, "window.attributes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->access$getMGlobalShow$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/16 v0, 0x7f6

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getVerticalMargin()F

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getHorizontalMargin()F

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getToastParams()Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getMask()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method
