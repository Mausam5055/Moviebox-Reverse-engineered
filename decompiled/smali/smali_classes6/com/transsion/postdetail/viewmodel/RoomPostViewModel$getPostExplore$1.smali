.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->J(Landroid/content/Context;ZZLjava/lang/String;ILjava/lang/String;)V
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
    c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getPostExplore$1"
    f = "RoomPostViewModel.kt"
    l = {
        0xcd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $insertPostId:Ljava/lang/String;

.field final synthetic $isFirstLoad:Z

.field final synthetic $isRefresh:Z

.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;ZLjava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$isFirstLoad:Z

    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    iput-boolean p3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$isRefresh:Z

    iput-object p4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$page:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$perPage:I

    iput-object p6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$insertPostId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;

    iget-boolean v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$isFirstLoad:Z

    iget-object v2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    iget-boolean v3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$isRefresh:Z

    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$page:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$perPage:I

    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$insertPostId:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;-><init>(ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;ZLjava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-boolean v4, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$isFirstLoad:Z

    if-eqz v4, :cond_12

    sget-object v4, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    const-string v6, "room_cache_data"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-virtual {v6}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->X()Z

    move-result v6

    const-string v8, ",\u7f51\u7edc\u7f13\u5b58\uff1a"

    const-string v9, "getPostExplore  \u624b\u52a8\u7f13\u5b58\uff1a"

    const/4 v10, 0x0

    if-eqz v6, :cond_b

    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    const-string v11, "post_explore_net_cache_exp"

    invoke-virtual {v6, v11, v7}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v11, "post_explore_exposed_cache"

    invoke-virtual {v4, v11, v7}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Llg/a;->a:Llg/a$a;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move v7, v10

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v3

    :goto_1
    xor-int/2addr v7, v3

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    move v12, v10

    goto :goto_3

    :cond_5
    :goto_2
    move v12, v3

    :goto_3
    xor-int/2addr v12, v3

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_6

    goto :goto_4

    :cond_6
    move v13, v10

    goto :goto_5

    :cond_7
    :goto_4
    move v13, v3

    :goto_5
    xor-int/2addr v13, v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",\u5df2\u66dd\u5149\u7f13\u5b58\uff1a"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "RoomPostVM"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_13

    :cond_8
    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_13

    :cond_9
    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_13

    :cond_a
    iget-boolean v10, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$isRefresh:Z

    goto :goto_a

    :cond_b
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v6, "post_explore_net_cache"

    invoke-virtual {v4, v6, v7}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Llg/a;->a:Llg/a$a;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_c

    goto :goto_6

    :cond_c
    move v6, v10

    goto :goto_7

    :cond_d
    :goto_6
    move v6, v3

    :goto_7
    xor-int/2addr v6, v3

    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_e

    goto :goto_8

    :cond_e
    move v7, v10

    goto :goto_9

    :cond_f
    :goto_8
    move v7, v3

    :goto_9
    xor-int/2addr v7, v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "RoomPostVM"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_13

    :cond_10
    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_13

    :cond_11
    iget-boolean v10, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$isRefresh:Z

    goto :goto_a

    :cond_12
    iget-boolean v10, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$isRefresh:Z

    :cond_13
    :goto_a
    iput-boolean v10, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v10, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$1;

    iget-object v5, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    iget-object v6, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$page:Ljava/lang/String;

    iget v7, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$perPage:I

    iget-object v8, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$insertPostId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v10}, Lkotlinx/coroutines/flow/d;->s(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/b;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/coroutines/flow/d;->u(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/b;

    move-result-object v4

    new-instance v5, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$2;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v5}, Lkotlinx/coroutines/flow/d;->f(Lkotlinx/coroutines/flow/b;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/b;

    move-result-object v4

    new-instance v5, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;

    iget-boolean v6, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->$isFirstLoad:Z

    iget-object v7, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-direct {v5, v6, v2, v7}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;-><init>(ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V

    iput v3, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->label:I

    invoke-interface {v4, v5, v0}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_14

    return-object v1

    :cond_14
    :goto_b
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
