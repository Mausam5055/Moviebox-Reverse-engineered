.class public final synthetic Lcom/transsnet/downloader/ugc/dialog/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

.field public final synthetic b:Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/dialog/j;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/dialog/j;->b:Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;

    iput p3, p0, Lcom/transsnet/downloader/ugc/dialog/j;->c:I

    iput-object p4, p0, Lcom/transsnet/downloader/ugc/dialog/j;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/dialog/j;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    iget-object v1, p0, Lcom/transsnet/downloader/ugc/dialog/j;->b:Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;

    iget v2, p0, Lcom/transsnet/downloader/ugc/dialog/j;->c:I

    iget-object v3, p0, Lcom/transsnet/downloader/ugc/dialog/j;->d:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;->B0(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;ILjava/lang/Integer;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
