.class public final Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$b;

.field private static final c:Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$a;

.field private static final d:Ljava/util/concurrent/ConcurrentHashMap;

.field private static volatile e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;->b:Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$b;

    new-instance v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$a;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$a;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;->c:Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    return-void
.end method

.method public static final synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic h()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic i()Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$a;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;->c:Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$a;

    return-object v0
.end method

.method public static final synthetic j(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p4, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeStart()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, p4

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeEnd()Ljava/lang/String;

    move-result-object p4

    :cond_6
    if-eqz v2, :cond_11

    invoke-static {v2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    if-eqz p4, :cond_11

    invoke-static {p4}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    sget-object v5, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;->b:Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$b;

    invoke-static {v5, v2, p4}, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$b;->a(Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$b;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p4

    if-nez p4, :cond_c

    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object p4

    if-eqz p4, :cond_a

    iput v4, v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_9

    return-object v1

    :cond_9
    :goto_2
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez p4, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object p4

    :cond_b
    return-object p4

    :cond_c
    invoke-virtual {p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sget-object p4, Lti/p;->a:Lti/p;

    invoke-virtual {p4}, Lti/p;->d()J

    move-result-wide v8

    cmp-long p4, v4, v8

    if-gtz p4, :cond_f

    cmp-long p4, v8, v6

    if-gtz p4, :cond_f

    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object p4

    if-eqz p4, :cond_e

    iput v3, v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_d

    return-object v1

    :cond_d
    :goto_3
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez p4, :cond_10

    :cond_e
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object p4

    goto :goto_4

    :cond_f
    new-instance p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    const/4 p1, 0x0

    const-string p2, "\u5f53\u524d\u4e0d\u5728\u5c55\u793a\u65f6\u95f4\u5185--\u65f6\u95f4\u6bb5"

    invoke-direct {p4, p1, p2}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    :cond_10
    :goto_4
    return-object p4

    :cond_11
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object p4

    if-eqz p4, :cond_13

    iput v5, v0, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_12

    return-object v1

    :cond_12
    :goto_6
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez p4, :cond_14

    :cond_13
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object p4

    :cond_14
    return-object p4
.end method
