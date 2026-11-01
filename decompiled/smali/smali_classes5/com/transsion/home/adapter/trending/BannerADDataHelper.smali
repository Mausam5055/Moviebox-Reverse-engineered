.class public final Lcom/transsion/home/adapter/trending/BannerADDataHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

.field private static b:I

.field private static c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private static d:Lkotlin/jvm/functions/Function2;

.field private static e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private static f:Z

.field private static g:Z

.field private static final h:Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;

.field public static final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    invoke-direct {v0}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;-><init>()V

    sput-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    const/4 v0, 0x1

    sput v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->b:I

    new-instance v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;

    invoke-direct {v0}, Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;-><init>()V

    sput-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->h:Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->i:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/functions/Function2;
    .locals 1

    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->d:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->b:I

    return v0
.end method

.method public static final synthetic c()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-object v0
.end method

.method public static final synthetic d()Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;
    .locals 1

    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->h:Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;

    return-object v0
.end method

.method public static final synthetic e(I)V
    .locals 0

    sput p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->b:I

    return-void
.end method

.method public static final synthetic f(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->f:Z

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    sput-object p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method public static final synthetic h(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->g:Z

    return-void
.end method


# virtual methods
.method public final i(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    sput-object p1, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz p1, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-virtual {p1, v0, p2, p3}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1

    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->V()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function2;)V
    .locals 6

    sget-boolean v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->f:Z

    sput-object p1, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->d:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->j()V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/home/adapter/trending/BannerADDataHelper$fetchData$1;

    const/4 p1, 0x0

    invoke-direct {v3, p1}, Lcom/transsion/home/adapter/trending/BannerADDataHelper$fetchData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final l()V
    .locals 2

    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/wrapperad/R$id;->ad_media:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public final m()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->g:Z

    return v0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    return-void
.end method
