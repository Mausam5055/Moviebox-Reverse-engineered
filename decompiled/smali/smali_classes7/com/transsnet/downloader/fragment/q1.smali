.class public final synthetic Lcom/transsnet/downloader/fragment/q1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/bean/DownloadUrlBean;

.field public final synthetic b:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/bean/DownloadUrlBean;Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/q1;->a:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/q1;->b:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/q1;->a:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/q1;->b:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    invoke-static {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;->U0(Lcom/transsnet/downloader/bean/DownloadUrlBean;Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
