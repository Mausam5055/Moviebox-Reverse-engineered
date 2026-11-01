.class public final synthetic Lcom/transsnet/downloader/fragment/f3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/f3;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

    iput p2, p0, Lcom/transsnet/downloader/fragment/f3;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/f3;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;

    iget v1, p0, Lcom/transsnet/downloader/fragment/f3;->b:I

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->I0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
