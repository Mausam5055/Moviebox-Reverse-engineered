.class public final synthetic Lcom/transsnet/downloader/ugc/dialog/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/dialog/k;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    iput p2, p0, Lcom/transsnet/downloader/ugc/dialog/k;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/dialog/k;->a:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    iget v1, p0, Lcom/transsnet/downloader/ugc/dialog/k;->b:I

    invoke-static {v0, v1}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;->C0(Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;I)V

    return-void
.end method
