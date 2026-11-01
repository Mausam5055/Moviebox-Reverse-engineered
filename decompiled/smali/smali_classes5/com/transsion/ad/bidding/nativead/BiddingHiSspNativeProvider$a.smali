.class public final Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;
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

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;-><init>()V

    return-void
.end method

.method private final a()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->s(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
