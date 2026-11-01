.class public final Lcom/transsion/ad/bidding/splash/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/bidding/splash/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/splash/a$a;-><init>()V

    return-void
.end method

.method private final b()Ljava/util/HashMap;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/bidding/splash/a;->v()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/transsion/ad/bidding/splash/a;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/splash/a$a;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/bidding/splash/a;

    if-nez v1, :cond_2

    new-instance v1, Lcom/transsion/ad/bidding/splash/a;

    invoke-direct {v1}, Lcom/transsion/ad/bidding/splash/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->q(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/splash/a$a;->b()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, p1}, Lcom/transsion/ad/bidding/splash/a;->y(Ljava/lang/String;)V

    return-object v1
.end method
