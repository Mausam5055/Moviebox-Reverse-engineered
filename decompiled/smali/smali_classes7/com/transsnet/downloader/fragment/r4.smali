.class public final synthetic Lcom/transsnet/downloader/fragment/r4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/r4;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/r4;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->H0(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
