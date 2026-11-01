.class public final Lcom/transsion/payment/lib/strategy/GoogleStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/payment/lib/strategy/g;
.implements Lnh/n;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Ljava/util/HashSet;

.field private final c:Ljava/util/HashSet;

.field private final d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Lkotlinx/coroutines/n0;

.field private j:Lcom/transsion/payment/lib/b;

.field private final k:Lcom/android/billingclient/api/v;

.field private final l:Lcom/android/billingclient/api/h;

.field private final m:Lkotlin/Lazy;

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a:Landroidx/lifecycle/b0;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->b:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->c:Ljava/util/HashSet;

    sget-object v2, Lnh/l;->g:Lnh/l$a;

    invoke-virtual {v2}, Lnh/l$a;->a()Lnh/l;

    move-result-object v2

    invoke-virtual {v2, p0}, Lnh/l;->F(Lnh/n;)V

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->d:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->f:I

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/payment/lib/strategy/a;

    invoke-direct {v0, p0}, Lcom/transsion/payment/lib/strategy/a;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)V

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->k:Lcom/android/billingclient/api/v;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/billingclient/api/h;->c(Landroid/content/Context;)Lcom/android/billingclient/api/h$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/h$a;->c(Lcom/android/billingclient/api/v;)Lcom/android/billingclient/api/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/h$a;->b()Lcom/android/billingclient/api/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    new-instance v0, Lcom/transsion/payment/lib/strategy/b;

    invoke-direct {v0}, Lcom/transsion/payment/lib/strategy/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->m:Lkotlin/Lazy;

    return-void
.end method

.method private final B(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;

    iget v2, v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->label:I

    :goto_0
    move-object v14, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;

    invoke-direct {v1, v8, v0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v15

    iget v1, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->label:I

    const-string v13, ""

    const/16 v17, -0x1e

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v9, :cond_1

    iget-object v1, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v10

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v6, v10

    goto/16 :goto_9

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v6, v10

    move v1, v12

    move-object v2, v13

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_3
    move-object v4, v10

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_3

    :cond_4
    move-object v3, v10

    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->a()Lcom/android/billingclient/api/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v10

    :goto_4
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_5

    :cond_6
    move-object v6, v10

    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->e()I

    move-result v1

    if-ne v1, v9, :cond_9

    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePurchase \u652f\u4ed8\u7ed3\u679c orderId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " purchaseToken "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " productId "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " gpOrderId "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v11, Lcom/transsion/payment/lib/PayUtils;->a:Lcom/transsion/payment/lib/PayUtils;

    new-instance v16, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;

    const/4 v7, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->L$0:Ljava/lang/Object;

    iput v9, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->label:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v9, v11

    move-object v6, v10

    move-wide v10, v1

    move v1, v12

    move v12, v3

    move-object v2, v13

    move-object/from16 v13, v16

    move-object v3, v15

    move v15, v4

    move-object/from16 v16, v5

    :try_start_3
    invoke-static/range {v9 .. v16}, Lcom/transsion/payment/lib/PayUtils;->b(Lcom/transsion/payment/lib/PayUtils;JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v3, :cond_c

    return-object v3

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_2
    :goto_6
    :try_start_4
    iget-object v3, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    if-eqz v3, :cond_7

    invoke-interface {v3, v1}, Lcom/transsion/payment/lib/b;->b(Z)V

    :cond_7
    iget-object v3, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    if-eqz v3, :cond_8

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2, v1, v0}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_8
    iput-object v6, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    const-string v1, "handlePurchase \u53d1\u8d27\u8fdb\u884c\u4e2ding"

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    move-object v6, v10

    move v1, v12

    move-object v2, v13

    sget-object v3, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    const-string v4, "handlePurchase \u5931\u8d25"

    invoke-virtual {v3, v4}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    if-eqz v3, :cond_b

    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->e()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_7

    :cond_a
    move-object v10, v6

    :goto_7
    invoke-interface {v3, v10, v2, v1, v0}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_b
    iput-object v6, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    :cond_c
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    :goto_9
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    instance-of v1, v0, Lretrofit2/HttpException;

    if-eqz v1, :cond_10

    iget-object v9, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    if-eqz v9, :cond_11

    move-object v1, v0

    check-cast v1, Lretrofit2/HttpException;

    invoke-virtual {v1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lretrofit2/j0;->b()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_b

    :cond_e
    move-object v10, v6

    :goto_b
    invoke-virtual {v1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lretrofit2/j0;->f()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_c

    :cond_f
    move-object v11, v6

    :goto_c
    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_d

    :cond_10
    iget-object v1, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    if-eqz v1, :cond_11

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v16 .. v22}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_11
    :goto_d
    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    iput-object v6, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    :goto_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final D(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 6

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "purchaseList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;

    const/4 p1, 0x0

    invoke-direct {v3, p2, p0, p1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;-><init>(Ljava/util/List;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final E()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    new-instance v0, Lcom/transsion/payment/lib/PaymentService;

    invoke-direct {v0}, Lcom/transsion/payment/lib/PaymentService;-><init>()V

    return-object v0
.end method

.method private static final F(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "billingResult"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PurchasesUpdatedListener responseCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "purchases: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    iput v2, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    iget-object v2, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    if-eqz v2, :cond_1

    invoke-interface {v2, v6}, Lcom/transsion/payment/lib/b;->b(Z)V

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v6

    new-instance v9, Lcom/transsion/payment/lib/strategy/GoogleStrategy$purchasesUpdatedListener$1$1;

    invoke-direct {v9, v1, v0, v5}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$purchasesUpdatedListener$1$1;-><init>(Ljava/util/List;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v1

    if-ne v1, v6, :cond_4

    const-string v1, "PurchasesUpdatedListener USER_CANCELED"

    invoke-virtual {v2, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    if-eqz v7, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-string v9, "User Cancelled"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_3
    iput-object v5, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    goto :goto_1

    :cond_4
    iget-object v14, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    if-eqz v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_5
    iput-object v5, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    :goto_1
    return-void
.end method

.method private final G(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/payment/lib/b;)V
    .locals 8

    if-eqz p4, :cond_0

    const-string v0, "subs"

    goto :goto_0

    :cond_0
    const-string v0, "inapp"

    :goto_0
    invoke-static {}, Lcom/android/billingclient/api/w$b;->a()Lcom/android/billingclient/api/w$b$a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/w$b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/w$b$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/w$b$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/w$b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/w$b$a;->a()Lcom/android/billingclient/api/w$b;

    move-result-object p2

    const-string v0, "build(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/w;->a()Lcom/android/billingclient/api/w$a;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/billingclient/api/w$b;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/w$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/w$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/w$a;->a()Lcom/android/billingclient/api/w;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    new-instance v7, Lcom/transsion/payment/lib/strategy/f;

    move-object v1, v7

    move v2, p4

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/payment/lib/strategy/f;-><init>(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v7}, Lcom/android/billingclient/api/h;->d(Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)V

    return-void
.end method

.method private static final H(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 5

    const-string v0, "billingResult"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productDetailsList"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->b()I

    move-result v1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryProductDetailsAsync resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result size: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/billingclient/api/r;

    if-eqz p6, :cond_3

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "productDetail is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/m$b;->a()Lcom/android/billingclient/api/m$b$a;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/android/billingclient/api/m$b$a;->c(Lcom/android/billingclient/api/r;)Lcom/android/billingclient/api/m$b$a;

    move-result-object v1

    const-string v2, "setProductDetails(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-virtual {p6}, Lcom/android/billingclient/api/r;->d()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/billingclient/api/r$d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/billingclient/api/r$d;->a()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/billingclient/api/m$b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/m$b$a;

    :cond_2
    invoke-virtual {v1}, Lcom/android/billingclient/api/m$b$a;->a()Lcom/android/billingclient/api/m$b;

    move-result-object p0

    const-string p6, "build(...)"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/m;->a()Lcom/android/billingclient/api/m$a;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/billingclient/api/m$a;->c(Ljava/util/List;)Lcom/android/billingclient/api/m$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/m$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/m$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/m$a;->a()Lcom/android/billingclient/api/m;

    move-result-object p0

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p2, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    const-string p1, "Launch billing flow"

    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    invoke-virtual {p1, p4, p0}, Lcom/android/billingclient/api/h;->b(Landroid/app/Activity;Lcom/android/billingclient/api/m;)Lcom/android/billingclient/api/n;

    goto :goto_0

    :cond_3
    const-string p0, "billingFlowParams productDetail null"

    invoke-virtual {v0, p0}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p0, p2, v2, p1}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p0, p2, v2, p1}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->b()I

    move-result p0

    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryProductDetailsAsync failed list: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", message: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final I(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->b(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final J(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p4, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;

    iget v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->J$0:J

    iget-object p3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-wide p1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->J$0:J

    iget-object p3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_4
    iget p4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    add-int/lit8 v2, p4, 0x1

    iput v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    iget v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->d:I

    if-ge p4, v2, :cond_6

    iget-boolean p4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->h:Z

    if-nez p4, :cond_6

    const-wide/16 v5, 0x0

    cmp-long p4, p1, v5

    if-lez p4, :cond_5

    iput-object p3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->J$0:J

    iput v4, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    iput-object p3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->J$0:J

    iput v3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final K()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v4, Lcom/transsion/payment/lib/strategy/c;

    invoke-direct {v4, p0}, Lcom/transsion/payment/lib/strategy/c;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/payment/lib/strategy/g$a;->b(Lcom/transsion/payment/lib/strategy/g;Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final L(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->w()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->D(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->H(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;Lcom/android/billingclient/api/n;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    invoke-static {}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->E()Lcom/transsion/payment/lib/PaymentService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->F(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->L(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->I(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I
    .locals 0

    iget p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->f:I

    return p0
.end method

.method public static final synthetic k(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I
    .locals 0

    iget p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->d:I

    return p0
.end method

.method public static final synthetic l(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/PaymentService;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->z()Lcom/transsion/payment/lib/PaymentService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I
    .locals 0

    iget p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    return p0
.end method

.method public static final synthetic p(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->B(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/payment/lib/b;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->G(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/payment/lib/b;)V

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/payment/lib/strategy/GoogleStrategy;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->J(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->h:Z

    return-void
.end method

.method public static final synthetic t(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    return-void
.end method

.method public static final synthetic u(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->g:Z

    return-void
.end method

.method public static final synthetic v(Lcom/transsion/payment/lib/strategy/GoogleStrategy;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    return-void
.end method

.method private final z()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/payment/lib/PaymentService;

    return-object v0
.end method


# virtual methods
.method public final A()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->n:J

    return-wide v0
.end method

.method public C()V
    .locals 3

    invoke-static {}, Lcom/android/billingclient/api/x;->a()Lcom/android/billingclient/api/x$a;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/x$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/x$a;

    move-result-object v0

    const-string v1, "setProductType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    invoke-virtual {v0}, Lcom/android/billingclient/api/x$a;->a()Lcom/android/billingclient/api/x;

    move-result-object v0

    new-instance v2, Lcom/transsion/payment/lib/strategy/e;

    invoke-direct {v2, p0}, Lcom/transsion/payment/lib/strategy/e;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/h;->e(Lcom/android/billingclient/api/x;Lcom/android/billingclient/api/u;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->g:Z

    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    const-string v1, "startBillingConnection start"

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->n:J

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    new-instance v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/jvm/functions/Function0;Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->f(Lcom/android/billingclient/api/j;)V

    return-void
.end method

.method public b(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V
    .locals 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createOrderReq"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-virtual {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> requestPay() --> \u8bf7\u6c42\u63a5\u53e3\u521b\u5efa\u8ba2\u5355...."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p4, v0}, Lcom/transsion/payment/lib/b;->b(Z)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v8, Lcom/transsion/payment/lib/strategy/d;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/transsion/payment/lib/strategy/d;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, p4, v8}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a(Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    new-instance v9, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v9

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    instance-of p2, p1, Lretrofit2/HttpException;

    if-eqz p2, :cond_4

    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lretrofit2/j0;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object v1, p2

    goto :goto_2

    :cond_2
    move-object v1, p3

    :goto_2
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lretrofit2/j0;->f()Ljava/lang/String;

    move-result-object p3

    :cond_3
    move-object v2, p3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p4

    invoke-static/range {v0 .. v6}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/16 p2, -0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p4

    invoke-static/range {v0 .. v6}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lnh/l;->g:Lnh/l$a;

    invoke-virtual {p1}, Lnh/l$a;->a()Lnh/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnh/l;->F(Lnh/n;)V

    return-void
.end method

.method public onConnected()V
    .locals 0

    invoke-static {p0}, Lnh/n$a;->a(Lnh/n;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->K()V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/payment/lib/strategy/GoogleStrategy$fetchSkuList$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$fetchSkuList$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/transsion/payment/lib/strategy/g$a;->a(Lcom/transsion/payment/lib/strategy/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->c:Ljava/util/HashSet;

    return-object v0
.end method
