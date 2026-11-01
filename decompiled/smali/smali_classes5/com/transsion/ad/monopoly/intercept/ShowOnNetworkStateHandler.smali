.class public final Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;

.field private static volatile c:Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;->b:Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    return-void
.end method

.method public static final synthetic g()Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;->c:Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;

    return-object v0
.end method

.method public static final synthetic h(Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;)V
    .locals 0

    sput-object p0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;->c:Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;

    return-void
.end method

.method private final i(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtraConfig()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "network"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "on"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p4, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

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
    iget-object p1, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p2, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$2:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Ljava/util/Map;

    iget-object p2, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    iget-object v2, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;->i(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Ljava/lang/Boolean;

    move-result-object p4

    sget-object v2, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;->b:Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->label:I

    invoke-static {v2, v0}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;->a(Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, v2

    move-object v2, p1

    move-object p1, p4

    move-object p4, v6

    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    const/4 v5, 0x0

    if-eqz p4, :cond_5

    if-eqz p1, :cond_7

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_7

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance p2, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u72b6\u6001 = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " -- isShowOnNetwork = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    goto :goto_4

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 p4, 0x0

    iput-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$0:Ljava/lang/Object;

    iput-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$doHandle$1;->label:I

    invoke-virtual {p1, v2, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    move-object p2, p4

    check-cast p2, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez p2, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object p2

    :cond_a
    :goto_4
    return-object p2
.end method
