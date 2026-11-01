.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:F

.field private b:Z

.field final synthetic c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->e(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    return-void
.end method

.method private static final e(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "viewPager2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getLastPosition$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/i;

    invoke-direct {v0, p2}, Lcom/transsion/wrapperad/view/cardpage/i;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "viewPager2"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->a:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-static {p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getDisableRightSwipe$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-static {p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getDisableRightSwipeThreshold$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    iput-boolean v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->b:Z

    return v1

    :cond_3
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->startAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->a:F

    iput-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$c;->b:Z

    :cond_5
    :goto_0
    return v0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
