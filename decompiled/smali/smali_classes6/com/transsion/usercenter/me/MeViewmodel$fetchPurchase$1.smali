.class final Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/me/MeViewmodel;->A()V
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
    c = "com.transsion.usercenter.me.MeViewmodel$fetchPurchase$1"
    f = "MeViewmodel.kt"
    l = {
        0xdf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/me/MeViewmodel;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/usercenter/me/MeViewmodel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

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

    new-instance v0, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;

    iget-object v1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-direct {v0, v1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;-><init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/usercenter/me/MeViewmodel;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v3, p1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/n0;

    iget-object v2, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Lcom/transsion/usercenter/me/MeViewmodel;->m(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsnet/loginapi/bean/UserInfo;->getPhone()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-static {v2}, Lcom/transsion/usercenter/me/MeViewmodel;->m(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    sget-object v4, Lih/b;->a:Lih/b;

    invoke-virtual {v4}, Lih/b;->i()Ljava/lang/String;

    move-result-object v9

    sget-object v4, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v4}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, ""

    if-eqz v4, :cond_4

    :try_start_2
    const-string v6, "custom_local_iso"

    invoke-virtual {v4, v6, v5}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "toUpperCase(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    sget-object v14, Lbh/b;->a:Lbh/b$a;

    new-instance v16, Lcom/transsion/usercenter/profile/bean/ZeroBody;

    if-nez v4, :cond_5

    move-object v6, v5

    goto :goto_3

    :cond_5
    move-object v6, v4

    :goto_3
    const/16 v13, 0x60

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, v16

    move-object v15, v14

    move-object v14, v4

    invoke-direct/range {v5 .. v14}, Lcom/transsion/usercenter/profile/bean/ZeroBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v16 .. v16}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toJson(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    invoke-static {v2}, Lcom/transsion/usercenter/me/MeViewmodel;->t(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/transsion/usercenter/profile/bean/ZeroConfig;->getUrlPath()Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_8

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    const-string v15, "campaign/v1/freebuy/campaign/recent"

    :cond_9
    invoke-static {v2}, Lcom/transsion/usercenter/me/MeViewmodel;->o(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/d;

    move-result-object v5

    iput-object v2, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->L$0:Ljava/lang/Object;

    iput v3, v1, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;->label:I

    invoke-interface {v5, v4, v15, v1}, Lcom/transsion/usercenter/profile/d;->a(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_a

    return-object v0

    :cond_a
    move-object v0, v2

    :goto_5
    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v5, "MeViewmodel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zero entrance:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0}, Lcom/transsion/usercenter/me/MeViewmodel;->u(Lcom/transsion/usercenter/me/MeViewmodel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/transsion/usercenter/me/MeViewmodel;->u(Lcom/transsion/usercenter/me/MeViewmodel;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/usercenter/profile/bean/ZeroResponse;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/ZeroResponse;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    :goto_6
    check-cast v3, Ljava/util/Collection;

    goto :goto_7

    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :goto_7
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/transsion/usercenter/me/MeViewmodel;->v(Lcom/transsion/usercenter/me/MeViewmodel;)V

    :cond_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :goto_8
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
