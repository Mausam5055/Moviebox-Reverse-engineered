.class public final synthetic Lcom/transsnet/downloader/popup/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field public final synthetic b:Lcom/transsnet/downloader/popup/PopupManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/popup/o;->a:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iput-object p2, p0, Lcom/transsnet/downloader/popup/o;->b:Lcom/transsnet/downloader/popup/PopupManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsnet/downloader/popup/o;->a:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/o;->b:Lcom/transsnet/downloader/popup/PopupManager;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->d(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;JJ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
