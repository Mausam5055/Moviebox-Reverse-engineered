.class public final Lcom/transsion/ad/ps/activate/PSActivateManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/ps/activate/PSActivateManager;

.field private static final b:Ljava/util/concurrent/PriorityBlockingQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/ad/ps/activate/PSActivateManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/activate/PSActivateManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lcom/transsion/ad/ps/activate/PSActivateManager$special$$inlined$compareByDescending$1;

    invoke-direct {v1}, Lcom/transsion/ad/ps/activate/PSActivateManager$special$$inlined$compareByDescending$1;-><init>()V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ad/ps/activate/PsActivateBean;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/transsion/ad/ps/activate/PsActivateBean;
    .locals 1

    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/ps/activate/PsActivateBean;

    return-object v0
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/transsion/ad/ps/activate/PSActivateManager$getRecentTwoHoursOpenAdList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/ad/ps/activate/PSActivateManager$getRecentTwoHoursOpenAdList$1;

    iget v1, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$getRecentTwoHoursOpenAdList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$getRecentTwoHoursOpenAdList$1;->label:I

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/ad/ps/activate/PSActivateManager$getRecentTwoHoursOpenAdList$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/ad/ps/activate/PSActivateManager$getRecentTwoHoursOpenAdList$1;-><init>(Lcom/transsion/ad/ps/activate/PSActivateManager;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p1, v5, Lcom/transsion/ad/ps/activate/PSActivateManager$getRecentTwoHoursOpenAdList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v5, Lcom/transsion/ad/ps/activate/PSActivateManager$getRecentTwoHoursOpenAdList$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/ps/installed/AppInstallManager;->a:Lcom/transsion/ad/ps/installed/AppInstallManager;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    const-string v3, "getApp(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, v5, Lcom/transsion/ad/ps/activate/PSActivateManager$getRecentTwoHoursOpenAdList$1;->label:I

    const-wide/16 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/ad/ps/installed/AppInstallManager;->c(Lcom/transsion/ad/ps/installed/AppInstallManager;Landroid/content/Context;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/db/pslink/AppInstalledBean;

    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/ad/ps/activate/PSActivateManager;->f(Z)V

    return-void
.end method

.method public final f(Z)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/ps/activate/PSActivateManager$requestActivateAd$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/ad/ps/activate/PSActivateManager$requestActivateAd$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final g(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;

    iget v1, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;-><init>(Lcom/transsion/ad/ps/activate/PSActivateManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/ad/ps/activate/PsActivateBean;

    iget-object v2, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/transsion/ad/ps/activate/PSActivateManager;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/activate/PsActivateBean;

    sget-object p2, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    const-string v5, "getApp(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/ad/db/MbAdDatabase;->w0()Lmi/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    iput-object v2, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/ps/activate/PSActivateManager$saveAdCache$1;->label:I

    invoke-interface {p2, v4, v0}, Lmi/a;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Lcom/transsion/ad/db/pslink/AppInstalledBean;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->getECPM()Ljava/lang/Double;

    move-result-object p2

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Lcom/transsion/ad/ps/activate/PsActivateBean;->setECPM(Ljava/lang/Double;)V

    sget-object p2, Lcom/transsion/ad/ps/activate/PSActivateManager;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
