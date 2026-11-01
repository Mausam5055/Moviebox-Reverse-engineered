.class final Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsnet/downloader/bean/StartResponseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of p1, p2, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;

    iget v0, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->label:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;

    invoke-direct {p1, p0, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;-><init>(Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/f;->g()V

    iget-object p2, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;->a:Ljava/util/List;

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isStartRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleStarted(I)V

    goto :goto_1

    :cond_4
    iput v2, p1, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4$emit$1;->label:I

    const-wide/16 v1, 0xbb8

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p1, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/f;->h()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsnet/downloader/bean/StartResponseBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1$4;->a(Lcom/transsnet/downloader/bean/StartResponseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
