.class public final synthetic Lcom/transsnet/downloader/fragment/u5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadingListFragment;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/u5;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    iput-boolean p2, p0, Lcom/transsnet/downloader/fragment/u5;->b:Z

    iput-boolean p3, p0, Lcom/transsnet/downloader/fragment/u5;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/u5;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    iget-boolean v1, p0, Lcom/transsnet/downloader/fragment/u5;->b:Z

    iget-boolean v2, p0, Lcom/transsnet/downloader/fragment/u5;->c:Z

    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->G0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;ZZLandroid/view/View;)V

    return-void
.end method
