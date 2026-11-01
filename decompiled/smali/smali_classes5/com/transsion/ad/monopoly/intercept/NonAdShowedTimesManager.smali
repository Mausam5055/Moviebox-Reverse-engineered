.class public final Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->a:Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/transsion/ad/db/plan/MbAdDbPlans;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    sget-object v1, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->getDate()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lti/p;->a:Lti/p;

    invoke-virtual {v1}, Lti/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->getShowedTimes()I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lti/p;->a:Lti/p;

    invoke-virtual {v3}, Lti/p;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    invoke-virtual {p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    invoke-virtual {v3}, Lti/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    invoke-virtual {v3}, Lti/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return v0
.end method

.method public final c(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/db/plan/MbAdDbPlans;

    move-result-object v0

    sget-object v1, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->getDate()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lti/p;->a:Lti/p;

    invoke-virtual {v6}, Lti/p;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->getShowedTimes()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->setShowedTimes(I)V

    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    invoke-virtual {v6}, Lti/p;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    :goto_0
    if-nez v2, :cond_6

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lti/p;->a:Lti/p;

    invoke-virtual {v5}, Lti/p;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setShowedTimes(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_4
    invoke-virtual {v5}, Lti/p;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    invoke-virtual {v5}, Lti/p;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    :cond_6
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;

    invoke-direct {v7, v0, p1, v3}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;-><init>(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
