.class public final synthetic Lcom/transsnet/downloader/fragment/u0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/u0;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/u0;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->n0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
