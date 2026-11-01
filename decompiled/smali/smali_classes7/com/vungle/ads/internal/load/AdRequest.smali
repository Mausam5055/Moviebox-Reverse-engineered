.class public final Lcom/vungle/ads/internal/load/AdRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vungle/ads/internal/load/AdRequest;",
        "Ljava/io/Serializable;",
        "Lcom/vungle/ads/internal/model/g;",
        "placement",
        "Lcom/vungle/ads/internal/model/BidPayload;",
        "adMarkup",
        "Lcom/vungle/ads/y;",
        "requestAdSize",
        "<init>",
        "(Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/internal/model/BidPayload;Lcom/vungle/ads/y;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "Lcom/vungle/ads/internal/model/g;",
        "getPlacement",
        "()Lcom/vungle/ads/internal/model/g;",
        "Lcom/vungle/ads/internal/model/BidPayload;",
        "getAdMarkup",
        "()Lcom/vungle/ads/internal/model/BidPayload;",
        "Lcom/vungle/ads/y;",
        "getRequestAdSize",
        "()Lcom/vungle/ads/y;",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

.field private final placement:Lcom/vungle/ads/internal/model/g;

.field private final requestAdSize:Lcom/vungle/ads/y;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/internal/model/BidPayload;Lcom/vungle/ads/y;)V
    .locals 1

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/g;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    iput-object p3, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/y;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/vungle/ads/internal/load/AdRequest;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/load/AdRequest;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/g;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/g;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/g;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/g;->getReferenceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/y;

    iget-object v3, p1, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/y;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    iget-object p1, p1, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    if-eqz v2, :cond_4

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public final getAdMarkup()Lcom/vungle/ads/internal/model/BidPayload;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    return-object v0
.end method

.method public final getPlacement()Lcom/vungle/ads/internal/model/g;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/g;

    return-object v0
.end method

.method public final getRequestAdSize()Lcom/vungle/ads/y;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/y;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/g;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/g;->getReferenceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/BidPayload;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRequest{placementId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/g;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/g;->getReferenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adMarkup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestAdSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
