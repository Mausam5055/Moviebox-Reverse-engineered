.class public final Lcom/transsion/commercialization/task/DownloadInterceptDialog$e;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/DownloadInterceptDialog;->w1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/DownloadInterceptDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$e;->a:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$e;->a:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> startMemberPage() --> onFailed() --> \u5f00\u901a\u4f1a\u5458\u5931\u8d25"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$e;->a:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> startMemberPage() --> onSuccess() --> \u5f00\u901a\u4f1a\u5458\u6210\u529f\uff0c\u76f4\u63a5\u4e0b\u8f7d\u4e0d\u9700\u8981\u505a\u4efb\u52a1\u4e86"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$e;->a:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->O0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;I)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$e;->a:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
