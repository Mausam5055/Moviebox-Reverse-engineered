.class public final Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;",
        "interceptionManager",
        "",
        "setInterceptionManager",
        "(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V",
        "Lgo/a;",
        "bean",
        "setLongVdPlayerBean",
        "(Lgo/a;)V",
        "a",
        "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;",
        "b",
        "Lgo/a;",
        "",
        "c",
        "Ljava/lang/String;",
        "traceId",
        "Lho/p;",
        "d",
        "Lho/p;",
        "getBinding",
        "()Lho/p;",
        "binding",
        "",
        "e",
        "J",
        "lastTrigger",
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
.field private a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

.field private b:Lgo/a;

.field private c:Ljava/lang/String;

.field private final d:Lho/p;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lho/p;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lho/p;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->d:Lho/p;

    iget-object p2, p1, Lho/p;->c:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/transsion/player/longvideo/intercept/n0;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/intercept/n0;-><init>(Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lho/p;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lcom/transsion/player/longvideo/intercept/o0;

    invoke-direct {p2, p0}, Lcom/transsion/player/longvideo/intercept/o0;-><init>(Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->c(Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->d(Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;Landroid/view/View;)V
    .locals 13

    sget-object v0, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->b:Lgo/a;

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgo/a;->i()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    move-object p1, v1

    :cond_1
    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->b:Lgo/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v2

    goto :goto_1

    :cond_3
    :goto_0
    move-object v4, v1

    :goto_1
    const/4 v5, 0x0

    const-string v2, "player/vip_preview_expire"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/baselib/helper/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    if-eqz v6, :cond_4

    iget-object v9, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->c:Ljava/lang/String;

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-string v8, "player/vip_preview_expire"

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->X(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private static final d(Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->C()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getBinding()Lho/p;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->d:Lho/p;

    return-object v0
.end method

.method public final setInterceptionManager(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 1

    const-string v0, "interceptionManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    return-void
.end method

.method public final setLongVdPlayerBean(Lgo/a;)V
    .locals 7

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->b:Lgo/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const-string v3, "VideoPremiumInterceptView --> setLongVdPlayerBean() --> \u8d44\u6e90\u5185\u5bb9\u62e6\u622a --> \u91cd\u590d\u89e6\u53d1"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->e:J

    sget-object v0, Lti/n;->a:Lti/n;

    invoke-virtual {v0}, Lti/n;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->c:Ljava/lang/String;

    sget-object v1, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lgo/a;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v0

    :cond_2
    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;->c:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lgo/a;->o()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, p1

    goto :goto_1

    :cond_4
    :goto_0
    move-object v5, v0

    :goto_1
    const/4 v6, 0x0

    const-string v3, "player/vip_preview_expire"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/baselib/helper/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
