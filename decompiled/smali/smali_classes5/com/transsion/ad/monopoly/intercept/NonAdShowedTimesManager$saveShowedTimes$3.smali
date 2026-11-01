.class final Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)V
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
    c = "com.transsion.ad.monopoly.intercept.NonAdShowedTimesManager$saveShowedTimes$3"
    f = "NonAdShowedTimesManager.kt"
    l = {
        0x70,
        0x74,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mAdPlans:Lcom/transsion/ad/monopoly/model/AdPlans;

.field final synthetic $nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/db/plan/MbAdDbPlans;",
            "Lcom/transsion/ad/monopoly/model/AdPlans;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    iput-object p2, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$mAdPlans:Lcom/transsion/ad/monopoly/model/AdPlans;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;

    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$mAdPlans:Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;-><init>(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "getApp(...)"

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-static {}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v6, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-virtual {v6}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->getShowedTimes()I

    move-result v1

    :goto_1
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setShowedTimes(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    sget-object v1, Lti/p;->a:Lti/p;

    invoke-virtual {v1}, Lti/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setShowDate(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/ad/db/MbAdDatabase;->z0()Lli/b;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$mAdPlans:Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v1

    iput v4, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->label:I

    invoke-interface {p1, v1, p0}, Lli/b;->h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    check-cast p1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-virtual {v4}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p1, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/ad/db/MbAdDatabase;->z0()Lli/b;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    iput v3, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->label:I

    invoke-interface {p1, v1, p0}, Lli/b;->i(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-virtual {v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setShowedTimes(Ljava/lang/Integer;)V

    :cond_8
    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-virtual {v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setShowDate(Ljava/lang/String;)V

    :cond_9
    if-eqz p1, :cond_a

    sget-object v1, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/ad/db/MbAdDatabase;->z0()Lli/b;

    move-result-object v1

    iput v2, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->label:I

    invoke-interface {v1, p1, p0}, Lli/b;->i(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
