.class final Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

.field final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iput-object p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsnet/downloader/bean/DownloadListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;-><init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-string p2, "download"

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-ne v2, v4, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/DownloadItem;

    goto :goto_1

    :cond_5
    move-object p1, v2

    :goto_1
    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "get new resource success, but url is same, download next task~~"

    invoke-virtual {p1, p2, v0, v4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->f0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    iget-object v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    :cond_8
    move-object p1, v5

    :cond_9
    invoke-virtual {v2, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/transsion/baselib/db/download/DownloadBean;->setUrlCreateAt(J)V

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRequestNewSourceCount()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRequestNewSourceCount(I)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get new resource success!!!, update url, lastUrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newUrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2, v4}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    move-object p2, v5

    :cond_a
    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;->label:I

    invoke-virtual {p1, v5, p2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->k(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_2
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3$emit$1;->label:I

    invoke-virtual {p1, p2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->T(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->g0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_5

    :cond_d
    :goto_4
    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "get new resource failed~~"

    invoke-virtual {p1, p2, v0, v4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->f0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$requestNewSource$1$3;->a(Lcom/transsnet/downloader/bean/DownloadListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
