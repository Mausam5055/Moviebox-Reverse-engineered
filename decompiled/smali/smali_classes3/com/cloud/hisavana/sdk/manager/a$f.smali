.class final Lcom/cloud/hisavana/sdk/manager/a$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/a;->r(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1"
    f = "CustomTabsManager.kt"
    l = {
        0x281,
        0x284,
        0x28b,
        0x291
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

.field final synthetic g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            "Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/hisavana/sdk/manager/a$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->g:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/manager/a$f;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

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

    new-instance p1, Lcom/cloud/hisavana/sdk/manager/a$f;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->g:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/manager/a$f;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f;->a(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_4
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 p1, -0x1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/a;->v(Lcom/cloud/hisavana/sdk/manager/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->p(J)V

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iget-object v7, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->a(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v6

    if-nez v6, :cond_b

    invoke-static {p1, v5}, Lcom/cloud/hisavana/sdk/manager/a;->D(Lcom/cloud/hisavana/sdk/manager/a;Z)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    iput v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    const/4 v5, 0x0

    invoke-static {p1, v3, v5, p0}, Lcom/cloud/hisavana/sdk/manager/a;->l(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v3, 0x1b5e

    if-eq p1, v3, :cond_6

    const/16 v3, 0x1b5f

    if-eq p1, v3, :cond_6

    goto :goto_4

    :cond_6
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_4

    :cond_7
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    iput v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    invoke-static {p1, v3, v5, v6, p0}, Lcom/cloud/hisavana/sdk/manager/a;->i(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    move-object v3, v1

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_2
    move-object v1, v3

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    iput v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    invoke-static {p1, v4, v5, v6, p0}, Lcom/cloud/hisavana/sdk/manager/a;->i(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v3, v1

    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_2

    :cond_b
    iput v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_4
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v3, Lcom/cloud/hisavana/sdk/manager/a$f$a;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->g:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lcom/cloud/hisavana/sdk/manager/a$f$a;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    iput-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p1, v0, :cond_c

    return-object v0

    :catchall_0
    :cond_c
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
