.class public final synthetic Lcom/transsnet/downloader/fragment/b2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/b2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    iput p2, p0, Lcom/transsnet/downloader/fragment/b2;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/b2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    iget v1, p0, Lcom/transsnet/downloader/fragment/b2;->b:I

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->M0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
