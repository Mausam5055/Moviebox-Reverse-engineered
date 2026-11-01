.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/helper/widget/Carousel$a;
    }
.end annotation


# static fields
.field public static final TOUCH_UP_CARRY_ON:I = 0x2

.field public static final TOUCH_UP_IMMEDIATE_STOP:I = 0x1


# instance fields
.field private A:I

.field private B:F

.field private C:I

.field private D:I

.field E:I

.field F:Ljava/lang/Runnable;

.field private final n:Ljava/util/ArrayList;

.field private o:I

.field private p:I

.field private q:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private r:I

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:F

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:I

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Z

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:F

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    const/4 p1, 0x4

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    const/4 p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    const/16 p1, 0xc8

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:I

    new-instance p1, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->F:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Z

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    const v2, 0x3f666666    # 0.9f

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:F

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    const/16 v0, 0xc8

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:I

    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->F:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:Ljava/util/ArrayList;

    const/4 p3, 0x0

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:I

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Z

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:F

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    const/4 p3, 0x4

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    const/4 p3, 0x1

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    const/high16 p3, 0x40000000    # 2.0f

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    const/16 p3, 0xc8

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:I

    new-instance p3, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->F:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic l(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object p0
.end method

.method static synthetic m(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->q()V

    return-void
.end method

.method static synthetic n(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    return p0
.end method

.method static synthetic o(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/helper/widget/Carousel$a;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method private p(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_b

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_firstView:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    goto/16 :goto_1

    :cond_0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_backwardTransition:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    goto/16 :goto_1

    :cond_1
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_forwardTransition:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    goto :goto_1

    :cond_2
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_emptyViewsBehavior:I

    if-ne v1, v2, :cond_3

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:I

    goto :goto_1

    :cond_3
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_previousState:I

    if-ne v1, v2, :cond_4

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    goto :goto_1

    :cond_4
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_nextState:I

    if-ne v1, v2, :cond_5

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    goto :goto_1

    :cond_5
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_dampeningFactor:I

    if-ne v1, v2, :cond_6

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:F

    goto :goto_1

    :cond_6
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUpMode:I

    if-ne v1, v2, :cond_7

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    goto :goto_1

    :cond_7
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_velocityThreshold:I

    if-ne v1, v2, :cond_8

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:F

    goto :goto_1

    :cond_8
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_infinite:I

    if-ne v1, v2, :cond_9

    iget-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Z

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    return-void
.end method

.method private q()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    return v0
.end method

.method public jumpToIndex(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->refresh()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->a:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    if-ne v4, v2, :cond_0

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/p$b;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/p$b;->H(I)V

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/p$b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/p$b;->H(I)V

    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->q()V

    :cond_4
    return-void
.end method

.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:I

    return-void
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 1

    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:I

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    if-ne p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    :cond_1
    :goto_0
    iget-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    throw p2

    :cond_2
    throw p2
.end method

.method public refresh()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->q()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v0, 0x0

    throw v0
.end method

.method public setAdapter(Landroidx/constraintlayout/helper/widget/Carousel$a;)V
    .locals 0

    return-void
.end method

.method public transitionToIndex(II)V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    :goto_0
    return-void
.end method
