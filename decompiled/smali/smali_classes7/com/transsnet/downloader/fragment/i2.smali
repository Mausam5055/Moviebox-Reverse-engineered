.class public final synthetic Lcom/transsnet/downloader/fragment/i2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/i2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/i2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->Y0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Ljava/util/List;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
