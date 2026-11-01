.class public final synthetic Lcom/transsnet/downloader/fragment/i1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/i1;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/i1;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    check-cast p1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->i0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
