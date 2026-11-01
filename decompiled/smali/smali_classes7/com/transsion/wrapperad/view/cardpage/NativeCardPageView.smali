.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;,
        Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008\u0007\u0018\u0000 b2\u00020\u0001:\u00026cB\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u000f\u0010\u001a\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u000cJ\u000f\u0010\u001b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u000cJ\u0017\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010!\u001a\u00020\u00002\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020\u0000\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\u0000\u00a2\u0006\u0004\u0008%\u0010$J\u0015\u0010(\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010)J\u0015\u0010,\u001a\u00020\u00002\u0006\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u00100\u001a\u00020\u00002\u0006\u0010/\u001a\u00020.\u00a2\u0006\u0004\u00080\u00101J\r\u00103\u001a\u000202\u00a2\u0006\u0004\u00083\u00104J\r\u00105\u001a\u00020\u0000\u00a2\u0006\u0004\u00085\u0010$R\"\u0010;\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010\u0012R\"\u0010?\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u00107\u001a\u0004\u0008=\u00109\"\u0004\u0008>\u0010\u0012R\u0016\u0010A\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010@R\u0016\u0010C\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010BR\u0016\u0010F\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010ER\u0018\u0010I\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010HR\u0016\u0010L\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010KR\u001c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010MR\u0018\u0010P\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010OR\u0016\u0010Q\u001a\u00020.8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010OR\u0016\u0010T\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010W\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010Y\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u00107R\u0016\u0010[\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u00107R\u0016\u0010]\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010SR\u0016\u0010_\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010VR\u0016\u0010a\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010V\u00a8\u0006d"
    }
    d2 = {
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
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
        "d",
        "()V",
        "Landroidx/viewpager2/widget/CompositePageTransformer;",
        "j",
        "()Landroidx/viewpager2/widget/CompositePageTransformer;",
        "position",
        "g",
        "(I)V",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "f",
        "(IFI)V",
        "state",
        "e",
        "i",
        "h",
        "c",
        "(I)I",
        "",
        "Lcom/transsion/wrapperad/view/cardpage/f;",
        "data",
        "setPageData",
        "(Ljava/util/List;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "startAutoScroll",
        "()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "pauseAutoScroll",
        "",
        "interval",
        "setScrollInterval",
        "(J)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "",
        "disable",
        "setDisableRightSwipe",
        "(Z)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "listener",
        "setOnPageChangeListener",
        "(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "getViewPager",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "destroy",
        "a",
        "I",
        "getContentWidth",
        "()I",
        "setContentWidth",
        "contentWidth",
        "b",
        "getStackOffset",
        "setStackOffset",
        "stackOffset",
        "J",
        "scrollInterval",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPager2",
        "Lcom/transsion/wrapperad/view/cardpage/e;",
        "Lcom/transsion/wrapperad/view/cardpage/e;",
        "pageAdapter",
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;",
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;",
        "autoScrollRunnable",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isAutoScrolling",
        "Ljava/util/List;",
        "pageDataList",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageChangeListener",
        "pageChangeCallback",
        "k",
        "Z",
        "isScrolling",
        "l",
        "F",
        "stackPageScale",
        "m",
        "lastOffsetX",
        "n",
        "lastPosition",
        "o",
        "disableRightSwipe",
        "p",
        "disableRightSwipeThreshold",
        "q",
        "switchPagePercent",
        "Companion",
        "AutoScrollRunnable",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;

.field public static final STACK_OFFSET:F = 12.0f


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:Landroidx/viewpager2/widget/ViewPager2;

.field private e:Lcom/transsion/wrapperad/view/cardpage/e;

.field private f:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/List;

.field private i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private j:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private k:Z

.field private l:F

.field private m:I

.field private n:I

.field private o:Z

.field private p:F

.field private q:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->Companion:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$a;

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    const-wide/16 p1, 0x7530

    iput-wide p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->l:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->o:Z

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->p:F

    const p1, 0x3d4ccccd    # 0.05f

    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->q:F

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d()V

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Landroid/view/View;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->k(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Landroid/view/View;F)V

    return-void
.end method

.method public static final synthetic access$getDisableRightSwipe$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->o:Z

    return p0
.end method

.method public static final synthetic access$getDisableRightSwipeThreshold$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)F
    .locals 0

    iget p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->p:F

    return p0
.end method

.method public static final synthetic access$getLastPosition$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    return p0
.end method

.method public static final synthetic access$getScrollInterval$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c:J

    return-wide v0
.end method

.method public static final synthetic access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static final synthetic access$isAutoScrolling$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$pageScrollStateChanged(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->e(I)V

    return-void
.end method

.method public static final synthetic access$pageScrolled(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;IFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->f(IFI)V

    return-void
.end method

.method public static final synthetic access$pageSelected(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g(I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->setupTouchEventListener$lambda$5(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    return-void
.end method

.method private final c(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method private final d()V
    .locals 5

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "viewPager2"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$b;

    invoke-direct {v0, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$b;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->j:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->j:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-nez v1, :cond_7

    const-string v1, "pageChangeCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method private final e(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    iput-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->k:Z

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->m:I

    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->k:Z

    const/4 v1, 0x0

    const-string v2, "viewPager2"

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h()V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->o:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    if-ge v0, v3, :cond_7

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    invoke-virtual {v0, v3, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h()V

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->n:I

    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->k:Z

    :goto_2
    return-void
.end method

.method private final f(IFI)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "viewPager2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    iget v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->q:F

    cmpl-float p2, p2, v2

    if-lez p2, :cond_5

    iget p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->m:I

    if-nez p2, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p2

    instance-of v0, p2, Lcom/transsion/wrapperad/view/cardpage/e$a;

    if-eqz v0, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/transsion/wrapperad/view/cardpage/e$a;

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c(I)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperad/view/cardpage/f;

    invoke-virtual {v1, p1}, Lcom/transsion/wrapperad/view/cardpage/e$a;->f(Lcom/transsion/wrapperad/view/cardpage/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_4
    iput p3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->m:I

    :cond_5
    return-void
.end method

.method private final g(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "viewPager2"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_2

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    instance-of v1, p1, Lcom/transsion/wrapperad/view/cardpage/e$a;

    if-eqz v1, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/transsion/wrapperad/view/cardpage/e$a;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/wrapperad/view/cardpage/e$a;->g()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperad/view/cardpage/f;

    invoke-virtual {v2, p1}, Lcom/transsion/wrapperad/view/cardpage/e$a;->f(Lcom/transsion/wrapperad/view/cardpage/f;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private final h()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "viewPager2"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_2

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/wrapperad/view/cardpage/e$a;

    if-eqz v1, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/transsion/wrapperad/view/cardpage/e$a;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/wrapperad/view/cardpage/e$a;->g()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    return-void
.end method

.method private final i()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "viewPager2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/transsion/wrapperad/view/cardpage/h;

    invoke-direct {v1, p0}, Lcom/transsion/wrapperad/view/cardpage/h;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final j()Landroidx/viewpager2/widget/CompositePageTransformer;
    .locals 3

    new-instance v0, Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    new-instance v1, Landroidx/viewpager2/widget/MarginPageTransformer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    new-instance v1, Lcom/transsion/wrapperad/view/cardpage/g;

    invoke-direct {v1, p0}, Lcom/transsion/wrapperad/view/cardpage/g;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-object v0
.end method

.method private static final k(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Landroid/view/View;F)V
    .locals 3

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->l:F

    mul-float/2addr v1, p2

    sub-float v1, v0, v1

    iget v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    int-to-float v2, v2

    sub-float/2addr v0, v1

    mul-float/2addr v2, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v2

    iget p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    neg-float p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    :goto_0
    return-void
.end method

.method private static final setupTouchEventListener$lambda$5(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 3

    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;

    invoke-direct {v0, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "viewPager2"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p0, v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v2, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final destroy()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "viewPager2"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->j:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-nez v3, :cond_1

    const-string v3, "pageChangeCallback"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/wrapperad/view/cardpage/f;

    invoke-virtual {v1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v1, v2}, Lcom/transsion/wrapperad/view/cardpage/f;->g(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-object p0
.end method

.method public final getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    return v0
.end method

.method public final getStackOffset()I
    .locals 1

    iget v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    return v0
.end method

.method public final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v0, "viewPager2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->f:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_1

    const-string v1, "viewPager2"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return-object p0
.end method

.method public final setContentWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    return-void
.end method

.method public final setDisableRightSwipe(Z)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->o:Z

    return-object p0
.end method

.method public final setOnPageChangeListener(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object p0
.end method

.method public final setPageData(Ljava/util/List;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/wrapperad/view/cardpage/f;",
            ">;)",
            "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "viewPager2"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    add-int/lit8 v3, v3, 0x5

    iget-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->j()Landroidx/viewpager2/widget/CompositePageTransformer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/e;

    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->h:Ljava/util/List;

    iget v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->a:I

    invoke-direct {v0, v3, v4}, Lcom/transsion/wrapperad/view/cardpage/e;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->e:Lcom/transsion/wrapperad/view/cardpage/e;

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->e:Lcom/transsion/wrapperad/view/cardpage/e;

    if-nez v3, :cond_3

    const-string v3, "pageAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, v3

    :goto_1
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result p1

    goto :goto_2

    :cond_8
    const/4 p1, -0x1

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->startAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    return-object p0
.end method

.method public final setScrollInterval(J)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c:J

    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-virtual {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->startAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    :cond_0
    return-object p0
.end method

.method public final setStackOffset(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->b:I

    return-void
.end method

.method public final startAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 4

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    const-string v2, "viewPager2"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

    invoke-direct {v0, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->f:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->f:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-object p0
.end method
