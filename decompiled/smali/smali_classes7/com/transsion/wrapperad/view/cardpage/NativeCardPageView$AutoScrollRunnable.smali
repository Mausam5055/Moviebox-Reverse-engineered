.class final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutoScrollRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;",
        "Ljava/lang/Runnable;",
        "nativeCardPageView",
        "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
        "<init>",
        "(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V",
        "nativeCardPageViewRef",
        "Ljava/lang/ref/WeakReference;",
        "run",
        "",
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
.field private final nativeCardPageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 1

    const-string v0, "nativeCardPageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;->nativeCardPageViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;->nativeCardPageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$isAutoScrolling$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "viewPager2"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v2

    :cond_1
    invoke-virtual {v5, v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getViewPager2$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-static {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$getScrollInterval$p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
