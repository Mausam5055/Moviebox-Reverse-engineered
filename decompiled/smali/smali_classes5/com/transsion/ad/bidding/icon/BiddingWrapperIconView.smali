.class public final Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J)\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "destroy",
        "()V",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "data",
        "Lcom/transsion/ad/bidding/base/r;",
        "viewBinder",
        "onClick",
        "(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "adManager",
        "absAdLayoutProvider",
        "showData",
        "(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V",
        "Lcom/transsion/ad/view/native_ad/BiddingIconView;",
        "a",
        "Lcom/transsion/ad/view/native_ad/BiddingIconView;",
        "biddingIconView",
        "Lcom/hisavana/mediation/ad/TAdNativeView;",
        "b",
        "Lcom/hisavana/mediation/ad/TAdNativeView;",
        "tAdNativeView",
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
.field private a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

.field private b:Lcom/hisavana/mediation/ad/TAdNativeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    :cond_1
    return-void
.end method

.method public final onClick(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/view/native_ad/BiddingIconView;->iconPerformClick()V

    goto :goto_3

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/ad/bidding/base/r;->s()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hisavana/mediation/ad/TIconView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_5
    :goto_3
    return-void
.end method

.method public final showData(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->E(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;)V

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    :cond_1
    sget-object v0, Lti/q;->a:Lti/q;

    iget-object v5, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    invoke-virtual {v0, v5}, Lti/q;->a(Landroid/view/View;)V

    new-instance v0, Lcom/transsion/ad/view/native_ad/BiddingIconView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v3, v6}, Lcom/transsion/ad/view/native_ad/BiddingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->isDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->isReportAdDisplay(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v6

    :goto_0
    invoke-virtual {v0, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setSceneId(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->K()Ldi/a;

    move-result-object v6

    :cond_5
    invoke-virtual {v0, v6}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setListener(Ldi/a;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setRecommendInfo(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p3}, Lcom/transsion/ad/view/native_ad/BiddingIconView;->bindIconView(Lcom/transsion/ad/bidding/base/r;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    move-result v0

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    :cond_c
    sget-object v0, Lti/q;->a:Lti/q;

    iget-object v3, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    invoke-virtual {v0, v3}, Lti/q;->a(Landroid/view/View;)V

    new-instance v0, Lcom/hisavana/mediation/ad/TAdNativeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/hisavana/mediation/ad/TAdNativeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p2

    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Lcom/transsion/ad/bidding/base/r;->g()Lcom/transsion/ad/bidding/base/w;

    move-result-object v3

    invoke-virtual {p3, v3, p2}, Lcom/transsion/ad/bidding/base/r;->q(Lcom/transsion/ad/bidding/base/w;Lcom/hisavana/common/bean/TAdNativeInfo;)Lcom/hisavana/mediation/ad/ViewBinder;

    move-result-object p3

    if-eqz p3, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->M()Lcom/hisavana/mediation/ad/TNativeAd;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1, v0, p2, p3}, Lcom/hisavana/mediation/ad/TNativeAd;->bindNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    :cond_d
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    :goto_1
    return-void
.end method
