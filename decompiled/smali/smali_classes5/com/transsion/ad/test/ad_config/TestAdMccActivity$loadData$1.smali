.class final Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_config/TestAdMccActivity;->e0()V
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
    c = "com.transsion.ad.test.ad_config.TestAdMccActivity$loadData$1"
    f = "TestAdMccActivity.kt"
    l = {
        0x7b,
        0x8a
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/test/ad_config/TestAdMccActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

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

    new-instance p1, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;

    iget-object v0, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    invoke-direct {p1, v0, p2}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;-><init>(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

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

    sget-object p1, Lcom/transsion/ad/strategy/NationalInformationManager;->a:Lcom/transsion/ad/strategy/NationalInformationManager;

    iput v3, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->label:I

    invoke-virtual {p1, p0}, Lcom/transsion/ad/strategy/NationalInformationManager;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v4}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_5

    const-string v6, "sp_code"

    invoke-virtual {v4, v6, v5}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v5, v4

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity;->Z(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;Lcom/transsion/ad/db/mcc/LocalMcc;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-gez v7, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_6
    check-cast v8, Lcom/transsion/ad/db/mcc/LocalMcc;

    invoke-virtual {v8}, Lcom/transsion/ad/db/mcc/LocalMcc;->getMcc()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$b;

    invoke-direct {v10, v3, v8}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$b;-><init>(ZLcom/transsion/ad/db/mcc/LocalMcc;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v8}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity;->Z(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;Lcom/transsion/ad/db/mcc/LocalMcc;)V

    invoke-static {v4, v7}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity;->Y(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;I)V

    goto :goto_3

    :cond_7
    new-instance v7, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$b;

    invoke-direct {v7, v6, v8}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$b;-><init>(ZLcom/transsion/ad/db/mcc/LocalMcc;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :goto_3
    move v7, v9

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    invoke-static {p1}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity;->X(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;)Lcom/transsion/ad/test/ad_config/TestAdMccActivity$a;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_9
    iput v2, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->label:I

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    invoke-static {p1}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity;->V(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;)Lji/q;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p1, Lji/q;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/ad/test/ad_config/TestAdMccActivity$loadData$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    invoke-static {v0}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity;->W(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->scrollToPosition(I)V

    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
