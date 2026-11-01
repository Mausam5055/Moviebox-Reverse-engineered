.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lok/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;

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

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;

    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

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
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;

    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->R0()V

    return-void
.end method
