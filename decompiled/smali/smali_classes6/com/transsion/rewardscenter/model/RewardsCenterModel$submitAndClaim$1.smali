.class final Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/model/RewardsCenterModel;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.transsion.rewardscenter.model.RewardsCenterModel$submitAndClaim$1"
    f = "RewardsCenterModel.kt"
    l = {
        0xb9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cc:Ljava/lang/String;

.field final synthetic $drawResultId:Ljava/lang/String;

.field final synthetic $iso:Ljava/lang/String;

.field final synthetic $number:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenter/model/RewardsCenterModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    iput-object p2, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$drawResultId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$cc:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$number:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$iso:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->g(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->A(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->m()Landroidx/lifecycle/b0;

    move-result-object p0

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->e(Ljava/lang/String;)V

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

    new-instance p1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;

    iget-object v1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    iget-object v2, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$drawResultId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$cc:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$number:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$iso:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$cc:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$number:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$iso:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/transsion/rewardscenterapi/PhoneInfo;

    invoke-direct {v7, v2, v4, v5}, Lcom/transsion/rewardscenterapi/PhoneInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iget-object v2, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    invoke-virtual {v2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v2, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    new-instance v4, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;

    iget-object v9, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$drawResultId:Ljava/lang/String;

    const/16 v15, 0x3a

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v16}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v5, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    new-instance v6, Lcom/transsion/rewardscenter/model/j;

    invoke-direct {v6, v5}, Lcom/transsion/rewardscenter/model/j;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;)V

    iget-object v5, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    iget-object v7, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->$drawResultId:Ljava/lang/String;

    new-instance v8, Lcom/transsion/rewardscenter/model/k;

    invoke-direct {v8, v5, v7}, Lcom/transsion/rewardscenter/model/k;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;)V

    iput v3, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;->label:I

    invoke-virtual {v2, v4, v6, v8, v0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->w(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
