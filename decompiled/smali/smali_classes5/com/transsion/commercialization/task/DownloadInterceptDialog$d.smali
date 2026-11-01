.class public final Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/DownloadInterceptDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> rewardedListener --> onBiddingError() --> \u5e7f\u544a\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->J0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> rewardedListener --> onLoad() --> \u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {v0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->L0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> rewardedListener --> onClosed() --> \u5e7f\u544a\u5173\u95ed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->I0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    return-void
.end method

.method public n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> rewardedListener --> onShow() --> \u5e7f\u544a\u5c55\u793a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->M0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> rewardedListener --> onRewarded() --> \u6fc0\u52b1\u5e7f\u544a\u5956\u52b1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->G0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> rewardedListener --> onShowError() --> \u5e7f\u544a\u5c55\u793a\u5931\u8d25"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->K0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    return-void
.end method
