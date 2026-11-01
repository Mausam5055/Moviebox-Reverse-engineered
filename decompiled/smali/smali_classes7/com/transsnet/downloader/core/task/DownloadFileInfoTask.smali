.class public final Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;->d(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lcom/transsion/baselib/db/download/DownloadBean;J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------try_update_download_size, net size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", real size = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "download"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, p2

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------update_download_size, net size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSize(Ljava/lang/Long;)V

    :cond_2
    return-void
.end method

.method private final d(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;

    iget v1, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;

    invoke-direct {v0, p0, p3}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;-><init>(Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    const/4 p3, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v8, Lcom/transsnet/downloader/core/b;->c:Lcom/transsnet/downloader/core/b$a;

    invoke-virtual {v8}, Lcom/transsnet/downloader/core/b$a;->a()Lcom/transsnet/downloader/core/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsnet/downloader/core/b;->c()Lokhttp3/OkHttpClient;

    move-result-object v8

    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v10, "Range"

    const-string v11, "bytes=0-"

    invoke-virtual {v9, v10, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_4

    const/16 v10, 0xce

    if-eq v9, v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    move-wide v8, v6

    :goto_1
    invoke-direct {p0, p1, v8, v9}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;->c(Lcom/transsion/baselib/db/download/DownloadBean;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p3, v5

    move-wide v6, v8

    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    :cond_6
    iput v5, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    invoke-interface {p2, p3, v6, v7, v0}, Lcom/transsnet/downloader/core/task/a;->a(ZJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :goto_3
    :try_start_1
    sget-object v8, Llg/a;->a:Llg/a$a;

    const-string v9, "download"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DownloadFileInfoTask --> checkWithOkhttp --> e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v9, p1, v5}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    :cond_7
    iput v4, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    invoke-interface {p2, p3, v6, v7, v0}, Lcom/transsnet/downloader/core/task/a;->a(ZJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    :cond_9
    iput-object p1, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkWithOkhttp$1;->label:I

    invoke-interface {p2, p3, v6, v7, v0}, Lcom/transsnet/downloader/core/task/a;->a(ZJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    :goto_5
    throw p1
.end method


# virtual methods
.method public final b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;)V
    .locals 7

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkFileInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask$checkFileInfo$1;-><init>(Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
