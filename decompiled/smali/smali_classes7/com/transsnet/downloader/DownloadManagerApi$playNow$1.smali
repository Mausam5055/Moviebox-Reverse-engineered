.class final Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/DownloadManagerApi;->y0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.transsnet.downloader.DownloadManagerApi$playNow$1"
    f = "DownloadManagerApi.kt"
    l = {
        0x390
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $pageFrom:Ljava/lang/String;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/DownloadManagerApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsnet/downloader/DownloadManagerApi;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$subjectId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iput-object p3, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$pageFrom:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$resourceId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->d(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 1

    invoke-static {p0, p3}, Lcom/transsnet/downloader/DownloadManagerApi;->F(Lcom/transsnet/downloader/DownloadManagerApi;Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-static {p0}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi;->D(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/transsnet/downloader/DownloadManagerApi;->E(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;

    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$subjectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$pageFrom:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$resourceId:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->label:I

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

    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$subjectId:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {p1}, Lcom/transsnet/downloader/DownloadManagerApi;->z(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$subjectId:Ljava/lang/String;

    iput v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->label:I

    invoke-interface {p1, v1, p0}, Lcom/transsnet/downloader/manager/g;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/DownloadManagerApi;->F(Lcom/transsnet/downloader/DownloadManagerApi;Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {p1}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {p1}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    move-result p1

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$pageFrom:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/transsnet/downloader/DownloadManagerApi;->D(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsnet/downloader/DownloadManagerApi;->E(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {p1}, Lcom/transsnet/downloader/DownloadManagerApi;->z(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$resourceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->$pageFrom:Ljava/lang/String;

    new-instance v4, Lcom/transsnet/downloader/t;

    invoke-direct {v4, v1, v2, v3}, Lcom/transsnet/downloader/t;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, v0, v4}, Lcom/transsnet/downloader/manager/g;->s(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
