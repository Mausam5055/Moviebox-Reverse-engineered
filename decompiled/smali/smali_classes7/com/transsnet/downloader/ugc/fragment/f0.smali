.class public final synthetic Lcom/transsnet/downloader/ugc/fragment/f0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/f0;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/f0;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->i(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V

    return-void
.end method
