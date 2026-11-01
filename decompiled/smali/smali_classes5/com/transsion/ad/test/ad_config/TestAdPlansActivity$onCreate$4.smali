.class final Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.transsion.ad.test.ad_config.TestAdPlansActivity$onCreate$4"
    f = "TestAdPlansActivity.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;",
            "Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->$mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;

    iput-object p2, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->this$0:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;

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

    new-instance p1, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;

    iget-object v0, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->$mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;

    iget-object v1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->this$0:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;-><init>(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->label:I

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

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    new-instance v1, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1;

    iget-object v3, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->$mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;

    iget-object v4, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->this$0:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1;-><init>(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
