.class public final Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->y0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->H0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;I)V

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->D0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lpy/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/y;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->y0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->y0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->D0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lpy/y;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/y;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->E0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->D0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lpy/y;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lpy/y;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
