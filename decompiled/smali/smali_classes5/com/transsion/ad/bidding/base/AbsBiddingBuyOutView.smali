.class public abstract Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/transsion/ad/strategy/r$a;
.implements Loi/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001d\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0004\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0011\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0011\u0010$\u001a\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u001dH&\u00a2\u0006\u0004\u0008&\u0010\'J\u0011\u0010(\u001a\u0004\u0018\u00010\u0001H\u0016\u00a2\u0006\u0004\u0008(\u0010%J\u0015\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010/\u001a\u00020\n2\u0008\u0010.\u001a\u0004\u0018\u00010-\u00a2\u0006\u0004\u0008/\u00100J\u0011\u00101\u001a\u0004\u0018\u00010-H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00105\u001a\u00020\n2\u0008\u00104\u001a\u0004\u0018\u000103\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u0004\u0018\u000103\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010;\u001a\u00020\n2\u0008\u0010:\u001a\u0004\u0018\u000109\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010>\u001a\u0004\u0018\u00010=\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010@\u001a\u0004\u0018\u000109\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008B\u0010CJ\u0017\u0010F\u001a\u00020\n2\u0008\u0010E\u001a\u0004\u0018\u00010D\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u0004\u0018\u00010D\u00a2\u0006\u0004\u0008H\u0010IJ\r\u0010J\u001a\u00020\n\u00a2\u0006\u0004\u0008J\u0010\u000cJ\r\u0010K\u001a\u00020\n\u00a2\u0006\u0004\u0008K\u0010\u000cJ\u0015\u0010L\u001a\u00020\n2\u0006\u0010L\u001a\u00020\u001d\u00a2\u0006\u0004\u0008L\u0010 J\u0015\u0010N\u001a\u00020\n2\u0006\u0010M\u001a\u00020\u001d\u00a2\u0006\u0004\u0008N\u0010 J\r\u0010O\u001a\u00020\n\u00a2\u0006\u0004\u0008O\u0010\u000cJ\u0019\u0010Q\u001a\u00020\n2\u0008\u0010P\u001a\u0004\u0018\u00010-H\u0004\u00a2\u0006\u0004\u0008Q\u00100J\r\u0010R\u001a\u00020\n\u00a2\u0006\u0004\u0008R\u0010\u000cJ\r\u0010S\u001a\u00020\n\u00a2\u0006\u0004\u0008S\u0010\u000cR\u0018\u0010V\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0018\u0010\\\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010]R\u0018\u0010_\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010^R\u0018\u0010a\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010`R\u0018\u0010c\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010bR\u0016\u0010f\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010gR\u0014\u0010k\u001a\u00020h8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0016\u0010M\u001a\u00020l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0016\u0010r\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010eR\u0016\u0010L\u001a\u00020l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010nR\u0016\u0010v\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010u\u00a8\u0006w"
    }
    d2 = {
        "Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/transsion/ad/strategy/r$a;",
        "Loi/b;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "d",
        "()V",
        "",
        "displayTimestamp",
        "e",
        "(J)V",
        "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "adMaterialList",
        "i",
        "(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V",
        "g",
        "Landroid/widget/ImageView;",
        "imageView",
        "setVolumeImage",
        "(Landroid/widget/ImageView;)V",
        "Lcom/transsion/player/orplayer/g;",
        "getOrPlayer",
        "()Lcom/transsion/player/orplayer/g;",
        "",
        "isVisible",
        "onVisibilityChanged",
        "(Z)V",
        "Landroid/view/View;",
        "getVisibilityView",
        "()Landroid/view/View;",
        "getMediaContainer",
        "()Landroid/widget/FrameLayout;",
        "isShowVolumeIcon",
        "()Z",
        "getVolumeContainer",
        "Landroid/widget/ImageView$ScaleType;",
        "scaleType",
        "setScaleType",
        "(Landroid/widget/ImageView$ScaleType;)V",
        "",
        "sceneId",
        "setSceneId",
        "(Ljava/lang/String;)V",
        "getSceneId",
        "()Ljava/lang/String;",
        "Ldi/a;",
        "listener",
        "setListener",
        "(Ldi/a;)V",
        "getListener",
        "()Ldi/a;",
        "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "maxEcpmObject",
        "setEcpmObject",
        "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "getAdPlans",
        "()Lcom/transsion/ad/monopoly/model/AdPlans;",
        "getMaxEcpmObject",
        "()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "getAdMaterialList",
        "()Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "Lcom/transsion/ad/ps/model/RecommendInfo;",
        "recommendInfo",
        "setRecommendInfo",
        "(Lcom/transsion/ad/ps/model/RecommendInfo;)V",
        "getRecommendInfo",
        "()Lcom/transsion/ad/ps/model/RecommendInfo;",
        "destroy",
        "reset",
        "isReportAdDisplay",
        "isAdMaterialShow",
        "setAdMaterialShow",
        "onAdClick",
        "errorMsg",
        "f",
        "addSession",
        "showMedia",
        "a",
        "Ljava/lang/String;",
        "mSceneId",
        "b",
        "Ldi/a;",
        "mListener",
        "c",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "mAdPlans",
        "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "mAdMaterialList",
        "Lcom/transsion/ad/ps/model/RecommendInfo;",
        "mRecommendInfo",
        "Lcom/transsion/player/orplayer/g;",
        "mOrPlayer",
        "h",
        "Z",
        "mIsMute",
        "Landroid/widget/ImageView;",
        "Landroid/view/TextureView;",
        "j",
        "Landroid/view/TextureView;",
        "textureView",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "k",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "l",
        "Landroid/widget/ImageView$ScaleType;",
        "m",
        "isInScreen",
        "n",
        "o",
        "J",
        "showTimestamp",
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
.field private a:Ljava/lang/String;

.field private b:Ldi/a;

.field private c:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private e:Lcom/transsion/ad/monopoly/model/AdMaterialList;

.field private f:Lcom/transsion/ad/ps/model/RecommendInfo;

.field private g:Lcom/transsion/player/orplayer/g;

.field private h:Z

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/view/TextureView;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Landroid/widget/ImageView$ScaleType;

.field private m:Z

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->j:Landroid/view/TextureView;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->l:Landroid/widget/ImageView$ScaleType;

    new-instance p1, Lti/g;

    new-instance v3, Lcom/transsion/ad/bidding/base/s;

    invoke-direct {v3, p0}, Lcom/transsion/ad/bidding/base/s;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lti/g;-><init>(JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->c(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isAdMaterialShow$p(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->onAdClick()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v0, v1}, Ldi/a;->c(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ldi/a;->t(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    :cond_1
    return-void
.end method

.method private final e(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v0, v1, p1, p2}, Ldi/a;->d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1, p2}, Ldi/a;->s(Lcom/transsion/ad/ps/model/RecommendInfo;J)V

    :cond_1
    return-void
.end method

.method private final g(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V
    .locals 29

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getMediaContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    sget-object v2, Lti/q;->a:Lti/q;

    iget-object v3, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->j:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Lti/q;->a(Landroid/view/View;)V

    iget-object v3, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->j:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->isShowVolumeIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    const-string v4, "adVolumeImage"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    new-instance v4, Lcom/transsion/ad/bidding/base/t;

    invoke-direct {v4, v7}, Lcom/transsion/ad/bidding/base/t;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    invoke-direct {v7, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setVolumeImage(Landroid/widget/ImageView;)V

    iget-object v3, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lti/q;->a(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getVolumeContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    new-instance v2, Lcom/transsion/player/orplayer/g$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getContext(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/transsion/player/orplayer/g$a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lbo/d;

    move-object v8, v0

    const v27, 0x16fff

    const/16 v28, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v8 .. v28}, Lbo/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v0}, Lcom/transsion/player/orplayer/g$a;->b(Lbo/d;)Lcom/transsion/player/orplayer/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/g$a;->a()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    iget-object v2, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->j:Landroid/view/TextureView;

    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    sget-object v2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    new-instance v1, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView$a;

    invoke-direct {v1, v7, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView$a;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Lcom/transsion/player/orplayer/g;)V

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    iput-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_c

    new-instance v2, Lao/e;

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v9, v3

    goto :goto_2

    :cond_4
    :goto_1
    move-object v9, v1

    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v10, v3

    goto :goto_4

    :cond_6
    :goto_3
    move-object v10, v1

    :goto_4
    const/16 v14, 0x1c

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    goto :goto_9

    :cond_7
    iget-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_c

    new-instance v2, Lao/e;

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v9, v3

    goto :goto_6

    :cond_9
    :goto_5
    move-object v9, v1

    :goto_6
    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    move-object v10, v3

    goto :goto_8

    :cond_b
    :goto_7
    move-object v10, v1

    :goto_8
    const/16 v14, 0x1c

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_c
    :goto_9
    iget-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->prepare()V

    goto :goto_a

    :cond_d
    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x6

    const-string v2, "playVideo() --> getMediaContainer() == null"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_e
    :goto_a
    return-void
.end method

.method private static final h(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-string v2, "playVideo() --> \u70b9\u51fb\u4e86\u97f3\u9891\u6309\u94ae"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setVolumeImage(Landroid/widget/ImageView;)V

    return-void
.end method

.method private final i(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getMediaContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->l:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v3

    :goto_2
    if-eqz v1, :cond_7

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v3, v1

    :cond_6
    if-eqz v3, :cond_7

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_7
    :try_start_0
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView$b;

    invoke-direct {v1, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView$b;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u56fe\u7247\u5931\u8d25 --> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->f(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final setVolumeImage(Landroid/widget/ImageView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/ad/R$mipmap;->ad_volumeoff:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/ad/R$mipmap;->ad_volumeon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addSession()V
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {v0, p0}, Lcom/transsion/ad/strategy/r;->g(Lcom/transsion/ad/strategy/r$a;)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->reset()V

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {v0, p0}, Lcom/transsion/ad/strategy/r;->n(Lcom/transsion/ad/strategy/r$a;)V

    return-void
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {p1, v0}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ldi/a;->u(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    :cond_2
    return-void
.end method

.method public final getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->e:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    return-object v0
.end method

.method public final getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->c:Lcom/transsion/ad/monopoly/model/AdPlans;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Loi/b$a;->a(Loi/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getListener()Ldi/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->b:Ldi/a;

    return-object v0
.end method

.method public abstract synthetic getLogTag()Ljava/lang/String;
.end method

.method public final getMaxEcpmObject()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-object v0
.end method

.method public abstract getMediaContainer()Landroid/widget/FrameLayout;
.end method

.method protected final getOrPlayer()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method public final getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->f:Lcom/transsion/ad/ps/model/RecommendInfo;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibilityThreshold()D
    .locals 2

    invoke-static {p0}, Lcom/transsion/ad/strategy/r$a$a;->a(Lcom/transsion/ad/strategy/r$a;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVisibilityView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getMediaContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeContainer()Landroid/widget/FrameLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isReportAdDisplay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public abstract isShowVolumeIcon()Z
.end method

.method public final onAdClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v0, v1}, Ldi/a;->a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ldi/a;->r(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    :cond_1
    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Loi/b$a;->b(Loi/b;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->m:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Ldi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v0, v1}, Ldi/a;->f(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->m:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    iget-wide v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    :cond_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->e(J)V

    :cond_4
    iput-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->e(J)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setListener(Ldi/a;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_1
    return-void
.end method

.method public final setAdMaterialShow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setEcpmObject(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->c:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->c:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    :cond_1
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->e:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    :cond_2
    return-void
.end method

.method public final setListener(Ldi/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->b:Ldi/a;

    return-void
.end method

.method public final setRecommendInfo(Lcom/transsion/ad/ps/model/RecommendInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->f:Lcom/transsion/ad/ps/model/RecommendInfo;

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    const-string v0, "scaleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->l:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->a:Ljava/lang/String;

    return-void
.end method

.method public final showMedia()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "TextAdMaterial"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->addSession()V

    return-void
.end method
