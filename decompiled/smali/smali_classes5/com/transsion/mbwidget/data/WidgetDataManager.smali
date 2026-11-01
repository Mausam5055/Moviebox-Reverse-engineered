.class public final Lcom/transsion/mbwidget/data/WidgetDataManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/mbwidget/data/WidgetDataManager;

.field private static volatile b:J

.field private static c:J

.field private static final d:Lkotlin/Lazy;

.field private static final e:Lkotlin/Lazy;

.field private static f:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

.field private static final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static i:Ljava/lang/String;

.field private static volatile j:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-direct {v0}, Lcom/transsion/mbwidget/data/WidgetDataManager;-><init>()V

    sput-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    const-wide/32 v0, 0x360420

    sput-wide v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->c:J

    new-instance v0, Lcom/transsion/mbwidget/data/k;

    invoke-direct {v0}, Lcom/transsion/mbwidget/data/k;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/mbwidget/data/l;

    invoke-direct {v0}, Lcom/transsion/mbwidget/data/l;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->e:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;

    iget v1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;-><init>(Lcom/transsion/mbwidget/data/WidgetDataManager;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p1, v4, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;->label:I

    const-string v7, "DeskWidget_"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v8, :cond_1

    iget-object v0, v4, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/mbwidget/data/WidgetDataManager;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_c

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_3

    const/16 p1, 0x8

    goto :goto_2

    :cond_3
    move p1, v9

    :goto_2
    sget-object v1, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    const/16 v1, 0x10

    goto :goto_3

    :cond_4
    move v1, v9

    :goto_3
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->l()Lcom/transsion/mbwidget/data/a;

    move-result-object v2

    new-instance v3, Lcom/transsion/mbwidget/data/WidgetRequestBody;

    invoke-direct {v3, p1, v1}, Lcom/transsion/mbwidget/data/WidgetRequestBody;-><init>(II)V

    iput-object p0, v4, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;->L$0:Ljava/lang/Object;

    iput v8, v4, Lcom/transsion/mbwidget/data/WidgetDataManager$requestData$1;->label:I

    const/4 p1, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/mbwidget/data/a$a;->b(Lcom/transsion/mbwidget/data/a;Lcom/transsion/mbwidget/data/WidgetRequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p0

    :goto_4
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/mbwidget/data/DeskWidgetResp;

    if-eqz p1, :cond_10

    sget-object v1, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getHotList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_6

    :cond_7
    move v6, v9

    :goto_6
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_7

    :cond_8
    move v5, v9

    :goto_7
    if-gt v6, v5, :cond_6

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getInterestList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_9

    :cond_b
    move v6, v9

    :goto_9
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_a

    :cond_c
    move v5, v9

    :goto_a
    if-gt v6, v5, :cond_a

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getSearchBarText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getSearchBarText()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/mbwidget/data/WidgetDataManager;->i:Ljava/lang/String;

    :cond_f
    :goto_b
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getHotList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getInterestList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RequestList: hot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", in:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2, v8}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, p1}, Lcom/transsion/mbwidget/data/WidgetDataManager;->B(Lcom/transsion/mbwidget/data/DeskWidgetResp;)V

    :cond_10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :goto_c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_d
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_11

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData -onFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1, v8}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->f()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final B(Lcom/transsion/mbwidget/data/DeskWidgetResp;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/mbwidget/data/WidgetDataManager$saveToCache$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/mbwidget/data/WidgetDataManager$saveToCache$1;-><init>(Lcom/transsion/mbwidget/data/DeskWidgetResp;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final C()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->D1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a()Lcom/transsion/mbwidget/data/a;
    .locals 1

    invoke-static {}, Lcom/transsion/mbwidget/data/WidgetDataManager;->x()Lcom/transsion/mbwidget/data/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/mbwidget/data/WidgetDataManager;->C()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/mbwidget/data/WidgetDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/mbwidget/data/WidgetDataManager;->A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final f()V
    .locals 3

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->i()Lcom/transsion/mbwidget/data/DeskWidgetResp;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getInterestList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getInterestList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getHotList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/transsion/mbwidget/data/DeskWidgetResp;->getHotList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method private final g(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mbwidget/data/b;

    sget-object v1, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/b;->b()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/b;->b()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_3

    return-object p1

    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final i()Lcom/transsion/mbwidget/data/DeskWidgetResp;
    .locals 7

    sget-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    invoke-virtual {v0}, Lcom/transsion/mbwidget/d;->k()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "hot_widget_cache_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget load cache:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DeskWidget_"

    invoke-virtual {v1, v5, v4, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v1, Lcom/transsion/mbwidget/data/DeskWidgetResp;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mbwidget/data/DeskWidgetResp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private final l()Lcom/transsion/mbwidget/data/a;
    .locals 1

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mbwidget/data/a;

    return-object v0
.end method

.method private final n(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-class v1, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;

    goto :goto_0

    :cond_0
    const-class v1, Lcom/transsion/mbwidget/PlayWidgetProvider;

    :goto_0
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    const/high16 v1, 0xc000000

    goto :goto_1

    :cond_1
    const/high16 v1, 0x8000000

    :goto_1
    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p4, "key_deeplink_widget"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "key_subject_id_widget"

    invoke-virtual {v0, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "key_module_name"

    invoke-virtual {v0, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p7, :cond_3

    if-eqz p2, :cond_2

    const-string p7, "com.transsion.mbwidget.hot.ACTION_CLICK"

    goto :goto_2

    :cond_2
    const-string p7, "com.transsion.mbwidget.play.ACTION_CLICK"

    :cond_3
    :goto_2
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getBroadcast(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic o(Lcom/transsion/mbwidget/data/WidgetDataManager;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;
    .locals 10

    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v9}, Lcom/transsion/mbwidget/data/WidgetDataManager;->n(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private final r(ILjava/util/HashSet;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 2

    sget-object v0, Lcom/transsion/mbwidget/data/j;->a:Lcom/transsion/mbwidget/data/j;

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/j;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->z(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->z(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->z(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final w()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method private static final x()Lcom/transsion/mbwidget/data/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/mbwidget/data/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mbwidget/data/a;

    return-object v0
.end method

.method private final z(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    if-nez v0, :cond_4

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p2

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final h(Ljava/lang/String;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/mbwidget/data/b;

    invoke-virtual {v3}, Lcom/transsion/mbwidget/data/b;->b()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    check-cast v2, Lcom/transsion/mbwidget/data/b;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/b;->b()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final j()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 35

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/mbwidget/data/j;->a:Lcom/transsion/mbwidget/data/j;

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/j;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    :cond_0
    new-instance v34, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v8, v2

    goto :goto_1

    :cond_2
    move-object v8, v1

    :goto_1
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v2

    :cond_4
    const v32, 0x7ffff9c

    const/16 v33, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v1, v34

    move-object v2, v3

    move-object v3, v8

    move-object v8, v9

    move-object v9, v0

    invoke-direct/range {v1 .. v33}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v34
.end method

.method public final k(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/transsion/mbwidget/data/j;->a:Lcom/transsion/mbwidget/data/j;

    invoke-virtual {v0, p1}, Lcom/transsion/mbwidget/data/j;->n(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/mbwidget/utils/BitmapUtils;->a:Lcom/transsion/mbwidget/utils/BitmapUtils;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/transsion/mbwidget/utils/BitmapUtils;->d(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/transsion/mbwidget/utils/BitmapUtils;->a:Lcom/transsion/mbwidget/utils/BitmapUtils;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/mbwidget/utils/BitmapUtils;->b(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final m(Landroid/content/Context;ZLjava/lang/Integer;)Landroid/app/PendingIntent;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x50

    const/4 v10, 0x0

    const-string v4, "oneroom://com.community.oneroom?type=/main/tab&bottomTab=home&channel=desk_widget"

    const/4 v6, 0x0

    const-string v7, "root"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v10}, Lcom/transsion/mbwidget/data/WidgetDataManager;->o(Lcom/transsion/mbwidget/data/WidgetDataManager;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/transsion/mbwidget/data/WidgetDataManager$getPlayHistory$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getPlayHistory$1;

    iget v1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getPlayHistory$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getPlayHistory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getPlayHistory$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/mbwidget/data/WidgetDataManager$getPlayHistory$1;-><init>(Lcom/transsion/mbwidget/data/WidgetDataManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getPlayHistory$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getPlayHistory$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->f:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->y()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->f:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    return-object p1

    :cond_3
    invoke-direct {p0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->w()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p1

    iput v3, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getPlayHistory$1;->label:I

    const/4 v2, 0x0

    const/16 v4, 0x32

    invoke-interface {p1, v2, v4, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x1

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v5

    :cond_6
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getProgress()J

    move-result-wide v7

    const/16 v4, 0x64

    int-to-long v9, v4

    mul-long/2addr v7, v9

    div-long/2addr v7, v5

    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v4, 0x50

    cmp-long v2, v7, v4

    if-gtz v2, :cond_5

    move-object v0, v1

    :cond_7
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    :cond_8
    sput-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->f:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    sget-object p1, Llg/a;->a:Llg/a$a;

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->f:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayHistory curHistory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeskWidget_"

    invoke-virtual {p1, v1, v0, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->f:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    return-object p1
.end method

.method public final q(Landroid/content/Context;ZLjava/lang/Integer;)Landroid/app/PendingIntent;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x40

    const/4 v10, 0x0

    const-string v4, "oneroom://com.community.oneroom?type=/main/tab&bottomTab=home&channel=desk_widget"

    const-string v6, "refresh_all"

    const-string v7, "refresh"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v10}, Lcom/transsion/mbwidget/data/WidgetDataManager;->o(Lcom/transsion/mbwidget/data/WidgetDataManager;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final s(Landroid/content/Context;ZLjava/lang/Integer;)Landroid/app/PendingIntent;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x50

    const/4 v10, 0x0

    const-string v4, "oneroom://com.community.oneroom?type=/search/activity/search_manager&type=3&channel=desk_widget"

    const/4 v6, 0x0

    const-string v7, "search"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v10}, Lcom/transsion/mbwidget/data/WidgetDataManager;->o(Lcom/transsion/mbwidget/data/WidgetDataManager;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/mbwidget/R$string;->widget_search_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;

    iget v1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;-><init>(Lcom/transsion/mbwidget/data/WidgetDataManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->label:I

    const-string v3, "DeskWidget_"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/mbwidget/data/b;

    iget-object p2, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v2

    goto/16 :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->y()Z

    move-result p3

    sget-object v2, Llg/a;->a:Llg/a$a;

    sget-object v7, Lcom/transsion/mbwidget/data/WidgetDataManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    sget-object v8, Lcom/transsion/mbwidget/data/WidgetDataManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\uff0chistoryId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", in:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7, v6}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_9

    sget-object p3, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/transsion/mbwidget/data/b;

    invoke-virtual {v7}, Lcom/transsion/mbwidget/data/b;->b()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_5
    move-object v2, v4

    :goto_1
    move-object p3, v2

    check-cast p3, Lcom/transsion/mbwidget/data/b;

    if-eqz p3, :cond_8

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object p1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->label:I

    invoke-direct {p0, v2, v0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->g(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/mbwidget/data/b;

    invoke-virtual {v8}, Lcom/transsion/mbwidget/data/b;->b()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p3}, Lcom/transsion/mbwidget/data/b;->a()I

    move-result v7

    invoke-direct {p0, v7, v2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->r(ILjava/util/HashSet;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Lcom/transsion/mbwidget/data/b;->a()I

    move-result p2

    new-instance v0, Lcom/transsion/mbwidget/data/b;

    invoke-virtual {p3}, Lcom/transsion/mbwidget/data/b;->a()I

    move-result p3

    invoke-direct {v0, p3, v2}, Lcom/transsion/mbwidget/data/b;-><init>(ILcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object p3, p1

    check-cast p3, Ljava/util/Collection;

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p2, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1

    :cond_8
    const-string p3, "refresh_all"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    :cond_9
    sget-object p2, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    const/4 v2, 0x3

    if-lt p2, v2, :cond_a

    if-nez p3, :cond_a

    sget-object p1, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1

    :cond_a
    sget-object p2, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/mbwidget/data/WidgetDataManager$getShowList$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->g(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    :goto_4
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    invoke-direct {p0, p3, p2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->r(ILjava/util/HashSet;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/transsion/mbwidget/data/b;

    invoke-direct {v1, p3, v0}, Lcom/transsion/mbwidget/data/b;-><init>(ILcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_c
    invoke-direct {p0, v6, p2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->r(ILjava/util/HashSet;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p3

    if-eqz p3, :cond_d

    new-instance v0, Lcom/transsion/mbwidget/data/b;

    invoke-direct {v0, v6, p3}, Lcom/transsion/mbwidget/data/b;-><init>(ILcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_d
    invoke-direct {p0, v5, p2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->r(ILjava/util/HashSet;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p3

    if-eqz p3, :cond_e

    new-instance v0, Lcom/transsion/mbwidget/data/b;

    invoke-direct {v0, v5, p3}, Lcom/transsion/mbwidget/data/b;-><init>(ILcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->b:J

    sget-object p3, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v3, p2, v6}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p2, Lcom/transsion/mbwidget/data/WidgetDataManager;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1
.end method

.method public final v(Landroid/content/Context;ZLjava/lang/Integer;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oneroom://com.community.oneroom?type=/movie/detail&channel=desk_widget&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ops=%7B%22trace_id%22%3A%226516b509cfdb36d11f9026a5b2981871%22%7D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x40

    const/4 v10, 0x0

    const-string v7, "subject"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v10}, Lcom/transsion/mbwidget/data/WidgetDataManager;->o(Lcom/transsion/mbwidget/data/WidgetDataManager;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final y()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/mbwidget/data/WidgetDataManager;->b:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/transsion/mbwidget/data/WidgetDataManager;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
