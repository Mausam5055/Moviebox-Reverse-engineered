.class public final synthetic Lcom/transsnet/downloader/ugc/fragment/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/k;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;

    iput p2, p0, Lcom/transsnet/downloader/ugc/fragment/k;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/k;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;

    iget v1, p0, Lcom/transsnet/downloader/ugc/fragment/k;->b:I

    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;->i(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;ILandroid/view/View;)V

    return-void
.end method
