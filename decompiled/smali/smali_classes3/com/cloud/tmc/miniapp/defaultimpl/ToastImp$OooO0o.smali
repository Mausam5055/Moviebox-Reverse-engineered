.class public final Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooOo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->showCommonDialogWithOperate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)Lcom/cloud/tmc/integration/callback/CommonDialogOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/callback/CommonDialogCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0o;->OooO00o:Lcom/cloud/tmc/integration/callback/CommonDialogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0o;->OooO00o:Lcom/cloud/tmc/integration/callback/CommonDialogCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/CommonDialogCallback;->onLeftClick()V

    :cond_0
    return-void
.end method

.method public OooO0O0(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO0o;->OooO00o:Lcom/cloud/tmc/integration/callback/CommonDialogCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/CommonDialogCallback;->onRightClick()V

    :cond_0
    return-void
.end method
