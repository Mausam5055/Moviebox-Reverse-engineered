.class public final Lcom/tn/lib/pager/PagerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001D\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u000c\u0010\u0014\u001a\u0008\u0018\u00010\u0013R\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J/\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0018\u00010\u0013R\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ/\u0010 \u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0018\u00010\u0013R\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008 \u0010\u001eJ\u0017\u0010#\u001a\u00020\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008#\u0010$J\'\u0010%\u001a\u00020\u000c2\u000c\u0010\u0014\u001a\u0008\u0018\u00010\u0013R\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008(\u0010)R\u001b\u0010/\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00105\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\"\u0010(\u001a\u00020\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010#\u001a\u0004\u00087\u0010)\"\u0004\u00088\u00109R\"\u0010=\u001a\u00020\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010#\u001a\u0004\u0008;\u0010)\"\u0004\u0008<\u00109R\u0016\u0010?\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u00104R\u0016\u0010A\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u00104R\u0016\u0010C\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u00104R\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010J\u00a8\u0006L"
    }
    d2 = {
        "Lcom/tn/lib/pager/PagerLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "",
        "T",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "onAttachedToWindow",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "Landroidx/recyclerview/widget/RecyclerView$t;",
        "recycler",
        "onDetachedFromWindow",
        "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V",
        "Landroid/view/View;",
        "U",
        "()Landroid/view/View;",
        "dy",
        "Landroidx/recyclerview/widget/RecyclerView$y;",
        "state",
        "scrollVerticallyBy",
        "(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I",
        "dx",
        "scrollHorizontallyBy",
        "Lch/a;",
        "listener",
        "Z",
        "(Lch/a;)V",
        "onLayoutChildren",
        "(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)V",
        "",
        "canScrollVertically",
        "()Z",
        "Landroidx/recyclerview/widget/n;",
        "a",
        "Lkotlin/Lazy;",
        "V",
        "()Landroidx/recyclerview/widget/n;",
        "pagerSnapHelper",
        "b",
        "Lch/a;",
        "onViewPagerListener",
        "c",
        "I",
        "direction",
        "d",
        "getCanScrollVertically",
        "X",
        "(Z)V",
        "e",
        "getEnableFadeEffect",
        "Y",
        "enableFadeEffect",
        "f",
        "oldState",
        "g",
        "oldPosition",
        "h",
        "oldPositionIdle",
        "com/tn/lib/pager/PagerLayoutManager$b",
        "i",
        "Lcom/tn/lib/pager/PagerLayoutManager$b;",
        "rvScrollListener",
        "Landroidx/recyclerview/widget/RecyclerView$o;",
        "j",
        "Landroidx/recyclerview/widget/RecyclerView$o;",
        "childAttachStateChangeListener",
        "UI_psRelease"
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
.field private final a:Lkotlin/Lazy;

.field private b:Lch/a;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private final i:Lcom/tn/lib/pager/PagerLayoutManager$b;

.field private final j:Landroidx/recyclerview/widget/RecyclerView$o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance p1, Lch/b;

    invoke-direct {p1}, Lch/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->a:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->d:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->f:I

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->g:I

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->h:I

    new-instance p1, Lcom/tn/lib/pager/PagerLayoutManager$b;

    invoke-direct {p1, p0}, Lcom/tn/lib/pager/PagerLayoutManager$b;-><init>(Lcom/tn/lib/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->i:Lcom/tn/lib/pager/PagerLayoutManager$b;

    new-instance p1, Lcom/tn/lib/pager/PagerLayoutManager$a;

    invoke-direct {p1, p0}, Lcom/tn/lib/pager/PagerLayoutManager$a;-><init>(Lcom/tn/lib/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lch/b;

    invoke-direct {p1}, Lch/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->a:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->d:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->f:I

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->g:I

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->h:I

    new-instance p1, Lcom/tn/lib/pager/PagerLayoutManager$b;

    invoke-direct {p1, p0}, Lcom/tn/lib/pager/PagerLayoutManager$b;-><init>(Lcom/tn/lib/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->i:Lcom/tn/lib/pager/PagerLayoutManager$b;

    new-instance p1, Lcom/tn/lib/pager/PagerLayoutManager$a;

    invoke-direct {p1, p0}, Lcom/tn/lib/pager/PagerLayoutManager$a;-><init>(Lcom/tn/lib/pager/PagerLayoutManager;)V

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$o;

    return-void
.end method

.method public static synthetic K()Landroidx/recyclerview/widget/n;
    .locals 1

    invoke-static {}, Lcom/tn/lib/pager/PagerLayoutManager;->W()Landroidx/recyclerview/widget/n;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic L(Lcom/tn/lib/pager/PagerLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->c:I

    return p0
.end method

.method public static final synthetic M(Lcom/tn/lib/pager/PagerLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->g:I

    return p0
.end method

.method public static final synthetic N(Lcom/tn/lib/pager/PagerLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->f:I

    return p0
.end method

.method public static final synthetic O(Lcom/tn/lib/pager/PagerLayoutManager;)Lch/a;
    .locals 0

    iget-object p0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->b:Lch/a;

    return-object p0
.end method

.method public static final synthetic P(Lcom/tn/lib/pager/PagerLayoutManager;)Landroidx/recyclerview/widget/n;
    .locals 0

    invoke-direct {p0}, Lcom/tn/lib/pager/PagerLayoutManager;->V()Landroidx/recyclerview/widget/n;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic Q(Lcom/tn/lib/pager/PagerLayoutManager;I)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->g:I

    return-void
.end method

.method public static final synthetic R(Lcom/tn/lib/pager/PagerLayoutManager;I)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->h:I

    return-void
.end method

.method public static final synthetic S(Lcom/tn/lib/pager/PagerLayoutManager;I)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->f:I

    return-void
.end method

.method private final T()V
    .locals 9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$m;->getDecoratedTop(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$m;->getDecoratedBottom(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v6, v8, v7}, Lkotlin/ranges/RangesKt;->l(FFF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method private final V()Landroidx/recyclerview/widget/n;
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/n;

    return-object v0
.end method

.method private static final W()Landroidx/recyclerview/widget/n;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/n;

    invoke-direct {v0}, Landroidx/recyclerview/widget/n;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final U()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/tn/lib/pager/PagerLayoutManager;->V()Landroidx/recyclerview/widget/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/n;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$m;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final X(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->d:Z

    return-void
.end method

.method public final Y(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->e:Z

    return-void
.end method

.method public final Z(Lch/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->b:Lch/a;

    return-void
.end method

.method public canScrollVertically()Z
    .locals 2

    iget-boolean v0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->d:Z

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tn/lib/pager/PagerLayoutManager;->V()Landroidx/recyclerview/widget/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/r;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$o;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager;->i:Lcom/tn/lib/pager/PagerLayoutManager$b;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_3
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/tn/lib/pager/PagerLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$o;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/tn/lib/pager/PagerLayoutManager;->i:Lcom/tn/lib/pager/PagerLayoutManager$b;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_1
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->c:I

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    iput p1, p0, Lcom/tn/lib/pager/PagerLayoutManager;->c:I

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    iget-boolean p2, p0, Lcom/tn/lib/pager/PagerLayoutManager;->e:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/tn/lib/pager/PagerLayoutManager;->T()V

    :cond_0
    return p1
.end method
