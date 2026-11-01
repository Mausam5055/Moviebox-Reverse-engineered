.class public final Lcom/transsion/wrapperad/view/cardpage/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private final b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;ZZ)V
    .locals 1

    const-string v0, "nativeView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iput-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iput-object p3, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    iput-boolean p4, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    iput-boolean p5, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/wrapperad/view/cardpage/f;-><init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;ZZ)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    return v0
.end method

.method public final c()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    return-object v0
.end method

.method public final d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/wrapperad/view/cardpage/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/wrapperad/view/cardpage/f;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v3, p1, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v3, p1, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    iget-object v3, p1, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    iget-boolean v3, p1, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    iget-boolean p1, p1, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    return-void
.end method

.method public final g(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/f;->a:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/f;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/f;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    iget-boolean v3, p0, Lcom/transsion/wrapperad/view/cardpage/f;->d:Z

    iget-boolean v4, p0, Lcom/transsion/wrapperad/view/cardpage/f;->e:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NativeCardPageData(nativeView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adBean="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", helper="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bind="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showGuide="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
