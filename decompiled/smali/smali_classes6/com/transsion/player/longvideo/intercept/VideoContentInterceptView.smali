.class public final Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J=\u0010\u0017\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;",
        "interceptionManager",
        "Lgo/a;",
        "bean",
        "",
        "onShowPremium",
        "(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;)V",
        "Lcom/transsion/baselib/db/video/PlaybackRecordTable;",
        "playbackRecord",
        "genre",
        "Lcom/transsion/player/longvideo/intercept/d;",
        "callback",
        "onShowResolutionRatio",
        "(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V",
        "Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;",
        "a",
        "Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;",
        "premiumView",
        "Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;",
        "b",
        "Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;",
        "resolutionView",
        "LongVideo_psRelease"
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
.field private a:Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;

.field private b:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/transsion/player/longvideo/intercept/m0;

    invoke-direct {p1}, Lcom/transsion/player/longvideo/intercept/m0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->b(Landroid/view/View;)V

    return-void
.end method

.method private static final b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final onShowPremium(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;)V
    .locals 12

    const-string v0, "interceptionManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->a:Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;

    const-string v2, "getContext(...)"

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->a:Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;

    :cond_0
    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->a:Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->setInterceptionManager(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->a:Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->setLongVdPlayerBean(Lgo/a;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->a:Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-class p1, Lcom/transsion/memberapi/IPremiumApi;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x3c

    const/4 v11, 0x0

    const-string v5, "MainDialogInterstitialScene"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lcom/transsion/memberapi/IPremiumApi$a;->c(Lcom/transsion/memberapi/IPremiumApi;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onShowResolutionRatio(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 7

    const-string v0, "interceptionManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onShowResolutionRatio() --> \u5c55\u793a\u5206\u8fa8\u7387\u62e6\u622a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->b:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->b:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->b:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->setGenre(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->b:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->setVideoDetailPlayBean(Lcom/transsion/baselib/db/video/PlaybackRecordTable;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->b:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->setVideoDetailPlayBean(Lgo/a;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->b:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p3}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->setPlaybackManager(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->b:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView$a;

    invoke-direct {p2, p0, p5}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView$a;-><init>(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;Lcom/transsion/player/longvideo/intercept/d;)V

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;->setPlaybackCallback(Lcom/transsion/player/longvideo/intercept/d;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->b:Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
