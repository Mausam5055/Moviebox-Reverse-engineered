.class public final Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;
.super Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;",
        "Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/widget/FrameLayout;",
        "getMediaContainer",
        "()Landroid/widget/FrameLayout;",
        "getVolumeContainer",
        "",
        "isShowVolumeIcon",
        "()Z",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "Lcom/transsion/ad/bidding/base/r;",
        "adLayoutProvider",
        "",
        "bindNativeView",
        "(Lcom/transsion/ad/bidding/base/r;)V",
        "Lcom/transsion/ad/bidding/base/w;",
        "p",
        "Lcom/transsion/ad/bidding/base/w;",
        "adProviderBean",
        "q",
        "Z",
        "mIsShowVolumeIcon",
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
.field private p:Lcom/transsion/ad/bidding/base/w;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->q:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->k(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final k(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->onAdClick()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final bindNativeView(Lcom/transsion/ad/bidding/base/r;)V
    .locals 10

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_16

    if-nez p1, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v4, 0x5

    const-string v5, "bindNativeView() --> \u5f53\u524dActivity\u9500\u6bc1\uff0c\u5e7f\u544a\u5c31\u4e0d\u9700\u8981\u5c55\u793a\u4e86"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/r;->g()Lcom/transsion/ad/bidding/base/w;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/r;->B()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->q:Z

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->l()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->g()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDesc()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->f()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getButtonText()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v3, "GO"

    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setButtonText(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getButtonText()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, v2

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lti/g;

    new-instance v6, Lcom/transsion/ad/view/native_ad/a;

    invoke-direct {v6, p0}, Lcom/transsion/ad/view/native_ad/a;-><init>(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lti/g;-><init>(JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->h()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    move-object v3, v2

    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatar()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_c
    move-object v4, v2

    :goto_6
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_8

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_e
    move-object v4, v2

    :goto_7
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_10
    move-object p1, v2

    :goto_9
    const-string v1, "TextAdMaterial"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->e()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_11
    move-object v1, v2

    :goto_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_13
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lwi/a;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Lwi/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_14
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->c()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/view/AdTagView;

    if-eqz p1, :cond_15

    sget-object v1, Lcom/transsion/ad/strategy/i;->a:Lcom/transsion/ad/strategy/i;

    invoke-virtual {v1, p1}, Lcom/transsion/ad/strategy/i;->a(Landroid/view/View;)V

    :cond_15
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->showMedia()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    :goto_c
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_n"

    return-object v0
.end method

.method public getMediaContainer()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->j()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->h()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_2
    return-object v1
.end method

.method public getVolumeContainer()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/w;->m()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->p:Lcom/transsion/ad/bidding/base/w;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_0
    return-object v1
.end method

.method public isShowVolumeIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;->q:Z

    return v0
.end method
