.class public final synthetic Lcom/transsnet/downloader/fragment/l2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/l2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/l2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->Q0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
