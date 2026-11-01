.class public Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Landroid/view/VelocityTracker;

.field private G:I

.field private H:Landroidx/recyclerview/widget/RecyclerView;

.field private q:Z

.field private r:Z

.field private s:F

.field private t:F

.field private u:I

.field private v:I

.field private w:I

.field private x:[I

.field private y:Landroid/view/View;

.field private z:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    iput v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->R0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    const/4 p2, -0x1

    iput p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    iput p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->R0()V

    return-void
.end method

.method static bridge synthetic A0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static bridge synthetic B0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    return-void
.end method

.method static bridge synthetic C0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F0(Landroid/view/View;)V

    return-void
.end method

.method private D0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;

    invoke-direct {v1, p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;-><init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    return-void
.end method

.method private E0()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method private F0(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H:Landroidx/recyclerview/widget/RecyclerView;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private H0()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic I0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p2, v1, p2

    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->u:I

    int-to-float v2, v2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->O0(Landroid/view/ViewGroup;I)V

    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    if-eqz p1, :cond_0

    sub-float/2addr v0, v1

    const p1, 0x3e99999a    # 0.3f

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;->a(FZ)V

    :cond_0
    return-void
.end method

.method private M0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    if-gez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_9

    goto/16 :goto_3

    :cond_1
    iget v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_2

    sget-object p1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FixAppBarLayoutBehavior"

    invoke-virtual {p1, v1, v0, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    sub-int/2addr v1, v0

    iget-boolean v4, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    if-nez v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    if-le v4, v5, :cond_4

    iput-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    if-lez v1, :cond_3

    sub-int/2addr v1, v5

    goto :goto_0

    :cond_3
    add-int/2addr v1, v5

    :cond_4
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    if-eqz v3, :cond_b

    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    invoke-virtual {p0, v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G0(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p1, v1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->Q0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_5
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E0()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p1, v1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->Q0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_6
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    goto :goto_2

    :cond_8
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q:Z

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->P0(Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_9
    iput-boolean v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    goto :goto_3

    :cond_a
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    if-nez p1, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_c
    return v2
.end method

.method private O0(Landroid/view/ViewGroup;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_2

    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    aput v3, v4, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/transsion/usercenter/R$id;->toolbar:I

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/transsion/usercenter/R$id;->collapsing:I

    if-ne v3, v4, :cond_4

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->O0(Landroid/view/ViewGroup;I)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    aget v3, v3, v2

    if-ltz v3, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    int-to-float v3, p2

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_7

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    return-void
.end method

.method private P0(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    iput v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->s:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    aput v4, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/usercenter/profile/a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/usercenter/profile/a;-><init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$c;

    invoke-direct {p1, p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$c;-><init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->O0(Landroid/view/ViewGroup;I)V

    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    if-eqz p1, :cond_2

    invoke-interface {p1, v3, v1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;->a(FZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private Q0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->v:I

    if-ge v0, v2, :cond_2

    :cond_1
    if-lez p3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->v:I

    if-gt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    neg-int p3, p3

    int-to-float p3, p3

    add-float/2addr v0, p3

    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    const/high16 p3, 0x43fa0000    # 500.0f

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->t:F

    div-float/2addr v0, p3

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr v0, p3

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->s:F

    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->w:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v3, v0, p3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->u:I

    iget-object v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->s:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->u:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->O0(Landroid/view/ViewGroup;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setScrollY(I)V

    iget-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->s:F

    sub-float/2addr p1, p3

    const p2, 0x3e99999a    # 0.3f

    div-float/2addr p1, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    invoke-interface {p2, p1, v1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;->a(FZ)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private R0()V
    .locals 1

    new-instance v0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$a;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$a;-><init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->u0(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$c;)V

    return-void
.end method

.method private T0(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->E()I

    move-result p4

    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    neg-int p1, p1

    if-ne p4, p1, :cond_2

    :cond_1
    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public static synthetic z0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Lcom/google/android/material/appbar/AppBarLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->I0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->N0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public G0(I)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->A:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public J0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---onInterceptTouchEvent isOnInterceptTouchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FixAppBarLayoutBehavior"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    if-gez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_5

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    if-eq v0, v2, :cond_6

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D:I

    if-le v1, v2, :cond_6

    iput-boolean v4, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    return v4

    :cond_4
    iput-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    iput v2, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C:I

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->G:I

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->F:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public K0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FF)Z
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p5, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q:Z

    :cond_0
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public L0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 0

    invoke-super/range {p0 .. p8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    invoke-direct {p0, p7, p2, p3, p8}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->T0(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public N0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 4

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   onTouchEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "FixAppBarLayoutBehavior"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->M0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public S0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->B:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;

    return-void
.end method

.method public bridge synthetic k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->J0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public k0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->k0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p3

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "largeScale"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->w:I

    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_1

    const-string v0, "viewPager"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->z:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D0()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->A:Landroid/view/View;

    if-nez v0, :cond_2

    const-string v0, "emptyView"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->A:Landroid/view/View;

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->v:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->x:[I

    return p3
.end method

.method public bridge synthetic l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->k0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public m0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3, p5}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->Q0(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->m0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    invoke-direct {p0, p5, p2, p3, p7}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->T0(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic o(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->K0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->m0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public q0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->q:Z

    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->q0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->P0(Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->L0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method
