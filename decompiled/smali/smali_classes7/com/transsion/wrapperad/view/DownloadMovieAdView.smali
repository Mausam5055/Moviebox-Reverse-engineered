.class public final Lcom/transsion/wrapperad/view/DownloadMovieAdView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000e\u001a\u00020\r2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\r2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lcom/transsion/wrapperad/view/DownloadMovieAdView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "data",
        "",
        "c",
        "(Ljava/util/List;)V",
        "",
        "genre",
        "loadAd",
        "(Ljava/lang/String;)V",
        "download",
        "()V",
        "onDestroy",
        "a",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "wrapperIconBean",
        "Lfy/b;",
        "b",
        "Lfy/b;",
        "viewBinderProvider",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;",
        "iconView",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "d",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "adManager",
        "",
        "e",
        "Z",
        "isChecked",
        "Ldi/a;",
        "f",
        "Ldi/a;",
        "listener",
        "wrapperad_psRelease"
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
.field private a:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

.field private final b:Lfy/b;

.field private c:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

.field private d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

.field private e:Z

.field private final f:Ldi/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lfy/b;

    invoke-direct {p2, p1}, Lfy/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->b:Lfy/b;

    new-instance p2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-direct {p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;-><init>()V

    iput-object p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->e:Z

    new-instance p2, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;

    invoke-direct {p2, p0}, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;-><init>(Lcom/transsion/wrapperad/view/DownloadMovieAdView;)V

    iput-object p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->f:Ldi/a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/wrapperad/R$layout;->view_download_movie_ad_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/wrapperad/R$id;->iconView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    iput-object p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->c:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    sget p2, Lcom/transsion/wrapperad/R$id;->ivCheck:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/wrapperad/view/i;

    invoke-direct {p2, p0, p1}, Lcom/transsion/wrapperad/view/i;-><init>(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->b(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAdManager$p(Lcom/transsion/wrapperad/view/DownloadMovieAdView;)Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/transsion/wrapperad/view/DownloadMovieAdView;)Ldi/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->f:Ldi/a;

    return-object p0
.end method

.method public static final synthetic access$showData(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->c(Ljava/util/List;)V

    return-void
.end method

.method private static final b(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->e:Z

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->e:Z

    if-nez p2, :cond_0

    sget p0, Lcom/transsion/wrapperad/R$mipmap;->ad_check_oval_2:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/wrapperad/R$mipmap;->ad_check_oval_1:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final c(Ljava/util/List;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    iput-object p1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->a:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->c:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    iget-object v2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->b:Lfy/b;

    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->showData(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic loadAd$default(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->loadAd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final download()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->c:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->a:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    iget-object v2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->b:Lfy/b;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->onClick(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V

    :cond_0
    return-void
.end method

.method public final loadAd(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v6, Lcom/transsion/wrapperad/view/DownloadMovieAdView$loadAd$1;

    invoke-direct {v6, p0, p1, v2}, Lcom/transsion/wrapperad/view/DownloadMovieAdView$loadAd$1;-><init>(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->I()V

    return-void
.end method
