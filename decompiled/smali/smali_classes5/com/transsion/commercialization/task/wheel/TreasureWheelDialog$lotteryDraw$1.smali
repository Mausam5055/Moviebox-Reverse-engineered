.class final Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->z0()V
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
    c = "com.transsion.commercialization.task.wheel.TreasureWheelDialog$lotteryDraw$1"
    f = "TreasureWheelDialog.kt"
    l = {
        0xa6,
        0xa8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;

    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    invoke-direct {v0, v1, p2}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const-string v0, "idempotentKey"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lok/c;->a:Lok/c;

    invoke-virtual {p1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --> lotteryDraw() --> \u8c03\u7528\u670d\u52a1\u7aef\u62bd\u5956\u63a5\u53e3"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lok/c;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v6, "activityId"

    invoke-static {p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->t0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getActivity()Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    move-object v7, v5

    :goto_0
    invoke-virtual {v2, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "toString(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v7, "application/json"

    invoke-virtual {v6, v7}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v9

    invoke-static {p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->s0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lcom/transsion/commercialization/task/treasure/b;

    move-result-object v7

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->label:I

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v10, p0

    invoke-static/range {v7 .. v12}, Lcom/transsion/commercialization/task/treasure/b$a;->c(Lcom/transsion/commercialization/task/treasure/b;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    sget-object v2, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->getResult()Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e2d\u5956\u4e86 --> lotteryDraw = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/commercialization/pslink/a;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->label:I

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, v0

    move-object v0, p1

    :goto_3
    invoke-static {v1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->r0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lkk/f;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p1, Lkk/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->getResult()Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    move-result-object v5

    :cond_7
    invoke-virtual {p1, v5}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->endIndicator(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_8
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_a

    sget v1, Lcom/transsion/wrapperad/R$string;->treasure_something_went_wrong_please_retry:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/ToastUtils;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    invoke-static {v0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->r0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lkk/f;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p1, Lkk/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->resetIndicator()V

    :cond_b
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
