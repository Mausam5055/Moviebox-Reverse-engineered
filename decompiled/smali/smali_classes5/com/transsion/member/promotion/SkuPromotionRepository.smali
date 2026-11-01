.class public final Lcom/transsion/member/promotion/SkuPromotionRepository;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/promotion/SkuPromotionRepository$a;,
        Lcom/transsion/member/promotion/SkuPromotionRepository$b;
    }
.end annotation


# static fields
.field private static final b:Lcom/transsion/member/promotion/SkuPromotionRepository$b;

.field public static final c:I

.field private static final d:Lkotlinx/coroutines/sync/a;

.field private static volatile e:Lcom/transsion/member/promotion/SkuPromotionRepository$a;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/member/promotion/SkuPromotionRepository$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/promotion/SkuPromotionRepository$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/promotion/SkuPromotionRepository;->b:Lcom/transsion/member/promotion/SkuPromotionRepository$b;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/promotion/SkuPromotionRepository;->c:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object v0

    sput-object v0, Lcom/transsion/member/promotion/SkuPromotionRepository;->d:Lkotlinx/coroutines/sync/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/member/promotion/w;

    invoke-direct {v0}, Lcom/transsion/member/promotion/w;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/promotion/SkuPromotionRepository;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lvm/a;
    .locals 1

    invoke-static {}, Lcom/transsion/member/promotion/SkuPromotionRepository;->f()Lvm/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/member/promotion/SkuPromotionRepository;)Lvm/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/promotion/SkuPromotionRepository;->c()Lvm/a;

    move-result-object p0

    return-object p0
.end method

.method private final c()Lvm/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/promotion/SkuPromotionRepository;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm/a;

    return-object v0
.end method

.method private final e(Ljava/lang/String;J)Lcom/transsion/memberapi/SkuPromotionDto;
    .locals 4

    sget-object v0, Lcom/transsion/member/promotion/SkuPromotionRepository;->e:Lcom/transsion/member/promotion/SkuPromotionRepository$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->a()J

    move-result-wide v2

    sub-long/2addr p2, v2

    invoke-virtual {v0}, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p1, v2, p2

    if-gtz p1, :cond_1

    const-wide/32 v2, 0x927c0

    cmp-long p1, p2, v2

    if-gez p1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->c()Lcom/transsion/memberapi/SkuPromotionDto;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static final f()Lvm/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lvm/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm/a;

    return-object v0
.end method


# virtual methods
.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;

    iget v1, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;-><init>(Lcom/transsion/member/promotion/SkuPromotionRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/a;

    iget-object v0, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/a;

    iget-object v6, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lcom/transsion/member/promotion/SkuPromotionRepository;->e(Ljava/lang/String;J)Lcom/transsion/memberapi/SkuPromotionDto;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    sget-object v2, Lcom/transsion/member/promotion/SkuPromotionRepository;->d:Lkotlinx/coroutines/sync/a;

    iput-object p1, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->label:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/a;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lcom/transsion/member/promotion/SkuPromotionRepository;->e(Ljava/lang/String;J)Lcom/transsion/memberapi/SkuPromotionDto;

    move-result-object v6

    if-eqz v6, :cond_6

    goto/16 :goto_7

    :cond_6
    sget-object v6, Lcom/transsion/member/promotion/x;->a:Lcom/transsion/member/promotion/x;

    invoke-virtual {v6}, Lcom/transsion/member/promotion/x;->b()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/transsion/member/promotion/x;->a()Lcom/transsion/memberapi/SkuPromotionDto;

    move-result-object v0

    move-object v6, v0

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto/16 :goto_8

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v6

    new-instance v7, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$3$promotion$1;

    invoke-direct {v7, p0, p1, v5}, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$3$promotion$1;-><init>(Lcom/transsion/member/promotion/SkuPromotionRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/member/promotion/SkuPromotionRepository$getPromotion$1;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v1, v2

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    :goto_2
    :try_start_2
    check-cast p1, Lcom/transsion/memberapi/SkuPromotionDto;

    move-object v6, p1

    move-object p1, v0

    :goto_3
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/transsion/memberapi/SkuPromotionDto;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :cond_a
    :goto_4
    if-nez v4, :cond_b

    move-object v0, v6

    goto :goto_5

    :cond_b
    move-object v0, v5

    :goto_5
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/transsion/memberapi/SkuPromotionDto;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-virtual {v0}, Lcom/transsion/memberapi/SkuPromotionDto;->getMarketingActivityId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/memberapi/SkuPromotionItem;->setMarketingActivityId(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    new-instance v2, Lcom/transsion/member/promotion/SkuPromotionRepository$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/transsion/member/promotion/SkuPromotionRepository$a;-><init>(Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionDto;J)V

    sput-object v2, Lcom/transsion/member/promotion/SkuPromotionRepository;->e:Lcom/transsion/member/promotion/SkuPromotionRepository$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    move-object v2, v1

    :goto_7
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    return-object v6

    :goto_8
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
