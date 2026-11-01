.class final Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroidx/lifecycle/b0;


# direct methods
.method constructor <init>(Ljava/lang/String;IILandroidx/lifecycle/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->b:I

    iput p3, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->c:I

    iput-object p4, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->d:Landroidx/lifecycle/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsnet/downloader/bean/DownloadListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/bean/DownloadListBean;->setTitle(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->b:I

    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/bean/DownloadListBean;->setEndPosition(I)V

    :cond_3
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->c:I

    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/bean/DownloadListBean;->setStartPosition(I)V

    :cond_4
    sget-object v1, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBottomList, on get data , size= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "DownloadReDetector"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->d:Landroidx/lifecycle/b0;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1$a;->a(Lcom/transsnet/downloader/bean/DownloadListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
