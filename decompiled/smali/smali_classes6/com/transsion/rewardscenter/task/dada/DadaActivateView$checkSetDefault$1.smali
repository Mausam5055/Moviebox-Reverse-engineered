.class final Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->q(JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.rewardscenter.task.dada.DadaActivateView$checkSetDefault$1"
    f = "DaDaActivateView.kt"
    l = {
        0x191,
        0x193
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onFailure:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $time:J

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenter/task/dada/DadaActivateView;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    iput-wide p2, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$time:J

    iput-object p4, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->g(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Lcom/transsion/rewardscenterapi/DaDaInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->h(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Lcom/transsion/rewardscenterapi/DaDaInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)Lwp/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;Lcom/transsion/rewardscenterapi/DaDaInfo;)Lkotlin/Unit;
    .locals 7

    invoke-static {p0}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)Lwp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DaDaInfo;->isSetDefault()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--> checkDadaSetDefault: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "RewardsCenter"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DaDaInfo;->isSetDefault()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->SET_DEFAULT:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$setTaskState(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenter/task/dada/DadaTaskState;)V

    :cond_3
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

    new-instance p1, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    iget-wide v2, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$time:J

    iget-object v4, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    invoke-static {p1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)Lwp/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lwp/a;->a()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->showLoading()V

    :cond_3
    iget-wide v4, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$time:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_4

    iput v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    sget-object p1, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    new-instance v4, Lcom/transsion/rewardscenter/task/dada/j;

    invoke-direct {v4, v1, v3}, Lcom/transsion/rewardscenter/task/dada/j;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    new-instance v5, Lcom/transsion/rewardscenter/task/dada/k;

    invoke-direct {v5, v1, v3}, Lcom/transsion/rewardscenter/task/dada/k;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/jvm/functions/Function1;)V

    iput v2, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$checkSetDefault$1;->label:I

    invoke-virtual {p1, v4, v5, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->j(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
