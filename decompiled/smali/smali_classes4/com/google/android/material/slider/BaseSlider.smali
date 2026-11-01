.class abstract Lcom/google/android/material/slider/BaseSlider;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/BaseSlider$d;,
        Lcom/google/android/material/slider/BaseSlider$SliderState;,
        Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;,
        Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;
    }
.end annotation


# static fields
.field private static final A0:I

.field private static final v0:Ljava/lang/String; = "BaseSlider"

.field static final w0:I

.field private static final x0:I

.field private static final y0:I

.field private static final z0:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:F

.field private O:Landroid/view/MotionEvent;

.field private P:Z

.field private Q:F

.field private R:F

.field private S:Ljava/util/ArrayList;

.field private T:I

.field private U:I

.field private V:F

.field private W:[F

.field private final a:Landroid/graphics/Paint;

.field private a0:Z

.field private final b:Landroid/graphics/Paint;

.field private b0:I

.field private final c:Landroid/graphics/Paint;

.field private c0:I

.field private final d:Landroid/graphics/Paint;

.field private d0:I

.field private final e:Landroid/graphics/Paint;

.field private e0:Z

.field private final f:Landroid/graphics/Paint;

.field private f0:Z

.field private final g:Landroid/graphics/Paint;

.field private g0:Z

.field private final h:Lcom/google/android/material/slider/BaseSlider$d;

.field private h0:Landroid/content/res/ColorStateList;

.field private final i:Landroid/view/accessibility/AccessibilityManager;

.field private i0:Landroid/content/res/ColorStateList;

.field private j:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

.field private j0:Landroid/content/res/ColorStateList;

.field private k:I

.field private k0:Landroid/content/res/ColorStateList;

.field private final l:Ljava/util/List;

.field private l0:Landroid/content/res/ColorStateList;

.field private final m:Ljava/util/List;

.field private final m0:Landroid/graphics/Path;

.field private final n:Ljava/util/List;

.field private final n0:Landroid/graphics/RectF;

.field private o:Z

.field private final o0:Landroid/graphics/RectF;

.field private p:Landroid/animation/ValueAnimator;

.field private final p0:Lab/i;

.field private q:Landroid/animation/ValueAnimator;

.field private q0:Landroid/graphics/drawable/Drawable;

.field private final r:I

.field private r0:Ljava/util/List;

.field private s:I

.field private s0:F

.field private t:I

.field private t0:I

.field private u:I

.field private final u0:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/slider/BaseSlider;->w0:I

    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    sput v0, Lcom/google/android/material/slider/BaseSlider;->x0:I

    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort3:I

    sput v0, Lcom/google/android/material/slider/BaseSlider;->y0:I

    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    sput v0, Lcom/google/android/material/slider/BaseSlider;->z0:I

    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedAccelerateInterpolator:I

    sput v0, Lcom/google/android/material/slider/BaseSlider;->A0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    sget v0, Lcom/google/android/material/slider/BaseSlider;->w0:I

    invoke-static {p1, p2, p3, v0}, Lbb/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->a0:Z

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->f0:Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->m0:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->n0:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->o0:Landroid/graphics/RectF;

    new-instance v1, Lab/i;

    invoke-direct {v1}, Lab/i;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->r0:Ljava/util/List;

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->t0:I

    new-instance p1, Lcom/google/android/material/slider/c;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/c;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->u0:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->R(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;->g0(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    const/4 p2, 0x2

    invoke-virtual {v1, p2}, Lab/i;->k0(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->r:I

    new-instance p1, Lcom/google/android/material/slider/BaseSlider$d;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$d;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/BaseSlider$d;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->i:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private A(F)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    move-result v0

    if-nez v0, :cond_1

    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const-string v0, "%.0f"

    goto :goto_0

    :cond_0
    const-string v0, "%.2f"

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method private A0()V
    .locals 5

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "valueTo(%s) must be greater than valueFrom(%s)"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private B()[F
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->a0(F)F

    move-result v0

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->a0(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    new-array v3, v5, [F

    aput v2, v3, v1

    aput v0, v3, v4

    goto :goto_0

    :cond_1
    new-array v3, v5, [F

    aput v0, v3, v1

    aput v2, v3, v4

    :goto_0
    return-object v3
.end method

.method private B0()V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/android/material/slider/BaseSlider;->C0(F)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    iget v6, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v3

    aput-object v6, v9, v2

    aput-object v7, v9, v1

    aput-object v8, v9, v0

    const-string v0, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    iget v6, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v3

    aput-object v6, v0, v2

    aput-object v7, v0, v1

    const-string v1, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return-void
.end method

.method private static C(Landroid/animation/ValueAnimator;F)F
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return p1
.end method

.method private C0(F)Z
    .locals 2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->N(D)Z

    move-result p1

    return p1
.end method

.method private D(IF)F
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->t0:I

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->q(F)F

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    neg-float v0, v0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_3

    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    :goto_1
    invoke-static {p2, p1, v1}, Ld1/a;->a(FFF)F

    move-result p1

    return p1
.end method

.method private D0(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->a0(F)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method private E(Landroid/content/res/ColorStateList;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private E0()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    float-to-int v4, v3

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    const-string v5, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/material/slider/BaseSlider;->v0:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "stepSize"

    aput-object v7, v6, v1

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    float-to-int v4, v3

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/android/material/slider/BaseSlider;->v0:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "valueFrom"

    aput-object v7, v6, v1

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    float-to-int v4, v3

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_3

    sget-object v4, Lcom/google/android/material/slider/BaseSlider;->v0:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "valueTo"

    aput-object v6, v2, v1

    aput-object v3, v2, v0

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private F(FF)[F
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x5

    aput p2, v0, v1

    const/4 p2, 0x6

    aput p1, v0, p2

    const/4 p2, 0x7

    aput p1, v0, p2

    return-object v0
.end method

.method private G()F
    .locals 6

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->s0:F

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->n0(F)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    :cond_0
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    sub-float/2addr v2, v3

    float-to-double v4, v2

    mul-double/2addr v0, v4

    float-to-double v2, v3

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private H()F
    .locals 3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->s0:F

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    :cond_0
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private I()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private J(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->h(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private K()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private L()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static M(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private N(D)Z
    .locals 2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    invoke-virtual {v0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private O(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/material/slider/BaseSlider;->M(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->L()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private Q()Z
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Lcom/google/android/material/internal/f0;->j(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private R(Landroid/content/res/Resources;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->s:I

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_thumb_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->t:I

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->u:I

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_tick_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->v:I

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_tick_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_tick_min_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->M:I

    return-void
.end method

.method private S()V
    .locals 7

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->w0()V

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->W:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->W:[F

    :cond_2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->W:[F

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v4, v4

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->m()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private T(Landroid/graphics/Canvas;II)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->a0(F)F

    move-result v1

    int-to-float p2, p2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:I

    sub-int v1, p2, v0

    int-to-float v3, v1

    sub-int v1, p3, v0

    int-to-float v4, v1

    add-int v1, p2, v0

    int-to-float v5, v1

    add-int/2addr v0, p3

    int-to-float v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_0
    int-to-float p2, p2

    int-to-float p3, p3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private U(Landroid/graphics/Canvas;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->D0(F)F

    move-result v0

    int-to-float v2, p2

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->D0(F)F

    move-result v0

    int-to-float p2, p2

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private V(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->a0:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->B()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->W:[F

    array-length v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->W:[F

    array-length v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v6, v5

    mul-float/2addr v0, v6

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->W:[F

    mul-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    :cond_1
    if-gt v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->W:[F

    mul-int/lit8 v4, v2, 0x2

    sub-int v2, v0, v2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    :cond_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->W:[F

    array-length v2, v1

    if-ge v0, v2, :cond_3

    array-length v2, v1

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private W()Z
    .locals 6

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->t:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->u:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->b0:I

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->v:I

    sub-int/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->c0:I

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    sub-int/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->s:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v5, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    if-ne v0, v5, :cond_0

    return v1

    :cond_0
    iput v5, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->u0(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private X()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    const/4 v0, 0x1

    return v0
.end method

.method private Y(I)Z
    .locals 11

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    int-to-long v1, v0

    int-to-long v3, p1

    add-long v5, v1, v3

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    int-to-long v9, p1

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Ld1/a;->c(JJJ)J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r0()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v1
.end method

.method private Z(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->Y(I)Z

    move-result p1

    return p1
.end method

.method public static synthetic a(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->s0()V

    return-void
.end method

.method private a0(F)F
    .locals 2

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method static synthetic b(Lcom/google/android/material/slider/BaseSlider;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    return-object p0
.end method

.method private b0(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 3

    const/16 v0, 0x3d

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 p2, 0x42

    if-eq p1, p2, :cond_2

    const/16 p2, 0x51

    if-eq p1, p2, :cond_1

    const/16 p2, 0x45

    if-eq p1, p2, :cond_0

    const/16 p2, 0x46

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->Z(I)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->Z(I)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->Y(I)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->Y(I)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    :pswitch_2
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->Y(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->Y(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/android/material/slider/BaseSlider;)Lcom/google/android/material/slider/BaseSlider$d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/BaseSlider$d;

    return-object p0
.end method

.method private c0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method static synthetic d(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->A(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method static synthetic e(Lcom/google/android/material/slider/BaseSlider;IF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->o0(IF)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r0()V

    return-void
.end method

.method private f0(Lcb/a;F)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->a0(F)F

    move-result p2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    int-to-float v1, v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    invoke-virtual {p1}, Lcb/a;->getIntrinsicWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->m()I

    move-result p2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->M:I

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->F:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Lcb/a;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p1}, Lcb/a;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/google/android/material/internal/f0;->j(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/google/android/material/internal/d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic g(Lcom/google/android/material/slider/BaseSlider;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->l(I)F

    move-result p0

    return p0
.end method

.method private g0(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    sget-object v2, Lcom/google/android/material/R$styleable;->Slider:[I

    sget v4, Lcom/google/android/material/slider/BaseSlider;->w0:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/b0;->i(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->Slider_labelStyle:I

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->k:I

    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    iget p3, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Float;

    aput-object p3, v2, v6

    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v2, 0x30

    invoke-static {p3, v2}, Lcom/google/android/material/internal/f0;->g(Landroid/content/Context;I)F

    move-result p3

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float p3, v2

    sget v2, Lcom/google/android/material/R$styleable;->Slider_minTouchTargetSize:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget v2, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->Slider_trackColorInactive:I

    :goto_0
    if-eqz p3, :cond_1

    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_1

    :cond_1
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColorActive:I

    :goto_1
    invoke-static {p1, p2, v2}, Lxa/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    sget v2, Lcom/google/android/material/R$color;->material_slider_inactive_track_color:I

    invoke-static {p1, v2}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1, p2, p3}, Lxa/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    sget p3, Lcom/google/android/material/R$color;->material_slider_active_track_color:I

    invoke-static {p1, p3}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_3
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    invoke-static {p1, p2, p3}, Lxa/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v2, p3}, Lab/i;->d0(Landroid/content/res/ColorStateList;)V

    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    invoke-static {p1, p2, p3}, Lxa/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    sget p3, Lcom/google/android/material/R$styleable;->Slider_haloColor:I

    invoke-static {p1, p2, p3}, Lxa/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    sget p3, Lcom/google/android/material/R$color;->material_slider_halo_color:I

    invoke-static {p1, p3}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_4
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickVisible:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/slider/BaseSlider;->a0:Z

    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    sget v2, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_5

    :cond_6
    sget v2, Lcom/google/android/material/R$styleable;->Slider_tickColorInactive:I

    :goto_5
    if-eqz p3, :cond_7

    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_6

    :cond_7
    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickColorActive:I

    :goto_6
    invoke-static {p1, p2, v2}, Lxa/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    sget v2, Lcom/google/android/material/R$color;->material_slider_inactive_tick_marks_color:I

    invoke-static {p1, v2}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_7
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1, p2, p3}, Lxa/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_9

    goto :goto_8

    :cond_9
    sget p3, Lcom/google/android/material/R$color;->material_slider_active_tick_marks_color:I

    invoke-static {p1, p3}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_8
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbTrackGapSize:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbTrackGapSize(I)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_trackStopIndicatorSize:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackStopIndicatorSize(I)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_trackInsideCornerSize:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInsideCornerSize(I)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbWidth:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    sget v2, Lcom/google/android/material/R$styleable;->Slider_thumbHeight:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbWidth(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbHeight(I)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_trackHeight:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_tickRadiusActive:I

    iget p3, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveRadius(I)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_tickRadiusInactive:I

    iget p3, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveRadius(I)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_labelBehavior:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    sget p1, Lcom/google/android/material/R$styleable;->Slider_android_enabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0, v6}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    :cond_a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private h(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->F:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->F:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-void
.end method

.method private h0(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->j:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;-><init>(Lcom/google/android/material/slider/BaseSlider;Lcom/google/android/material/slider/BaseSlider$a;)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->j:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->j:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->setVirtualViewId(I)V

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->j:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private i(Lcb/a;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/material/internal/f0;->j(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcb/a;->C0(Landroid/view/View;)V

    return-void
.end method

.method private i0(Lcb/a;F)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->A(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcb/a;->E0(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->f0(Lcb/a;F)V

    invoke-static {p0}, Lcom/google/android/material/internal/f0;->k(Landroid/view/View;)Lcom/google/android/material/internal/d0;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/material/internal/d0;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private j(I)Ljava/lang/Float;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->f0:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->l(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->k()F

    move-result v0

    :goto_0
    const/16 v1, 0x15

    if-eq p1, v1, :cond_5

    const/16 v1, 0x16

    if-eq p1, v1, :cond_3

    const/16 v1, 0x45

    if-eq p1, v1, :cond_2

    const/16 v1, 0x46

    if-eq p1, v1, :cond_1

    const/16 v1, 0x51

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    neg-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result p1

    if-eqz p1, :cond_4

    neg-float v0, v0

    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    neg-float v0, v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method private j0(Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->g0:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r0()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->o()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->s()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one value must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k()F
    .locals 2

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    return v0
.end method

.method private k0()Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l(I)F
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->k()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    int-to-float p1, p1

    cmpg-float v2, v1, p1

    if-gtz v2, :cond_0

    return v0

    :cond_0
    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    return p1
.end method

.method private l0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->e0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private m()I
    .locals 4

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->k0()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcb/a;

    invoke-virtual {v1}, Lcb/a;->getIntrinsicHeight()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    return v0
.end method

.method private m0(F)Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/slider/BaseSlider;->o0(IF)Z

    move-result p1

    return p1
.end method

.method private n(Z)Landroid/animation/ValueAnimator;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->p:Landroid/animation/ValueAnimator;

    :goto_1
    invoke-static {v3, v2}, Lcom/google/android/material/slider/BaseSlider;->C(Landroid/animation/ValueAnimator;F)F

    move-result v2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/android/material/slider/BaseSlider;->x0:I

    const/16 v2, 0x53

    invoke-static {p1, v1, v2}, Lwa/j;->f(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/slider/BaseSlider;->z0:I

    sget-object v3, Loa/a;->e:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, v3}, Lwa/j;->g(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/android/material/slider/BaseSlider;->y0:I

    const/16 v2, 0x75

    invoke-static {p1, v1, v2}, Lwa/j;->f(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/slider/BaseSlider;->A0:I

    sget-object v3, Loa/a;->c:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, v3}, Lwa/j;->g(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    :goto_3
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/google/android/material/slider/BaseSlider$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$a;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private n0(F)D
    .locals 5

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, v0

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1

    :cond_0
    float-to-double v0, p1

    return-wide v0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcb/a;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->p(Lcb/a;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->k:I

    invoke-static {v0, v1, v2, v3}, Lcb/a;->w0(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcb/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->i(Lcb/a;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcb/a;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Lab/i;->o0(F)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method private o0(IF)Z
    .locals 4

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->D(IF)F

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->r(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private p(Lcb/a;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/material/internal/f0;->k(Landroid/view/View;)Lcom/google/android/material/internal/d0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/material/internal/d0;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/google/android/material/internal/f0;->j(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcb/a;->y0(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private p0()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->G()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->m0(F)Z

    move-result v0

    return v0
.end method

.method private q(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    sub-float v1, v0, v1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    return p1
.end method

.method private r(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/a;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/material/slider/a;->a(Ljava/lang/Object;FZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->i:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->h0(I)V

    :cond_1
    return-void
.end method

.method private r0()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->a0(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->m()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->G:I

    sub-int v4, v1, v3

    sub-int v5, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-static {v0, v4, v5, v1, v2}, La1/a;->l(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/a;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, p0, v3, v4}, Lcom/google/android/material/slider/a;->a(Ljava/lang/Object;FZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private s0()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->x()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->y()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected labelBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->y()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->x()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->y()V

    :goto_0
    return-void
.end method

.method private t(Landroid/graphics/Canvas;II)V
    .locals 11

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->B()[F

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v2, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-float p2, p2

    mul-float/2addr v4, p2

    add-float v8, v2, v4

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    mul-float/2addr v0, p2

    add-float v6, v1, v0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->I()Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p2, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->NONE:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->RIGHT:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->LEFT:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->D0(F)F

    move-result v6

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->D0(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result v1

    if-eqz v1, :cond_3

    move v8, v6

    move v6, v0

    goto :goto_1

    :cond_3
    move v8, v0

    :cond_4
    :goto_1
    sget-object v0, Lcom/google/android/material/slider/BaseSlider$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    int-to-float v0, v0

    add-float/2addr v6, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v8, v0

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr v6, v0

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    :goto_2
    int-to-float v0, v0

    sub-float/2addr v8, v0

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    int-to-float v4, v0

    add-float/2addr v6, v4

    goto :goto_2

    :goto_3
    cmpl-float v0, v6, v8

    if-ltz v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n0:Landroid/graphics/RectF;

    int-to-float v4, p3

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    int-to-float v7, v5

    div-float/2addr v7, v1

    sub-float v7, v4, v7

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v0, v6, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->n0:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/material/slider/BaseSlider;->t0(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    int-to-float v9, p3

    iget-object v10, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method private t0(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;)V
    .locals 8

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget-object v3, Lcom/google/android/material/slider/BaseSlider$c;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v3, v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    int-to-float v1, v0

    goto :goto_0

    :goto_1
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->m0:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float v7, v1, v0

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_3

    iget-object p4, p0, Lcom/google/android/material/slider/BaseSlider;->m0:Landroid/graphics/Path;

    invoke-direct {p0, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->F(FF)[F

    move-result-object v0

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p4, p3, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider;->m0:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->m0:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, p3, v4, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->m0:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v3, p4

    if-eq p4, v6, :cond_5

    if-eq p4, v5, :cond_4

    iget-object p4, p0, Lcom/google/android/material/slider/BaseSlider;->o0:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v0

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p4, v1, v2, v3, p3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lcom/google/android/material/slider/BaseSlider;->o0:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, v0

    sub-float v2, v1, v2

    iget v3, p3, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p4, v2, v3, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_5
    iget-object p4, p0, Lcom/google/android/material/slider/BaseSlider;->o0:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p4, v1, v3, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider;->o0:Landroid/graphics/RectF;

    invoke-virtual {p1, p3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    return-void
.end method

.method private u(Landroid/graphics/Canvas;II)V
    .locals 11

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->B()[F

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v2, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float v6, v2, v3

    add-int/2addr v1, p2

    int-to-float v1, v1

    cmpg-float v1, v6, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->n0:Landroid/graphics/RectF;

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    int-to-float v3, v3

    add-float/2addr v6, v3

    int-to-float v3, p3

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    int-to-float v7, v5

    div-float/2addr v7, v2

    sub-float v7, v3, v7

    iget v8, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    add-int/2addr v8, p2

    int-to-float p2, v8

    int-to-float v8, v5

    div-float/2addr v8, v2

    add-float/2addr p2, v8

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v3, v5

    invoke-virtual {v1, v6, v7, p2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->n0:Landroid/graphics/RectF;

    sget-object v3, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->RIGHT:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/google/android/material/slider/BaseSlider;->t0(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    int-to-float v9, p3

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    add-int/2addr v1, p2

    int-to-float v8, v1

    iget-object v10, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v1, p2

    const/4 v3, 0x0

    aget v0, v0, v3

    mul-float/2addr v0, v4

    add-float v6, v1, v0

    int-to-float p2, p2

    cmpl-float p2, v6, p2

    if-lez p2, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->I()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->n0:Landroid/graphics/RectF;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    int-to-float v3, v1

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    int-to-float p3, p3

    int-to-float v3, v1

    div-float/2addr v3, v2

    sub-float v3, p3, v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    int-to-float v4, v4

    sub-float/2addr v6, v4

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    invoke-virtual {p2, v0, v3, v6, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider;->n0:Landroid/graphics/RectF;

    sget-object v0, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->LEFT:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/slider/BaseSlider;->t0(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v4, p2

    int-to-float v7, p3

    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private u0(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->S()V

    return-void
.end method

.method private v(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    invoke-direct {p0, p4}, Lcom/google/android/material/slider/BaseSlider;->a0(F)F

    move-result p4

    int-to-float p2, p2

    mul-float/2addr p4, p2

    float-to-int p2, p4

    add-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    sub-float/2addr p2, p4

    int-to-float p3, p3

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private v0()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->X()Z

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->W()Z

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private w(Landroid/graphics/Canvas;II)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->q0:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/slider/BaseSlider;->v(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->r0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->r0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/Drawable;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/slider/BaseSlider;->v(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v1, v1

    invoke-direct {p0, v6}, Lcom/google/android/material/slider/BaseSlider;->a0(F)F

    move-result v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbRadius()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/slider/BaseSlider;->v(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private w0()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->g0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->z0()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->A0()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->y0()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->B0()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->x0()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->E0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->g0:Z

    :cond_0
    return-void
.end method

.method private x()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->n(Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->p:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcb/a;

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/material/slider/BaseSlider;->i0(Lcb/a;F)V

    :goto_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb/a;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->i0(Lcb/a;F)V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    aput-object v4, v5, v1

    const-string v0, "Not enough labels(%d) to display all the values(%d)"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private x0()V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    cmpl-float v6, v5, v4

    if-lez v6, :cond_2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->t0:I

    if-ne v4, v2, :cond_1

    cmpg-float v4, v3, v5

    if-ltz v4, :cond_0

    float-to-double v4, v3

    invoke-direct {p0, v4, v5}, Lcom/google/android/material/slider/BaseSlider;->N(D)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    aput-object v5, v7, v2

    aput-object v6, v7, v0

    const-string v0, "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    aput-object v5, v0, v2

    const-string v1, "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, "minSeparation(%s) must be greater or equal to 0"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private y()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->n(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/slider/BaseSlider$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/slider/BaseSlider$b;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private y0()V
    .locals 6

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->C0(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const-string v1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private z(I)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7fffffff

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->Z(I)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->Z(I)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->Y(I)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->Y(I)Z

    :goto_0
    return-void
.end method

.method private z0()V
    .locals 5

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "valueFrom(%s) must be smaller than valueTo(%s)"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final P()Z
    .locals 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public addOnChangeListener(Lcom/google/android/material/slider/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnSliderTouchListener(Lcom/google/android/material/slider/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearOnChangeListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearOnSliderTouchListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/BaseSlider$d;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/a;->i(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->l0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->k0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->j0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->i0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->k0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcb/a;

    invoke-virtual {v1}, Lab/i;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0}, Lab/i;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->h0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected e0()Z
    .locals 11

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->H()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->D0(F)F

    move-result v3

    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v6, v1

    :goto_0
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/google/android/material/slider/BaseSlider;->D0(F)F

    move-result v8

    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-lez v9, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->P()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    sub-float v9, v8, v3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    :goto_1
    move v9, v1

    goto :goto_2

    :cond_2
    move v9, v4

    goto :goto_2

    :cond_3
    sub-float v9, v8, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    goto :goto_1

    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_4

    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    goto :goto_3

    :cond_4
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_6

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v10, p0, Lcom/google/android/material/slider/BaseSlider;->r:I

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gez v8, :cond_5

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    return v4

    :cond_5
    if-eqz v9, :cond_6

    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    :goto_3
    move v5, v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    if-eq v0, v2, :cond_8

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    return v1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/BaseSlider$d;

    invoke-virtual {v0}, Landroidx/customview/widget/a;->k()I

    move-result v0

    return v0
.end method

.method public getActiveThumbIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    return v0
.end method

.method public getFocusedThumbIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    return v0
.end method

.method public getHaloRadius()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:I

    return v0
.end method

.method public getHaloTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelBehavior()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    return v0
.end method

.method protected getMinSeparation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStepSize()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    return v0
.end method

.method public getThumbElevation()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0}, Lab/i;->y()F

    move-result v0

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:I

    return v0
.end method

.method public getThumbRadius()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0}, Lab/i;->H()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getThumbStrokeWidth()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0}, Lab/i;->J()F

    move-result v0

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0}, Lab/i;->z()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getThumbTrackGapSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    return v0
.end method

.method public getTickActiveRadius()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->b0:I

    return v0
.end method

.method public getTickActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->i0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickInactiveRadius()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->c0:I

    return v0
.end method

.method public getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->j0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickTintList()Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->j0:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->i0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->i0:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    return v0
.end method

.method public getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackInsideCornerSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    return v0
.end method

.method public getTrackSidePadding()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    return v0
.end method

.method public getTrackStopIndicatorSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    return v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l0:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->k0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k0:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    return v0
.end method

.method public getValueFrom()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    return v0
.end method

.method public getValueTo()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    return v0
.end method

.method getValues()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasLabelFormatter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTickVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->a0:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->u0:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcb/a;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->i(Lcb/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->j:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcb/a;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->p(Lcb/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->u0:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->g0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->w0()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->S()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->m()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->u(Landroid/graphics/Canvas;II)V

    :cond_2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->t(Landroid/graphics/Canvas;II)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->V(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/BaseSlider;->U(Landroid/graphics/Canvas;I)V

    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->T(Landroid/graphics/Canvas;II)V

    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->s0()V

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->w(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/BaseSlider$d;

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    invoke-virtual {p1, p2}, Landroidx/customview/widget/a;->b(I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->z(I)V

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/BaseSlider$d;

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    invoke-virtual {p1, p2}, Landroidx/customview/widget/a;->I(I)Z

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->b0(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_0
    return p1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->f0:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->f0:Z

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->j(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->m0(F)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r0()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_4
    return v2

    :cond_5
    const/16 v0, 0x17

    if-eq p1, v0, :cond_9

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_9

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->Y(I)Z

    move-result p1

    return p1

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->Y(I)Z

    move-result p1

    return p1

    :cond_8
    return v1

    :cond_9
    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->f0:Z

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->k0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb/a;

    invoke-virtual {v0}, Lcb/a;->getIntrinsicHeight()I

    move-result v2

    :cond_1
    add-int/2addr p2, v2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->a:F

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->b:F

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    iget-object v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->j0(Ljava/util/ArrayList;)V

    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->d:F

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    iget-boolean p1, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    invoke-direct {v1, v0}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->a:F

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->b:F

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->c:Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->d:F

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->e:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->u0(I)V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r0()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->s0:F

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->s0:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->s0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_5

    goto/16 :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->O(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->N:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->r:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->c0()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->e0()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->p0()Z

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_5
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->O:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->O:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->r:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->O:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->r:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->e0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->c0()V

    :cond_6
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->p0()Z

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r0()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->I()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    if-eq v0, v1, :cond_7

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    if-eq v2, v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbWidth(I)V

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbTrackGapSize(I)V

    :cond_7
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->d0()V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_9
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->N:F

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->O(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->e0()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    iput-boolean v4, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->p0()Z

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->r0()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->I()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbWidth(I)V

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    div-int/2addr v1, v3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbTrackGapSize(I)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->c0()V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->O:Landroid/view/MotionEvent;

    return v4
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/google/android/material/internal/f0;->k(Landroid/view/View;)Lcom/google/android/material/internal/d0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb/a;

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/d0;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method q0(ILandroid/graphics/Rect;)V
    .locals 5

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->a0(F)F

    move-result p1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->d0:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->m()I

    move-result p1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->F:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v0, v1

    sub-int v4, p1, v2

    add-int/2addr v0, v1

    add-int/2addr p1, v2

    invoke-virtual {p2, v3, v4, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public removeOnChangeListener(Lcom/google/android/material/slider/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnSliderTouchListener(Lcom/google/android/material/slider/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setActiveThumbIndex(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->T:I

    return-void
.end method

.method setCustomThumbDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->J(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->q0:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->r0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method varargs setCustomThumbDrawablesForValues([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method varargs setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # [Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->q0:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->r0:Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->r0:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->J(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->U:I

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/BaseSlider$d;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/a;->I(I)Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHaloRadius(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->G:I

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->l0()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:I

    invoke-static {p1, v0}, Lcom/google/android/material/drawable/d;->m(Landroid/graphics/drawable/RippleDrawable;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h0:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->h0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->l0()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLabelBehavior(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/d;)V
    .locals 0

    return-void
.end method

.method protected setSeparationUnit(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->t0:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->g0:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setStepSize(F)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->V:F

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->g0:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v2, v4, v0

    const/4 p1, 0x2

    aput-object v3, v4, p1

    const-string p1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setThumbElevation(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->c0(F)V

    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    return-void
.end method

.method public setThumbHeight(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->F:I

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->q0:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->h(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->r0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->h(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->v0()V

    return-void
.end method

.method public setThumbHeightResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbHeight(I)V

    return-void
.end method

.method public setThumbRadius(I)V
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbWidth(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbHeight(I)V

    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    return-void
.end method

.method public setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->n0(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setThumbStrokeColorResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setThumbStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->o0(F)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setThumbStrokeWidthResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0}, Lab/i;->z()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->d0(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbTrackGapSize(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->H:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbWidth(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    invoke-static {}, Lab/n;->a()Lab/n$b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lab/n$b;->q(IF)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lab/n$b;->m()Lab/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lab/i;->setShapeAppearanceModel(Lab/n;)V

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->p0:Lab/i;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:I

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->F:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->q0:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->h(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->r0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->h(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->v0()V

    return-void
.end method

.method public setThumbWidthResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbWidth(I)V

    return-void
.end method

.method public setTickActiveRadius(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->b0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->b0:I

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->v0()V

    :cond_0
    return-void
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->i0:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->i0:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTickInactiveRadius(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->c0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->c0:I

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->v0()V

    :cond_0
    return-void
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->j0:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->j0:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTickVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->a0:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->a0:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k0:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->k0:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackHeight(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->C:I

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->K()V

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->v0()V

    :cond_0
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l0:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->l0:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->a:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->E(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackInsideCornerSize(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->L:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackStopIndicatorSize(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->K:I

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setValueFrom(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->g0:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setValueTo(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->R:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->g0:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method setValues(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->j0(Ljava/util/ArrayList;)V

    return-void
.end method

.method varargs setValues([Ljava/lang/Float;)V
    .locals 1
    .param p1    # [Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->j0(Ljava/util/ArrayList;)V

    return-void
.end method
