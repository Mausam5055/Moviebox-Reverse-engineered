.class public final synthetic Lcom/transsnet/downloader/popup/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/popup/PopupManager;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Lmy/b;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lmy/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/popup/p;->a:Lcom/transsnet/downloader/popup/PopupManager;

    iput-object p2, p0, Lcom/transsnet/downloader/popup/p;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/transsnet/downloader/popup/p;->c:Lmy/b;

    iput-boolean p4, p0, Lcom/transsnet/downloader/popup/p;->d:Z

    iput-object p5, p0, Lcom/transsnet/downloader/popup/p;->e:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsnet/downloader/popup/p;->a:Lcom/transsnet/downloader/popup/PopupManager;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/p;->b:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/transsnet/downloader/popup/p;->c:Lmy/b;

    iget-boolean v3, p0, Lcom/transsnet/downloader/popup/p;->d:Z

    iget-object v4, p0, Lcom/transsnet/downloader/popup/p;->e:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->a(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lmy/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
