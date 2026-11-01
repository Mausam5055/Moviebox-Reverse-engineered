.class public final Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;->h(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final h(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;-><init>(Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object p2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v0

    move-object v0, p2

    move-object p2, v2

    :goto_1
    move-object v2, v6

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/transsion/ad/strategy/NationalInformationManager;->a:Lcom/transsion/ad/strategy/NationalInformationManager;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "toLowerCase(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$isCountryInWhitelist$1;->label:I

    invoke-virtual {v4, v2, v0}, Lcom/transsion/ad/strategy/NationalInformationManager;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v6, v0

    move-object v0, p3

    move-object p3, v2

    goto :goto_1

    :goto_3
    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_4

    check-cast p3, Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    move-object p3, v0

    move-object v0, v2

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/transsion/ad/strategy/NationalInformationManager;->a:Lcom/transsion/ad/strategy/NationalInformationManager;

    invoke-virtual {p1}, Lcom/transsion/ad/strategy/NationalInformationManager;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "toUpperCase(...)"

    if-eqz v0, :cond_8

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/ad/db/mcc/LocalMcc;

    invoke-virtual {p3}, Lcom/transsion/ad/db/mcc/LocalMcc;->getIso()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_8
    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/ad/db/mcc/LocalMcc;

    invoke-virtual {p3}, Lcom/transsion/ad/db/mcc/LocalMcc;->getMcc()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p4, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$2:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljava/util/Map;

    iget-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    iget-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountry()Ljava/util/List;

    move-result-object p4

    goto :goto_1

    :cond_4
    move-object p4, v5

    :goto_1
    move-object v2, p4

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    iput-object p1, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    invoke-direct {p0, p4, v2, v0}, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler;->h(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_7
    :goto_3
    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object p4

    if-eqz p4, :cond_9

    iput-object v5, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/monopoly/intercept/CountryInWhitelistHandler$doHandle$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez p4, :cond_b

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object p4

    goto :goto_5

    :cond_a
    new-instance p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    const/4 p1, 0x0

    const-string p2, "\u5f53\u524d\u56fd\u5bb6\u4e0d\u5728\u767d\u540d\u5355\u4e2d"

    invoke-direct {p4, p1, p2}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    :cond_b
    :goto_5
    return-object p4
.end method
