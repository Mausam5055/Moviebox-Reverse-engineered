.class public final synthetic Lcom/transsnet/downloader/fragment/a6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/a6;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/a6;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;->i(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)V

    return-void
.end method
