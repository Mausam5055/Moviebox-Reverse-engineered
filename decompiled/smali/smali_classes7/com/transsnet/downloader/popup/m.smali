.class public final synthetic Lcom/transsnet/downloader/popup/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic e:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/popup/m;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/transsnet/downloader/popup/m;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p3, p0, Lcom/transsnet/downloader/popup/m;->c:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p4, p0, Lcom/transsnet/downloader/popup/m;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p5, p0, Lcom/transsnet/downloader/popup/m;->e:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/transsnet/downloader/popup/m;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/m;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v2, p0, Lcom/transsnet/downloader/popup/m;->c:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v3, p0, Lcom/transsnet/downloader/popup/m;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, p0, Lcom/transsnet/downloader/popup/m;->e:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->h(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JJ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
