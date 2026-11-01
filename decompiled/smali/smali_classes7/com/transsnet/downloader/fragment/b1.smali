.class public final synthetic Lcom/transsnet/downloader/fragment/b1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/NoNetworkSmallView;

.field public final synthetic b:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/NoNetworkSmallView;Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/b1;->a:Lcom/tn/lib/view/NoNetworkSmallView;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/b1;->b:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/b1;->a:Lcom/tn/lib/view/NoNetworkSmallView;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/b1;->b:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-static {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->a0(Lcom/tn/lib/view/NoNetworkSmallView;Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
