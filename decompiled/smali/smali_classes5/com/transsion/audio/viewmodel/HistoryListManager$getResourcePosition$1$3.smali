.class final Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/viewmodel/HistoryListManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->a:Lcom/transsion/audio/viewmodel/HistoryListManager;

    iput-object p2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsnet/downloader/bean/DownloadListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;

    iget v1, v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    invoke-virtual {p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->a()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->a:Lcom/transsion/audio/viewmodel/HistoryListManager;

    invoke-virtual {v2}, Lcom/transsion/audio/viewmodel/HistoryListManager;->v()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->c(Z)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->a:Lcom/transsion/audio/viewmodel/HistoryListManager;

    invoke-virtual {p2}, Lcom/transsion/audio/viewmodel/HistoryListManager;->v()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->a:Lcom/transsion/audio/viewmodel/HistoryListManager;

    invoke-static {p2}, Lcom/transsion/audio/viewmodel/HistoryListManager;->f(Lcom/transsion/audio/viewmodel/HistoryListManager;)Ljj/a;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object v2, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;->label:I

    invoke-interface {p2, v2, v6, v0}, Ljj/a;->g(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p2, Lcom/transsion/baselib/db/audio/AudioBean;

    goto :goto_3

    :cond_7
    move-object p2, v3

    :goto_3
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/transsion/baselib/db/audio/AudioBean;->setSe(I)V

    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/baselib/db/audio/AudioBean;->setEp(I)V

    :cond_9
    if-eqz p2, :cond_b

    iget-object p1, p0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->a:Lcom/transsion/audio/viewmodel/HistoryListManager;

    invoke-static {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->f(Lcom/transsion/audio/viewmodel/HistoryListManager;)Ljj/a;

    move-result-object p1

    if-eqz p1, :cond_b

    iput-object v3, v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3$emit$1;->label:I

    invoke-interface {p1, p2, v0}, Ljj/a;->f(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1$3;->a(Lcom/transsnet/downloader/bean/DownloadListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
