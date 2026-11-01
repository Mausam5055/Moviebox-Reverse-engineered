.class final Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->i(Lcom/therouter/router/RouteItem;Lbg/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.postdetail.ui.interceptor.LocalVideoDetailInterceptor$process$1"
    f = "LocalVideoDetailInterceptor.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lbg/b;

.field final synthetic $postcard:Lcom/therouter/router/RouteItem;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lbg/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;",
            "Lcom/therouter/router/RouteItem;",
            "Lbg/b;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$resourceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->this$0:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    iput-object p3, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$postcard:Lcom/therouter/router/RouteItem;

    iput-object p4, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$callback:Lbg/b;

    iput-object p5, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$subjectId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$resourceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->this$0:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    iget-object v3, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$postcard:Lcom/therouter/router/RouteItem;

    iget-object v4, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$callback:Lbg/b;

    iget-object v5, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$subjectId:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lbg/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$resourceId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$subjectId:Ljava/lang/String;

    sget-object v3, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v3

    iput-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->label:I

    invoke-virtual {v3, v1, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v3

    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_3

    sget-object v3, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {v3, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->i(Lcom/transsion/baselib/db/download/DownloadBean;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u8005\u4e0b\u8f7d\u8fdb\u5ea6\u76f8\u5dee10M\u7684\u91cd\u65b0\u4e0b\u8f7d,resourceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectId:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download_LocalVideoDetailInterceptor"

    invoke-virtual {v3, v1, v0, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setReDownload(Z)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->this$0:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$postcard:Lcom/therouter/router/RouteItem;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;->$callback:Lbg/b;

    invoke-static {p1, v0, v1}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->e(Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lbg/b;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
