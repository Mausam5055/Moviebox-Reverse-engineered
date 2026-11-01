.class public final Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/CommonDialogOperate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp;->showCommonDialogWithOperate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)Lcom/cloud/tmc/integration/callback/CommonDialogOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOo00;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOo00;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/ToastImp$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
