.class public final Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;
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

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;-><init>()V

    return-void
.end method

.method private final a()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;
    .locals 3

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    if-nez v1, :cond_2

    new-instance v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;-><init>()V

    invoke-virtual {v1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->y(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->z(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method
