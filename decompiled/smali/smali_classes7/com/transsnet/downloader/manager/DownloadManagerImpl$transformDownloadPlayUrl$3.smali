.class final Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/DownloadManagerImpl;->a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.manager.DownloadManagerImpl$transformDownloadPlayUrl$3"
    f = "DownloadManagerImpl.kt"
    l = {
        0x63e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ep:I

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$subjectId:Ljava/lang/String;

    iput p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$ep:I

    iput-object p3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$subjectId:Ljava/lang/String;

    iget v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$ep:I

    iget-object v3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$subjectId:Ljava/lang/String;

    iget v4, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$ep:I

    invoke-virtual {v1, v3, v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->x(Ljava/lang/String;I)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$subjectId:Ljava/lang/String;

    iget v3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$ep:I

    iput v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->label:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->w(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    :cond_3
    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->k(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$transformDownloadPlayUrl$3;->$url:Ljava/lang/String;

    :goto_2
    return-object p1
.end method
