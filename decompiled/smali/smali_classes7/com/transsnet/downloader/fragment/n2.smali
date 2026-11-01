.class public final synthetic Lcom/transsnet/downloader/fragment/n2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/n2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/n2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/n2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/n2;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/transsnet/downloader/widget/e;

    invoke-static {v0, v1, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->V0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Ljava/util/List;ILcom/transsnet/downloader/widget/e;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
