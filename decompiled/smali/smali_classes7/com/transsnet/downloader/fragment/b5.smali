.class public final synthetic Lcom/transsnet/downloader/fragment/b5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

.field public final synthetic c:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;


# direct methods
.method public synthetic constructor <init>(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsnet/downloader/fragment/b5;->a:I

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/b5;->b:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    iput-object p3, p0, Lcom/transsnet/downloader/fragment/b5;->c:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/transsnet/downloader/fragment/b5;->a:I

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/b5;->b:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/b5;->c:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;

    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->i(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;Landroid/view/View;)V

    return-void
.end method
