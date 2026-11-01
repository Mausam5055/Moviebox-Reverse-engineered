.class Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/window/layout/r;)V
    .locals 3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iput-object p1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Landroidx/window/layout/r;

    new-instance p1, Landroidx/transition/b;

    invoke-direct {p1}, Landroidx/transition/b;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroidx/transition/j;->X(J)Landroidx/transition/j;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v0, v0, v1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/j;->Z(Landroid/animation/TimeInterpolator;)Landroidx/transition/j;

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v0, p1}, Landroidx/transition/s;->a(Landroid/view/ViewGroup;Landroidx/transition/j;)V

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
