.class public final Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;
.super Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\nR\u0016\u0010\u001c\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;",
        "Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "l",
        "()V",
        "Landroid/view/View;",
        "nonBannerRoot",
        "setMute",
        "(Landroid/view/View;)V",
        "setClick",
        "Landroid/widget/FrameLayout;",
        "getMediaContainer",
        "()Landroid/widget/FrameLayout;",
        "",
        "isShowVolumeIcon",
        "()Z",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "showAd",
        "p",
        "Z",
        "isMute",
        "q",
        "Landroid/widget/FrameLayout;",
        "mediaContainer",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private p:Z

.field private q:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->n(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->m(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final l()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v2, 0x44f

    const-string v3, "adPlans is null"

    invoke-direct {v1, v2, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getMaxEcpmObject()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldi/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/ad/R$layout;->bidding_buy_out_banner_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/ad/R$id;->flAdContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->q:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->setClick(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->setMute(Landroid/view/View;)V

    sget v1, Lcom/transsion/ad/R$id;->adIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/view/AdTagView;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/transsion/ad/strategy/i;->a:Lcom/transsion/ad/strategy/i;

    invoke-virtual {v2, v1}, Lcom/transsion/ad/strategy/i;->a(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->showMedia()V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final m(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->onAdClick()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final n(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->isMute()Z

    move-result p2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    :cond_0
    sget p0, Lcom/transsion/ad/R$mipmap;->ad_volumeon:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    :cond_2
    sget p0, Lcom/transsion/ad/R$mipmap;->ad_volumeoff:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private final setClick(Landroid/view/View;)V
    .locals 7

    if-eqz p1, :cond_0

    new-instance v6, Lti/g;

    new-instance v3, Lcom/transsion/ad/bidding/banner/b;

    invoke-direct {v3, p0}, Lcom/transsion/ad/bidding/banner/b;-><init>(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lti/g;-><init>(JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private final setMute(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    sget v0, Lcom/transsion/ad/R$id;->mute:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/transsion/ad/bidding/banner/c;

    invoke-direct {v0, p0, p1}, Lcom/transsion/ad/bidding/banner/c;-><init>(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_b"

    return-object v0
.end method

.method public getMediaContainer()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->q:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public isShowVolumeIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final showAd()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->l()V

    return-void
.end method
