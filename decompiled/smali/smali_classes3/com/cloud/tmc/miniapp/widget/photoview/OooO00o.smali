.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;
.super Ljava/lang/Object;


# instance fields
.field public final OooO:F

.field public OooO00o:I

.field public OooO0O0:I

.field public final OooO0OO:Landroid/view/ScaleGestureDetector;

.field public OooO0Oo:Landroid/view/VelocityTracker;

.field public OooO0o:F

.field public OooO0o0:Z

.field public OooO0oO:F

.field public final OooO0oo:F

.field public OooOO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oo:F

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooOO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/view/MotionEvent;)F
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method public final OooO0O0(Landroid/view/MotionEvent;)F
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public final OooO0OO(Landroid/view/MotionEvent;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_17

    const/4 v6, 0x0

    if-eq v2, v4, :cond_10

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    const/4 v7, 0x3

    if-eq v2, v7, :cond_2

    const/4 v6, 0x6

    if-eq v2, v6, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v6, 0xff00

    and-int/2addr v2, v6

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    if-ne v6, v7, :cond_19

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    goto/16 :goto_6

    :cond_2
    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    goto/16 :goto_6

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o(Landroid/view/MotionEvent;)F

    move-result v2

    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0(Landroid/view/MotionEvent;)F

    move-result v6

    iget v8, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    sub-float v8, v2, v8

    iget v9, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    sub-float v9, v6, v9

    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    if-nez v10, :cond_5

    mul-float v10, v8, v8

    mul-float v11, v9, v9

    add-float/2addr v11, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    iget v12, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oo:F

    float-to-double v12, v12

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_4

    move v10, v4

    goto :goto_1

    :cond_4
    move v10, v5

    :goto_1
    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    :cond_5
    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    if-eqz v10, :cond_19

    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooOO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    check-cast v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;

    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO0;

    if-eqz v11, :cond_7

    invoke-interface {v11, v8, v9}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO0;->OooO00o(FF)V

    :cond_7
    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    invoke-virtual {v11, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {v11}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    iget-object v12, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-boolean v13, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o:Z

    if-eqz v13, :cond_e

    iget-object v12, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    iget-object v12, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v12}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-boolean v13, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO:Z

    if-nez v13, :cond_e

    iget-boolean v12, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oo:Z

    if-nez v12, :cond_e

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget-object v10, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v14, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoOO:I

    if-ne v14, v7, :cond_8

    cmpl-float v15, v12, v13

    if-gtz v15, :cond_d

    :cond_8
    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v14, :cond_9

    cmpl-float v16, v8, v15

    if-ltz v16, :cond_9

    cmpl-float v16, v12, v13

    if-gtz v16, :cond_d

    :cond_9
    const/high16 v16, -0x40800000    # -1.0f

    if-ne v14, v4, :cond_a

    cmpg-float v8, v8, v16

    if-gtz v8, :cond_a

    cmpl-float v8, v12, v13

    if-gtz v8, :cond_d

    :cond_a
    iget v8, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo0:I

    if-nez v8, :cond_b

    cmpl-float v10, v9, v15

    if-ltz v10, :cond_b

    cmpl-float v10, v13, v12

    if-gtz v10, :cond_d

    :cond_b
    if-ne v8, v4, :cond_c

    cmpg-float v9, v9, v16

    if-gtz v9, :cond_c

    cmpl-float v9, v13, v12

    if-gtz v9, :cond_d

    :cond_c
    if-ne v8, v7, :cond_f

    cmpl-float v7, v13, v12

    if-lez v7, :cond_f

    :cond_d
    if-eqz v11, :cond_f

    invoke-interface {v11, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_e
    if-eqz v11, :cond_f

    invoke-interface {v11, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_f
    :goto_2
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    iput v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_19

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    :cond_10
    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget-object v7, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_16

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooOO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    neg-float v2, v2

    neg-float v7, v7

    check-cast v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;

    iget-object v9, v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    new-instance v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    iget-object v11, v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;Landroid/content/Context;)V

    iput-object v10, v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    iget-object v9, v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v10, v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    iget-object v11, v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0(Landroid/widget/ImageView;)I

    move-result v9

    iget-object v11, v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v12, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-virtual {v11, v12}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/widget/ImageView;)I

    move-result v11

    float-to-int v15, v2

    float-to-int v2, v7

    iget-object v7, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO()Landroid/graphics/RectF;

    move-result-object v7

    if-nez v7, :cond_11

    goto :goto_5

    :cond_11
    iget v12, v7, Landroid/graphics/RectF;->left:F

    neg-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v9, v9

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    cmpg-float v12, v9, v12

    if-gez v12, :cond_12

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    move/from16 v17, v5

    goto :goto_3

    :cond_12
    move v9, v13

    move/from16 v17, v9

    :goto_3
    iget v12, v7, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    cmpg-float v12, v11, v12

    if-gez v12, :cond_13

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    move/from16 v19, v5

    goto :goto_4

    :cond_13
    move v7, v14

    move/from16 v19, v7

    :goto_4
    iput v13, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0O0:I

    iput v14, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0OO:I

    if-ne v13, v9, :cond_14

    if-eq v14, v7, :cond_15

    :cond_14
    iget-object v12, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v16, v2

    move/from16 v18, v9

    move/from16 v20, v7

    invoke-virtual/range {v12 .. v22}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    :cond_15
    :goto_5
    iget-object v2, v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v7, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    invoke-virtual {v7, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_16
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    goto :goto_6

    :cond_17
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_18

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    iput-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    :cond_19
    :goto_6
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    if-eq v2, v3, :cond_1a

    move v5, v2

    :cond_1a
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    iput v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0:I

    return v4
.end method
