.class final Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/promotion/PromotionManager;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.member.promotion.PromotionManager$requestPromotion$1"
    f = "PromotionManager.kt"
    l = {
        0xc6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $canShow:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $displayType:Ljava/lang/String;

.field final synthetic $onLoadFailed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onPromotionReady:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/transsion/memberapi/SkuPromotionItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $placementSceneType:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/member/promotion/PromotionManager;


# direct methods
.method constructor <init>(Lcom/transsion/member/promotion/PromotionManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/member/promotion/PromotionManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Lcom/transsion/memberapi/SkuPromotionItem;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->this$0:Lcom/transsion/member/promotion/PromotionManager;

    iput-object p2, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$placementSceneType:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$displayType:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$canShow:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$onPromotionReady:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p7, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$onLoadFailed:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v9, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;

    iget-object v1, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->this$0:Lcom/transsion/member/promotion/PromotionManager;

    iget-object v2, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$placementSceneType:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$displayType:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$canShow:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$onPromotionReady:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v7, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$onLoadFailed:Lkotlin/jvm/functions/Function1;

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;-><init>(Lcom/transsion/member/promotion/PromotionManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v9, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->L$0:Ljava/lang/Object;

    return-object v9
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/n0;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object v1, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->this$0:Lcom/transsion/member/promotion/PromotionManager;

    iget-object v3, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$placementSceneType:Ljava/lang/String;

    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iput-object p1, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->label:I

    invoke-static {v1, v3, p0}, Lcom/transsion/member/promotion/PromotionManager;->k(Lcom/transsion/member/promotion/PromotionManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->this$0:Lcom/transsion/member/promotion/PromotionManager;

    iget-object v1, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$placementSceneType:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$displayType:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$canShow:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$onPromotionReady:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v6, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$onLoadFailed:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p1

    check-cast v7, Lcom/transsion/memberapi/SkuPromotionItem;

    :try_start_2
    sget-object v8, Lak/o;->a:Lak/o;

    invoke-virtual {v8}, Lak/o;->i()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v0, v7, v1, v2, v3}, Lcom/transsion/member/promotion/PromotionManager;->j(Lcom/transsion/member/promotion/PromotionManager;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Promotion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is unavailable in kids mode."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_4

    check-cast v0, Lkotlin/Unit;

    invoke-interface {v4, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/transsion/member/promotion/PromotionManager$requestPromotion$1;->$onLoadFailed:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
