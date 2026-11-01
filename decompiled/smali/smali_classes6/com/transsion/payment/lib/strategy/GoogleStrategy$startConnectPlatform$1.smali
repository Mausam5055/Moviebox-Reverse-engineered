.class public final Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a(Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

.field final synthetic b:Lkotlin/jvm/functions/Function0;

.field final synthetic c:Ljava/lang/Boolean;

.field final synthetic d:Lcom/transsion/payment/lib/b;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/jvm/functions/Function0;Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->c:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->d:Lcom/transsion/payment/lib/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/n;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "billingResult"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->u(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V

    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->s(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V

    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-static {v1, v3}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->v(Lcom/transsion/payment/lib/strategy/GoogleStrategy;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    const-string v2, "content Billing response OK"

    invoke-virtual {v1, v2}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-virtual {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->w()V

    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-virtual {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->C()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-virtual {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->y()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/payment/lib/d;->c(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-static {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I

    move-result v1

    int-to-long v3, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-virtual {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->A()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long v9, v3, v5

    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->c:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-static {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->o(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I

    move-result v1

    iget-object v3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-static {v3}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->k(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I

    move-result v3

    if-le v1, v3, :cond_2

    iget-object v11, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->d:Lcom/transsion/payment/lib/b;

    if-eqz v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-static {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1;

    iget-object v8, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    iget-object v11, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->b:Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;JLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_3
    iget-object v8, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->d:Lcom/transsion/payment/lib/b;

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->d:Lcom/transsion/payment/lib/b;

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public b()V
    .locals 14

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->u(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-static {v0, v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->s(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V

    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    const-string v1, "content Service disconnected"

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-static {v0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-virtual {v4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->A()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long v6, v0, v2

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-static {v0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v11, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1$onBillingServiceDisconnected$1;

    iget-object v5, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    iget-object v8, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->b:Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1$onBillingServiceDisconnected$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;JLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
