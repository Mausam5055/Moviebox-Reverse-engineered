.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
.super Landroid/view/ViewGroup;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;,
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;,
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;,
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;
    }
.end annotation


# static fields
.field public static o00000O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;

.field public static o00000OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;

.field public static o00000Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;

.field public static o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public OooO:F

.field public OooO00o:I

.field public OooO0O0:I

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o:I

.field public OooO0o0:I

.field public OooO0oO:I

.field public OooO0oo:F

.field public OooOO0:F

.field public OooOO0O:F

.field public OooOO0o:F

.field public OooOOO:F

.field public OooOOO0:F

.field public OooOOOO:C

.field public OooOOOo:Z

.field public OooOOo:Z

.field public OooOOo0:Z

.field public OooOOoo:I

.field public OooOo:I

.field public OooOo0:I

.field public OooOo00:I

.field public OooOo0O:I

.field public OooOo0o:I

.field public OooOoO:Landroid/widget/Scroller;

.field public OooOoO0:I

.field public OooOoOO:Landroid/view/VelocityTracker;

.field public OooOoo:[I

.field public OooOoo0:Landroid/view/animation/Interpolator;

.field public OooOooO:Z

.field public OooOooo:Z

.field public Oooo:Z

.field public Oooo0:Z

.field public Oooo000:Z

.field public Oooo00O:Z

.field public Oooo00o:Z

.field public Oooo0O0:Z

.field public Oooo0OO:Z

.field public Oooo0o:Z

.field public Oooo0o0:Z

.field public Oooo0oO:Z

.field public Oooo0oo:Z

.field public OoooO:Z

.field public OoooO0:Z

.field public OoooO00:Z

.field public OoooO0O:Z

.field public OoooOO0:Z

.field public OoooOOO:Z

.field public OoooOOo:Z

.field public OoooOo0:Z

.field public OoooOoO:Z

.field public OoooOoo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0OO;

.field public Ooooo00:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0O0;

.field public Ooooo0o:I

.field public OooooO0:Z

.field public OooooOO:[I

.field public OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

.field public Oooooo:I

.field public Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

.field public OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

.field public Ooooooo:I

.field public o00000:Ljava/lang/Runnable;

.field public o000000:Z

.field public o000000O:Z

.field public o000000o:Landroid/view/MotionEvent;

.field public o00000O0:Landroid/animation/ValueAnimator;

.field public o000OOo:Z

.field public o000oOoO:Z

.field public o00O0O:I

.field public o00Oo0:F

.field public o00Ooo:F

.field public o00o0O:F

.field public o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

.field public o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

.field public o00ooo:F

.field public o0O0O00:I

.field public o0OO00O:J

.field public o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

.field public o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

.field public o0ooOO0:Landroid/graphics/Paint;

.field public o0ooOOo:Landroid/os/Handler;

.field public o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

.field public oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

.field public oo0o0Oo:I

.field public ooOO:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o0:I

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0o:F

    const v1, 0x3e2aaaab

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO0:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    const/16 v1, 0x6e

    iput-char v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    const/4 v1, -0x1

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOoo:I

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo00:I

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0:I

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0O:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo000:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00O:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO00:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOo0:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOoO:Z

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOO:[I

    new-instance v3, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    new-instance v3, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    const/high16 v3, 0x40200000    # 2.5f

    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00o0O:F

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00ooo:F

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    iput v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo0o0Oo:I

    iput v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0O0O00:I

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000O:Z

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    new-instance v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;-><init>(I)V

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0o:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo:I

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    sget-object v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_android_clipToPadding:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    sget v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_android_clipChildren:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)V

    :cond_2
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlDragRate:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderMaxDragRate:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterMaxDragRate:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderTriggerRate:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00o0O:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00o0O:F

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterTriggerRate:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00ooo:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00ooo:F

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableRefresh:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlReboundDuration:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableLoadMore:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderHeight:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterHeight:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderInsetStart:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->ooOO:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->ooOO:I

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterInsetStart:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00O0O:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00O0O:I

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO00:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO00:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    sget v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo000:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo000:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00O:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00O:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFixedHeaderViewId:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOoo:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOoo:I

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFixedFooterViewId:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo00:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo00:I

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderTranslationViewId:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0:I

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterTranslationViewId:I

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0O:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0O:I

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableNestedScrolling:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    if-nez p1, :cond_4

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableLoadMore:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOo0:Z

    if-nez p1, :cond_6

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableHeaderTranslationContent:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v2

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v1

    :goto_3
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOo0:Z

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOoO:Z

    if-nez p1, :cond_8

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlEnableFooterTranslationContent:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move p1, v2

    goto :goto_5

    :cond_8
    :goto_4
    move p1, v1

    :goto_5
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOoO:Z

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlHeaderHeight:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    :goto_6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlFooterHeight:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    :goto_7
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlAccentColor:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    sget v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniRefreshLayout_srlPrimaryColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    filled-new-array {v0, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    goto :goto_8

    :cond_b
    filled-new-array {v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_d

    filled-new-array {v2, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    :cond_d
    :goto_8
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-nez p1, :cond_e

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    :cond_e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0OO(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0Oo(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0o0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;)V
    .locals 0
    .param p0    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;)V
    .locals 0
    .param p0    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;)V
    .locals 0
    .param p0    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0OO;

    return-void
.end method


# virtual methods
.method public OooO00o(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    :cond_0
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0o;

    invoke-direct {p3, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO;

    invoke-direct {p3, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public OooO00o(IZLjava/lang/Boolean;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;ILjava/lang/Boolean;Z)V

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->run()V

    :goto_0
    return-object p0
.end method

.method public OooO00o(IZZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;IZZ)V

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->run()V

    :goto_0
    return-object p0
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
    .locals 3
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0O0O00:I

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;-><init>(II)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->setPrimaryColors([I)V

    :cond_5
    return-object p0
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
    .locals 3
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    const/4 p1, 0x0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo0o0Oo:I

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;-><init>(II)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->setPrimaryColors([I)V

    :cond_3
    return-object p0
.end method

.method public OooO00o(F)V
    .locals 10

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    if-nez v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o()Z

    move-result v0

    if-nez v0, :cond_0

    move p1, v1

    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    mul-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float v3, v2, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_3

    cmpl-float v2, p1, v1

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0o:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    float-to-int v0, v2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v4, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_1

    :cond_3
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    if-ne v0, v2, :cond_6

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_6

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    int-to-float v0, v0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v2, p1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_1

    :cond_4
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    mul-float/2addr v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    neg-float v8, v7

    cmpl-float v9, v0, v1

    if-nez v9, :cond_5

    move v0, v4

    :cond_5
    div-float/2addr v8, v0

    float-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v0, v0

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    add-int/2addr v0, v4

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_1

    :cond_6
    cmpg-float v2, p1, v1

    if-gez v2, :cond_b

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_9

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v2, p1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_1

    :cond_9
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    sub-float/2addr v2, v4

    int-to-float v0, v0

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    int-to-float v7, v7

    add-float/2addr v7, p1

    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    mul-float/2addr v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    neg-float v7, v7

    neg-float v8, v7

    cmpl-float v9, v0, v1

    if-nez v9, :cond_a

    move v0, v4

    :cond_a
    div-float/2addr v8, v0

    float-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    neg-float v0, v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v0, v0

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    sub-int/2addr v0, v4

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_1

    :cond_b
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    mul-float/2addr v7, p1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    neg-float v8, v7

    cmpl-float v9, v2, v1

    if-nez v9, :cond_c

    move v2, v4

    :cond_c
    div-float/2addr v8, v2

    float-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v0, v0

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_1

    :cond_d
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oO:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO:F

    mul-float/2addr v7, p1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    neg-float v7, v7

    neg-float v8, v7

    cmpl-float v9, v2, v1

    if-nez v9, :cond_e

    move v2, v4

    :cond_e
    div-float/2addr v8, v2

    float-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    neg-float v0, v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    float-to-int v0, v0

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :goto_1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    cmpg-float p1, p1, v1

    if-gez p1, :cond_10

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v0, :cond_10

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v0, v0

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    :cond_f
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->setStateDirectLoading(Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;)V

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2, p0, v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v0, :cond_3

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    :cond_3
    :goto_0
    return-void
.end method

.method public OooO00o()Z
    .locals 7

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000OOo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    int-to-float v5, v4

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    const/4 v5, 0x1

    if-nez v4, :cond_1

    move v4, v5

    :cond_1
    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v4, v6, :cond_3

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FIZ)V

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->setViceState(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->run()V

    :goto_1
    move v1, v5

    :cond_3
    return v1
.end method

.method public OooO00o(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public OooO00o(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z
    .locals 0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oo:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object p1

    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public OooO0O0(Z)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12c

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    sub-long/2addr v0, v5

    long-to-int p1, v0

    rsub-int p1, p1, 0x12c

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v3, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZLjava/lang/Boolean;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    sub-long/2addr v0, v5

    long-to-int p1, v0

    rsub-int p1, p1, 0x12c

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1, v3, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;->OooO00o(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object p1

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    const-string p1, "Footer:"

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public OooO0O0()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0o:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    float-to-int v0, v3

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :goto_0
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO0:I

    const/16 v4, -0x3e8

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    div-int/lit8 v4, v0, 0x2

    if-le v3, v4, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o0:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v4, v1, :cond_11

    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevelFinish:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-nez v1, :cond_2

    invoke-virtual {v0, v2, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o0:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    :cond_3
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    :cond_5
    if-gez v0, :cond_11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    :cond_6
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_2

    :cond_7
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_2

    :cond_8
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto/16 :goto_2

    :cond_9
    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_2

    :cond_a
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_TWO_LEVEL:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TWO_LEVEL_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_2

    :cond_b
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_c
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v1, v1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_d
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_e

    goto :goto_2

    :cond_e
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_f
    :goto_1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v1, v1

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_10
    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    :cond_11
    :goto_2
    return-void
.end method

.method public OooO0O0(F)Z
    .locals 12

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO0:I

    int-to-float p1, p1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    neg-float p1, p1

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0o:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_13

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    int-to-float v3, v1

    mul-float/2addr v3, p1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_d

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    sget-object v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v3, v6, :cond_3

    if-gez v1, :cond_2

    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isReleaseToOpening:Z

    if-eqz v3, :cond_d

    return v5

    :cond_3
    :goto_0
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;F)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    const/16 v3, 0xa

    if-eqz v1, :cond_c

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isOpening:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p1, v1, :cond_6

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v1, v1

    if-lt p1, v1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne p1, v4, :cond_c

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    if-le p1, v1, :cond_c

    :cond_8
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0O0:F

    move v4, p1

    :goto_1
    mul-int v6, p1, v4

    if-lez v6, :cond_c

    float-to-double v6, v1

    const v1, 0x3f7ae148    # 0.98f

    float-to-double v8, v1

    add-int/2addr v2, v5

    mul-int/lit8 v1, v2, 0xa

    int-to-float v1, v1

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v1, v10

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v6

    double-to-float v1, v8

    int-to-float v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v6, v8

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v8, v7

    if-gez v7, :cond_b

    iget-object p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isOpening:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v1, v2, :cond_9

    iget v6, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    if-gt v4, v6, :cond_a

    :cond_9
    if-eq v1, v2, :cond_c

    iget p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int p1, p1

    if-ge v4, p1, :cond_c

    :cond_a
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    int-to-float v4, v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    goto :goto_1

    :cond_c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0OO:J

    iget-object p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOOO;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    int-to-long v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    return v5

    :cond_d
    cmpg-float v3, p1, v0

    if-gez v3, :cond_10

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez v3, :cond_12

    :cond_e
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v3, v4, :cond_f

    if-gez v1, :cond_12

    :cond_f
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    cmpl-float v0, p1, v0

    if-lez v0, :cond_13

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    if-nez v0, :cond_12

    :cond_11
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gtz v0, :cond_13

    :cond_12
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000O:Z

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    neg-float p1, p1

    float-to-int v7, p1

    const v10, -0x7fffffff

    const v11, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_13
    return v2
.end method

.method public computeScroll()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-lez v0, :cond_b

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-eqz v2, :cond_b

    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000O:Z

    if-eqz v2, :cond_a

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v3, v4, :cond_6

    :cond_5
    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    invoke-direct {v2, p0, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FI)V

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    goto :goto_1

    :cond_6
    cmpg-float v2, v0, v2

    if-gez v2, :cond_9

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v2, v3, :cond_9

    :cond_8
    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v3, v3

    invoke-direct {v2, p0, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FI)V

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    if-eqz v2, :cond_a

    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FI)V

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_2

    :cond_b
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000O:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x6

    if-ne v6, v2, :cond_0

    move v3, v11

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    move v9, v7

    move v12, v9

    move v8, v10

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    if-eq v6, v2, :cond_5

    const/4 v2, 0x5

    if-ne v6, v2, :cond_6

    :cond_5
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    if-eqz v2, :cond_6

    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    sub-float v3, v8, v3

    add-float/2addr v3, v2

    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    :cond_6
    iput v9, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v3, :cond_9

    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    if-ne v2, v3, :cond_9

    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    int-to-float v5, v11

    div-float/2addr v4, v5

    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v5, v4, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(FII)V

    goto :goto_5

    :cond_8
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gez v5, :cond_9

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v5, v4, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(FII)V

    :cond_9
    :goto_5
    return v1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-eqz v2, :cond_36

    :cond_b
    invoke-virtual {v0, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(I)Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v4, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFinishing:Z

    if-nez v4, :cond_35

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v2, v4, :cond_c

    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOO0:Z

    if-nez v5, :cond_35

    :cond_c
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v2, v5, :cond_d

    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO:Z

    if-eqz v2, :cond_d

    goto/16 :goto_e

    :cond_d
    const/4 v2, 0x0

    const/16 v5, 0x68

    if-eqz v6, :cond_2f

    if-eq v6, v11, :cond_2b

    const/4 v12, 0x3

    if-eq v6, v3, :cond_e

    if-eq v6, v12, :cond_2c

    goto/16 :goto_c

    :cond_e
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    sub-float/2addr v9, v3

    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    sub-float v3, v8, v3

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    if-nez v6, :cond_1b

    iget-boolean v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo:Z

    if-nez v6, :cond_1b

    iget-char v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    if-eq v6, v5, :cond_1b

    iget-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v13, :cond_1b

    const/16 v13, 0x76

    if-eq v6, v13, :cond_10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v14, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    int-to-float v14, v14

    cmpl-float v6, v6, v14

    if-ltz v6, :cond_f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v6, v6, v14

    if-gez v6, :cond_f

    goto :goto_6

    :cond_f
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_1b

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1b

    iget-char v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    if-eq v4, v13, :cond_1b

    iput-char v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    goto/16 :goto_a

    :cond_10
    :goto_6
    iput-char v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    cmpl-float v5, v3, v7

    if-lez v5, :cond_13

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-ltz v5, :cond_12

    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez v5, :cond_11

    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    if-eqz v5, :cond_13

    :cond_11
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0()Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    iput-boolean v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    int-to-float v4, v4

    sub-float v4, v8, v4

    iput v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    goto :goto_7

    :cond_13
    cmpg-float v5, v3, v7

    if-gez v5, :cond_17

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gtz v5, :cond_16

    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez v5, :cond_14

    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-eqz v5, :cond_17

    :cond_14
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v5, v4, :cond_15

    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    if-nez v4, :cond_16

    :cond_15
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    iput-boolean v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    iput v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    :cond_17
    :goto_7
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    if-eqz v4, :cond_1b

    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    sub-float v3, v8, v3

    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo0:Z

    if-eqz v4, :cond_18

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_18
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gtz v5, :cond_1a

    if-nez v5, :cond_19

    cmpl-float v5, v3, v7

    if-lez v5, :cond_19

    goto :goto_8

    :cond_19
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    goto :goto_9

    :cond_1a
    :goto_8
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    :goto_9
    check-cast v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1b

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1b
    :goto_a
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    if-eqz v4, :cond_2a

    float-to-int v4, v3

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    if-eqz v6, :cond_1c

    if-ltz v4, :cond_1d

    iget v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO:I

    if-ltz v6, :cond_1d

    :cond_1c
    iget-boolean v5, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    if-eqz v5, :cond_29

    if-gtz v4, :cond_1d

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO:I

    if-lez v5, :cond_29

    :cond_1d
    iput v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    if-nez v1, :cond_1e

    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    add-float v18, v1, v9

    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-wide v13, v5

    move-wide v15, v5

    move/from16 v19, v1

    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1e
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    add-float v18, v1, v9

    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    int-to-float v9, v4

    add-float v19, v1, v9

    const/16 v17, 0x2

    const/16 v20, 0x0

    move-wide v13, v5

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    if-eqz v5, :cond_1f

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1f

    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gez v3, :cond_1f

    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    :cond_1f
    if-lez v4, :cond_21

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez v3, :cond_20

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    if-eqz v3, :cond_21

    :cond_20
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0()Z

    move-result v3

    if-eqz v3, :cond_21

    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    iput v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_b

    :cond_21
    if-gez v4, :cond_23

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez v3, :cond_22

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-eqz v3, :cond_23

    :cond_22
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o()Z

    move-result v3

    if-eqz v3, :cond_23

    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    iput v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    goto :goto_b

    :cond_23
    move v10, v4

    :goto_b
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    if-eqz v4, :cond_24

    if-ltz v10, :cond_25

    :cond_24
    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    if-eqz v3, :cond_27

    if-lez v10, :cond_27

    :cond_25
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-eqz v1, :cond_26

    invoke-virtual {v0, v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    :cond_26
    return v11

    :cond_27
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    if-eqz v3, :cond_28

    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_28
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v4, v10

    :cond_29
    int-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    return v11

    :cond_2a
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    if-eqz v2, :cond_2e

    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2e

    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gez v2, :cond_2e

    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    goto :goto_c

    :cond_2b
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO0:I

    invoke-virtual {v0, v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(F)Z

    :cond_2c
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    const/16 v3, 0x6e

    iput-char v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000o:Landroid/view/MotionEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget v7, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0()V

    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    if-eqz v2, :cond_2e

    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    return v11

    :cond_2e
    :goto_c
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_2f
    iput v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO0:I

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoOO:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoO:Landroid/widget/Scroller;

    invoke-virtual {v3, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput v9, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0oo:F

    iput v8, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    iput v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO:I

    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo:Z

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo0:Z

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->TwoLevel:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v3, v4, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOO0:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v6

    if-gtz v7, :cond_30

    iget v7, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    int-to-float v8, v3

    sub-float v9, v6, v4

    mul-float/2addr v9, v8

    cmpg-float v7, v7, v9

    if-gez v7, :cond_30

    iput-char v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo0:Z

    return v1

    :cond_30
    cmpl-float v6, v4, v6

    if-lez v6, :cond_31

    iget v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    int-to-float v3, v3

    sub-float/2addr v3, v4

    cmpg-float v3, v6, v3

    if-gez v3, :cond_31

    iput-char v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOO:C

    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo0:Z

    return v1

    :cond_31
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v3, :cond_34

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {v4, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v1, v5}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    iget-object v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    if-eq v1, v5, :cond_32

    invoke-virtual {v3, v5, v4, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    :cond_32
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    iget-object v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    if-ne v1, v5, :cond_33

    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    iput-object v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o:Landroid/graphics/PointF;

    goto :goto_d

    :cond_33
    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    iput-object v4, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o:Landroid/graphics/PointF;

    :cond_34
    :goto_d
    return v11

    :cond_35
    :goto_e
    return v10

    :cond_36
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_8

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    add-int/2addr v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo0o0Oo:I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOO0:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v3

    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v3

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v3, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    add-int/2addr v1, v3

    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v7, v3

    int-to-float v8, v1

    iget-object v9, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOO0:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo000:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v3

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-eq v3, v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v3

    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    if-eqz v3, :cond_8

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_7
    :goto_2
    return v2

    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_10

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_4

    :cond_9
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0O0O00:I

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOO0:Landroid/graphics/Paint;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v1, v2, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    add-int/2addr v0, v1

    :cond_b
    :goto_3
    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOO0:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_c
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00O:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-eq v1, v2, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    if-eqz v1, :cond_10

    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_f
    :goto_4
    return v2

    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    return-object v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000OOo:Z

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0O0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultRefreshHeaderCreator can not return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    const/4 v3, 0x0

    if-nez v1, :cond_5

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO00o;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultRefreshFooterCreator can not return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v3

    :cond_7
    :goto_1
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v3

    :goto_3
    if-ge v1, v0, :cond_b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v5

    if-eq v4, v5, :cond_a

    :cond_8
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v5

    if-eq v4, v5, :cond_a

    :cond_9
    new-instance v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-direct {v5, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-nez v0, :cond_c

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result v1

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0x9a00

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->srl_content_empty:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    const/4 v5, -0x1

    invoke-direct {v0, v5, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;-><init>(II)V

    invoke-virtual {p0, v4, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-direct {v0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOoo:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo00:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    iput-object v2, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    iput-boolean v4, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0OO:Z

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    invoke-virtual {v2, v4, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;Landroid/view/View;Landroid/view/View;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-eqz v0, :cond_d

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0:I

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo0O:I

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(III)V

    :cond_d
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_e

    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->setPrimaryColors([I)V

    :cond_e
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo:[I

    invoke-interface {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->setPrimaryColors([I)V

    :cond_f
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v0, :cond_10

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_10
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000OOo:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v4, v5, :cond_1

    invoke-interface {v3, p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    :cond_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v4, v5, :cond_2

    invoke-interface {v3, p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    :cond_2
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v3, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v1, v3, :cond_4

    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v7, :cond_0

    if-ne v4, v8, :cond_1

    :cond_0
    move v5, v4

    move v6, v7

    goto :goto_2

    :cond_1
    instance-of v7, v9, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-nez v7, :cond_3

    if-ge v6, v8, :cond_3

    if-lez v4, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    move v5, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    new-instance v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-ne v5, v8, :cond_6

    if-ne v0, v1, :cond_5

    :goto_3
    move v1, v3

    goto :goto_4

    :cond_5
    move v7, v2

    goto :goto_3

    :cond_6
    if-ne v0, v7, :cond_7

    move v1, v2

    move v7, v8

    goto :goto_4

    :cond_7
    move v1, v2

    move v7, v1

    :goto_4
    move v4, v3

    :goto_5
    if-ge v4, v0, :cond_10

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v7, :cond_8

    if-ne v1, v2, :cond_8

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-nez v6, :cond_8

    instance-of v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v7, :cond_9

    if-ne v7, v2, :cond_f

    instance-of v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    if-eqz v6, :cond_f

    :cond_9
    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    move v6, v3

    goto :goto_7

    :cond_b
    :goto_6
    move v6, v8

    :goto_7
    iput-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    instance-of v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    goto :goto_8

    :cond_c
    new-instance v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0O0;

    invoke-direct {v6, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0O0;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    goto :goto_b

    :cond_d
    :goto_9
    instance-of v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    if-eqz v6, :cond_e

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0OO;

    invoke-direct {v6, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0OO;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_13

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_12

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->srl_component_falsify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    if-ne v1, v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-virtual {p0, v1, v8}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    :cond_3
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, p4

    :goto_3
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->ooOO:I

    add-int/2addr v4, v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v1

    sget-object v8, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v1, v8, :cond_7

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    :cond_7
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v2, p4

    :goto_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_a
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_6
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00O0O:I

    sub-int/2addr v6, v5

    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000oOoO:Z

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOO:Z

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v5

    sget-object v7, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v5, v7, :cond_c

    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v5, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_b

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_b
    move v6, p4

    :goto_7
    add-int v7, p2, p2

    add-int/2addr v7, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v6, v5, v7

    :cond_c
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v3, v5, :cond_d

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00O0O:I

    sub-int v6, v1, v2

    goto :goto_b

    :cond_d
    if-nez v2, :cond_10

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-eq v3, v1, :cond_10

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v3, v1, :cond_e

    goto :goto_a

    :cond_e
    iget-boolean v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-gez v1, :cond_11

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    neg-int v1, v1

    goto :goto_8

    :cond_f
    move v1, p4

    :goto_8
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_9
    sub-int/2addr v6, v1

    goto :goto_b

    :cond_10
    :goto_a
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    goto :goto_9

    :cond_11
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, v4, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_c
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0OO:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_23

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    sget v10, Lcom/cloud/tmc/miniapp/R$string;->srl_component_falsify:I

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_2

    :cond_1
    const/4 v5, 0x0

    const/4 v12, 0x1

    goto/16 :goto_15

    :cond_2
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    const/4 v14, 0x6

    if-eqz v10, :cond_f

    invoke-interface {v10}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v10

    if-ne v10, v9, :cond_f

    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v10}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_3

    move-object v11, v4

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_3
    sget-object v11, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_2
    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v12

    iget v12, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v15, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    iget v15, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget v13, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o:I

    if-ge v13, v14, :cond_7

    iget v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v13, :cond_4

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v15

    sget-object v15, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    invoke-virtual {v5, v15}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    iput-object v15, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    goto :goto_3

    :cond_4
    const/4 v4, -0x2

    if-ne v13, v4, :cond_7

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v4

    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v4, v5, :cond_5

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget-boolean v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0O0:Z

    if-nez v4, :cond_7

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_7

    if-eq v5, v4, :cond_6

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    sget-object v13, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    invoke-virtual {v4, v13}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v4

    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    iput-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    :cond_6
    const/4 v13, -0x1

    goto :goto_3

    :cond_7
    move v13, v15

    :cond_8
    :goto_3
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v4

    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v4, v5, :cond_9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v4

    iget-boolean v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    if-eqz v4, :cond_b

    if-nez v3, :cond_b

    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    :goto_5
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_6
    const/4 v4, -0x1

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    :goto_7
    if-eq v13, v4, :cond_c

    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v13, v4

    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v13, v4

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v10, v12, v4}, Landroid/view/View;->measure(II)V

    :cond_c
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget-boolean v5, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0O0:Z

    if-nez v5, :cond_e

    if-nez v5, :cond_d

    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o:I

    const/4 v11, 0x1

    add-int/2addr v4, v11

    aget-object v4, v5, v4

    :cond_d
    iput-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    iget v12, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    int-to-float v13, v11

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-interface {v4, v5, v11, v12}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;II)V

    :cond_e
    if-eqz v3, :cond_f

    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    :cond_f
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v4, :cond_1b

    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_1b

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_10

    move-object v10, v5

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_8

    :cond_10
    sget-object v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_8
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    iget v12, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    iget-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget v15, v13, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o:I

    if-ge v15, v14, :cond_14

    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v14, :cond_11

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    sget-object v14, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    invoke-virtual {v13, v14}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;)Z

    move-result v13

    if-eqz v13, :cond_14

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v13

    iput v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    iput-object v14, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    goto :goto_9

    :cond_11
    const/4 v5, -0x2

    if-ne v14, v5, :cond_14

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v5

    sget-object v13, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v5, v13, :cond_12

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget-boolean v5, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0O0:Z

    if-nez v5, :cond_14

    :cond_12
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v13

    const/4 v13, 0x0

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v4, v11, v13}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-lez v13, :cond_14

    if-eq v13, v5, :cond_13

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    sget-object v12, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    invoke-virtual {v5, v12}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v5

    iput v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    iput-object v12, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    :cond_13
    const/4 v12, -0x1

    :cond_14
    :goto_9
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v5

    sget-object v13, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v5, v13, :cond_16

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    :cond_15
    const/4 v5, 0x0

    :goto_a
    const/4 v13, -0x1

    goto :goto_c

    :cond_16
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object v5

    iget-boolean v5, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    if-eqz v5, :cond_15

    if-nez v3, :cond_15

    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v5

    if-eqz v5, :cond_17

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    neg-int v5, v5

    move v12, v5

    const/4 v5, 0x0

    goto :goto_b

    :cond_17
    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_b
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_a

    :goto_c
    if-eq v12, v13, :cond_18

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v10

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v4, v11, v10}, Landroid/view/View;->measure(II)V

    :cond_18
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget-boolean v11, v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0O0:Z

    if-nez v11, :cond_1a

    if-nez v11, :cond_19

    sget-object v11, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget v10, v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;->OooO00o:I

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aget-object v10, v11, v10

    goto :goto_d

    :cond_19
    const/4 v12, 0x1

    :goto_d
    iput-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OoOo0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO00o;

    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    iget v14, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    int-to-float v15, v13

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-interface {v10, v11, v13, v14}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;II)V

    goto :goto_e

    :cond_1a
    const/4 v12, 0x1

    :goto_e
    if-eqz v3, :cond_1c

    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {v0, v10}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    move v8, v4

    goto :goto_f

    :cond_1b
    const/4 v5, 0x0

    const/4 v12, 0x1

    :cond_1c
    :goto_f
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v4, :cond_22

    check-cast v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v4, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    if-ne v4, v9, :cond_22

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_1d

    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_10

    :cond_1d
    sget-object v10, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000o0:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_10
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v11, :cond_1e

    iget-boolean v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v11

    if-eqz v11, :cond_1e

    iget-boolean v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    iget-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-virtual {v0, v11, v13}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z

    move-result v11

    if-eqz v11, :cond_1e

    move v11, v12

    goto :goto_11

    :cond_1e
    move v11, v5

    :goto_11
    iget-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v13, :cond_1f

    iget-boolean v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    invoke-virtual {v0, v13}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Z)Z

    move-result v13

    if-eqz v13, :cond_1f

    iget-boolean v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0:Z

    iget-object v14, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-virtual {v0, v13, v14}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(ZLcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Z

    move-result v13

    if-eqz v13, :cond_1f

    move v13, v12

    goto :goto_12

    :cond_1f
    move v13, v5

    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    add-int/2addr v15, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v14

    iget v14, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v15, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    add-int v16, v16, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v16, v15

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v16, v16, v10

    if-eqz v3, :cond_20

    if-eqz v11, :cond_20

    iget v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    goto :goto_13

    :cond_20
    move v10, v5

    :goto_13
    add-int v16, v16, v10

    if-eqz v3, :cond_21

    if-eqz v13, :cond_21

    iget v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    goto :goto_14

    :cond_21
    move v10, v5

    :goto_14
    add-int v10, v16, v10

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v10, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {v4, v14, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    :cond_22
    :goto_15
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v8, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    move v1, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    move v1, p3

    :goto_0
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    move v1, p3

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    const/4 p1, 0x1

    aget p2, p4, p1

    add-int/2addr p2, v1

    aput p2, p4, p1

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOO:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOO:[I

    const/4 p4, 0x1

    aget p2, p2, p4

    add-int/2addr p5, p2

    if-gez p5, :cond_0

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-lez p5, :cond_5

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-eqz p2, :cond_5

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq p2, v0, :cond_2

    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isOpening:Z

    if-eqz p2, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    if-lez p5, :cond_3

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_UP_TO_LOAD:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    :goto_1
    check-cast p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(F)V

    :cond_5
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    if-eqz p1, :cond_6

    if-gez p3, :cond_6

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    :cond_6
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo0:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOo:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0O:Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooOo:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setStateDirectLoading(Z)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOADING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000000:Z

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo00:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0O0;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {v1, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {p1, p0, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    :cond_2
    return-void
.end method

.method public setStateLoading(Z)V
    .locals 5

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Z)V

    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->LOAD_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    neg-int v1, v1

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Ooo:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_2
    return-void
.end method

.method public setStateRefreshing(Z)V
    .locals 5

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Z)V

    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_2
    return-void
.end method

.method public setViceState(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isDragging:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    iget-boolean v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    :cond_1
    return-void
.end method
