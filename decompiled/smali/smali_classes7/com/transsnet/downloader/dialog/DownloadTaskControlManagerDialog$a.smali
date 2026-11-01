.class public final Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Lok/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;->a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lok/b$a;->a(Lok/b;Z)V

    return-void
.end method

.method public onFail()V
    .locals 3

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;->a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> interception() --> onFail() --> \u5931\u8d25\u4e86"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 5

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;->a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> checkRights --> onSuccess() --> \u6210\u529f\u4e86"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->a(Ljava/lang/String;)V

    new-instance v0, Loy/c;

    invoke-direct {v0}, Loy/c;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IMemberApi;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/memberapi/IMemberApi;->D()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Loy/c;->m(I)V

    sget-object v1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/transsnet/downloader/manager/g;->r(Loy/c;)V

    invoke-static {v1, v3, v2, v3}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsnet/downloader/manager/g;->w()V

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/transsnet/downloader/R$string;->download_task_control_manager_start_mul:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;->a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
