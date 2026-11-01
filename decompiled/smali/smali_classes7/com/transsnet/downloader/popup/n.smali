.class public final synthetic Lcom/transsnet/downloader/popup/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic c:Lcom/transsnet/downloader/popup/PopupManager;

.field public final synthetic d:Lmy/b;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lmy/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/popup/n;->a:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/transsnet/downloader/popup/n;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Lcom/transsnet/downloader/popup/n;->c:Lcom/transsnet/downloader/popup/PopupManager;

    iput-object p4, p0, Lcom/transsnet/downloader/popup/n;->d:Lmy/b;

    iput-object p5, p0, Lcom/transsnet/downloader/popup/n;->e:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcom/transsnet/downloader/popup/n;->f:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iput-boolean p7, p0, Lcom/transsnet/downloader/popup/n;->g:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/transsnet/downloader/popup/n;->a:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/n;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, p0, Lcom/transsnet/downloader/popup/n;->c:Lcom/transsnet/downloader/popup/PopupManager;

    iget-object v3, p0, Lcom/transsnet/downloader/popup/n;->d:Lmy/b;

    iget-object v4, p0, Lcom/transsnet/downloader/popup/n;->e:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lcom/transsnet/downloader/popup/n;->f:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iget-boolean v6, p0, Lcom/transsnet/downloader/popup/n;->g:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->g(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lmy/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZZ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
