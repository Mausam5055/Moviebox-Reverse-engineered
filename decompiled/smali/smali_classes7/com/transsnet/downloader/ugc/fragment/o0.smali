.class public final synthetic Lcom/transsnet/downloader/ugc/fragment/o0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/o0;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;

    iput p2, p0, Lcom/transsnet/downloader/ugc/fragment/o0;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/o0;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;

    iget v1, p0, Lcom/transsnet/downloader/ugc/fragment/o0;->b:I

    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->i(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;ILandroid/view/View;)V

    return-void
.end method
