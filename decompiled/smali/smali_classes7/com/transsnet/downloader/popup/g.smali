.class public final synthetic Lcom/transsnet/downloader/popup/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/popup/PopupManager;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/popup/g;->a:Lcom/transsnet/downloader/popup/PopupManager;

    iput-object p2, p0, Lcom/transsnet/downloader/popup/g;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsnet/downloader/popup/g;->c:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iput-boolean p4, p0, Lcom/transsnet/downloader/popup/g;->d:Z

    iput-object p5, p0, Lcom/transsnet/downloader/popup/g;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsnet/downloader/popup/g;->a:Lcom/transsnet/downloader/popup/PopupManager;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsnet/downloader/popup/g;->c:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iget-boolean v3, p0, Lcom/transsnet/downloader/popup/g;->d:Z

    iget-object v4, p0, Lcom/transsnet/downloader/popup/g;->e:Lkotlin/jvm/functions/Function2;

    move-object v5, p1

    check-cast v5, Lmy/b;

    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager;->j(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;Lmy/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
