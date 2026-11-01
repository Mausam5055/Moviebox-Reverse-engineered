.class final Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->z()V
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
    c = "com.transsion.home.viewmodel.preload.PreloadTrendingData$getAppTab$1"
    f = "PreloadTrendingData.kt"
    l = {
        0xf2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;


# direct methods
.method constructor <init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    invoke-direct {p1, v0, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->label:I

    const/4 v2, 0x0

    const-string v3, " version="

    const-string v4, "PreloadTrending"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/home/bean/AppTab;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_e

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->j(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lcom/transsion/home/bean/AppTab;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->i(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/transsion/home/bean/AppTab;->resetHomeTabs(Ljava/util/List;)V

    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->h(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/transsion/home/bean/AppTab;->setBottomTabs(Ljava/util/List;)V

    sget-object v7, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    :cond_2
    move-object v8, v6

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getVersion()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get tab cache "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->s(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V

    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->C()Landroidx/lifecycle/b0;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->o(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V

    goto :goto_1

    :cond_3
    move-object p1, v6

    :goto_1
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v7, "key_or_content_mode_local"

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_5

    if-ne v1, v5, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v6

    :goto_3
    sget-object v7, Llg/a;->a:Llg/a$a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "homeTab getAppTab ,isUGCMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    invoke-static {v7}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lol/e;

    move-result-object v7

    sget-object v8, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v8}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v8

    iput-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->label:I

    invoke-interface {v7, v1, v8, p0}, Lol/e;->g(Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v1

    :goto_4
    iget-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/AppTab;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object v7

    goto :goto_5

    :cond_7
    move-object v7, v6

    :goto_5
    invoke-static {v1, v7}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->i(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    if-eqz p1, :cond_8

    invoke-virtual {p1, v7}, Lcom/transsion/home/bean/AppTab;->resetHomeTabs(Ljava/util/List;)V

    :cond_8
    if-eqz p1, :cond_9

    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->h(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/transsion/home/bean/AppTab;->setBottomTabs(Ljava/util/List;)V

    :cond_9
    sget-object v7, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    :cond_a
    move-object v8, v6

    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "homeTab size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_7

    :cond_b
    move-object v8, v6

    :goto_7
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getVersion()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_c
    move-object v9, v6

    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bottomTab size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4, v3, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->D()Landroidx/lifecycle/b0;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->o(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/transsion/home/bean/AppTab;->getVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_d
    move-object v3, v6

    :goto_9
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getVersion()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_e
    move-object v7, v6

    :goto_a
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_b

    :cond_f
    move-object v3, v6

    :goto_b
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_c

    :cond_10
    move-object v7, v6

    :goto_c
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_d

    :cond_11
    move-object v0, v6

    :goto_d
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_12
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->q(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_f

    :goto_e
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->D()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;->this$0:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    invoke-static {v0, v2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->r(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Z)V

    :cond_14
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHomeTab error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1, v5}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_15
    :goto_f
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
