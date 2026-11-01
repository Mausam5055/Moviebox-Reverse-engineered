.class final Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->v0()V
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
    c = "com.transsion.commercialization.task.treasure.CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1"
    f = "CheckLotteryLoadingDialog.kt"
    l = {
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

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

    new-instance p1, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

    invoke-direct {p1, v0, p2}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;-><init>(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->r0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Lcom/transsion/commercialization/task/treasure/b;

    move-result-object v3

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->q0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->s0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/String;

    move-result-object v6

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->label:I

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v3 .. v9}, Lcom/transsion/commercialization/task/treasure/b$a;->a(Lcom/transsion/commercialization/task/treasure/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getUserLottery()Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;->getTodayRemain()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_4

    new-instance v1, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    invoke-direct {v1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;-><init>()V

    invoke-virtual {v1, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->D0(Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;)Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "WheelViewDialog"

    invoke-virtual {p1, v1, v3}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object p1, Lok/c;->a:Lok/c;

    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> getLotteryUserActivityInfo() --> \u5f53\u524d\u6ca1\u6709\u62bd\u5956\u6b21\u6570\u4e86"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lok/c;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->t0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/transsion/commercialization/R$string;->daily_spin_limit_reached:I

    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->r(I)V

    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    sget-object v1, Lok/c;->a:Lok/c;

    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> getLotteryUserActivityInfo() ---> getOrElse() --> it = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lok/c;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->t0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, p1, Lretrofit2/HttpException;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->Companion:Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;

    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {v1, p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;->a(Lretrofit2/HttpException;)Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_7
    const-string p1, ""

    :cond_8
    invoke-static {p1}, Lcom/transsion/core/utils/ToastUtil;->f(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
