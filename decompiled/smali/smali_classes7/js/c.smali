.class public final Ljs/c;
.super Ljs/k;


# instance fields
.field private a:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Ljs/c;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljs/k;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ljs/c;->a:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Ljs/c;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    iget-object v0, p0, Ljs/c;->a:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljs/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljs/c;

    iget-object v1, p0, Ljs/c;->a:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    iget-object p1, p1, Ljs/c;->a:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljs/c;->a:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljs/c;->a:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShortTvAdItem(nonAdDelegate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
