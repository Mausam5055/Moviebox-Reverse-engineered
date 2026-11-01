.class public abstract Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;,
        Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\'\u0018\u00002\u00020\u0001:\u0002|}B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J3\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0003J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008(\u0010&J\u000f\u0010)\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0003J\u000f\u0010*\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0003J\u000f\u0010+\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0003J\u000f\u0010,\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008,\u0010\u0003J\u0019\u0010/\u001a\u00020\u00062\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u0019\u00102\u001a\u0002012\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016\u00a2\u0006\u0004\u00082\u00103J!\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u00020\t2\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00087\u0010\u0003J\u0017\u00108\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u00088\u0010\u0008J\u000f\u00109\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u00089\u0010\u0003J\u000f\u0010:\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008:\u0010\u001fJ\u000f\u0010<\u001a\u00020;H\u0014\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010@\u001a\u00020\u00062\u0006\u0010?\u001a\u00020>H\u0014\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u00020;H\u0014\u00a2\u0006\u0004\u0008B\u0010=J\u000f\u0010C\u001a\u00020;H\u0014\u00a2\u0006\u0004\u0008C\u0010=J\u000f\u0010D\u001a\u00020 H\u0014\u00a2\u0006\u0004\u0008D\u0010\"J\u000f\u0010E\u001a\u00020;H\u0014\u00a2\u0006\u0004\u0008E\u0010=J\u000f\u0010F\u001a\u00020;H\u0014\u00a2\u0006\u0004\u0008F\u0010=J\u000f\u0010G\u001a\u00020;H\u0014\u00a2\u0006\u0004\u0008G\u0010=J\u0011\u0010H\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008H\u0010IJ\u0011\u0010J\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008J\u0010IJ\u001f\u0010M\u001a\u00020\u00062\u0006\u0010K\u001a\u00020 2\u0006\u0010L\u001a\u00020 H\u0014\u00a2\u0006\u0004\u0008M\u0010NJ\u000f\u0010O\u001a\u00020;H\u0014\u00a2\u0006\u0004\u0008O\u0010=J\u000f\u0010P\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008P\u0010\u0003J\u000f\u0010Q\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008Q\u0010\u0003R\u0018\u0010T\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0018\u0010X\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0018\u0010\\\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010_\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0016\u0010b\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0016\u0010d\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010aR\u0016\u0010g\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u0018\u0010k\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u001e\u0010o\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u001b\u0010s\u001a\u00020;8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008p\u0010q\u001a\u0004\u0008r\u0010=R\u001a\u0010y\u001a\u00020t8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008u\u0010v\u001a\u0004\u0008w\u0010xR\u0016\u0010{\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010^\u00a8\u0006~"
    }
    d2 = {
        "Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/view/Window;",
        "window",
        "",
        "O0",
        "(Landroid/view/Window;)V",
        "Landroid/view/View;",
        "root",
        "l1",
        "(Landroid/view/View;)Landroid/view/View;",
        "P0",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "g1",
        "(Landroid/view/MotionEvent;Landroid/view/View;)Z",
        "p1",
        "target",
        "m1",
        "(Landroid/view/View;)V",
        "scrollView",
        "o1",
        "disallowParentIntercept",
        "captureOnDown",
        "requireNestedScrollAtTop",
        "e1",
        "(Landroid/view/MotionEvent;ZZZ)Z",
        "K0",
        "()Z",
        "",
        "M0",
        "()F",
        "k1",
        "currentRawY",
        "d1",
        "(F)V",
        "velocityY",
        "c1",
        "B0",
        "D0",
        "L0",
        "q1",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onStart",
        "N0",
        "F0",
        "f1",
        "",
        "V0",
        "()I",
        "Landroidx/core/view/WindowInsetsCompat;",
        "insets",
        "h1",
        "(Landroidx/core/view/WindowInsetsCompat;)V",
        "S0",
        "R0",
        "W0",
        "a1",
        "T0",
        "Y0",
        "Z0",
        "()Landroid/view/View;",
        "i1",
        "translationY",
        "progress",
        "j1",
        "(FF)V",
        "U0",
        "dismissAllowingStateLoss",
        "onDestroyView",
        "c",
        "Landroid/view/View;",
        "swipeTargetView",
        "Landroid/view/GestureDetector;",
        "d",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Landroid/view/VelocityTracker;",
        "e",
        "Landroid/view/VelocityTracker;",
        "velocityTracker",
        "f",
        "Z",
        "isDragging",
        "g",
        "F",
        "dragStartY",
        "h",
        "currentTranslationY",
        "i",
        "I",
        "activeTouchPointerId",
        "Landroid/animation/ValueAnimator;",
        "j",
        "Landroid/animation/ValueAnimator;",
        "currentAnimator",
        "Lkotlin/Function0;",
        "k",
        "Lkotlin/jvm/functions/Function0;",
        "onSwipeDismissListener",
        "l",
        "Lkotlin/Lazy;",
        "b1",
        "touchSlop",
        "Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;",
        "m",
        "Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;",
        "X0",
        "()Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;",
        "swipeConfig",
        "n",
        "outsideDismissTapConfigured",
        "a",
        "b",
        "BaseUI_psRelease"
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


# instance fields
.field private c:Landroid/view/View;

.field private d:Landroid/view/GestureDetector;

.field private e:Landroid/view/VelocityTracker;

.field private f:Z

.field private g:F

.field private h:F

.field private i:I

.field private j:Landroid/animation/ValueAnimator;

.field private k:Lkotlin/jvm/functions/Function0;

.field private final l:Lkotlin/Lazy;

.field private final m:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->i:I

    new-instance v0, Lck/l;

    invoke-direct {v0, p0}, Lck/l;-><init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->l:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;-><init>(FFJJFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->m:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f:Z

    return p0
.end method

.method private final B0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->c:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->dismissAllowingStateLoss()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->L0()V

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->X0()Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lck/k;

    invoke-direct {v4, v0, v1, v2}, Lck/k;-><init>(Landroid/view/View;FF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$c;

    invoke-direct {v0, p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$c;-><init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    iput-object v3, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->j:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final C0(Landroid/view/View;FFLandroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private final D0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->c:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->L0()V

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->X0()Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lck/m;

    invoke-direct {v3, v0, v1}, Lck/m;-><init>(Landroid/view/View;F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$d;

    invoke-direct {v1, v0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$d;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-object v2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->j:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final E0(Landroid/view/View;FLandroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private static final G0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/widget/FrameLayout;FLandroid/view/View;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    move-object v0, p1

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p0

    :goto_1
    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/16 v0, 0x50

    invoke-direct {p1, p2, p0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final H0(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-direct {p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->P0()V

    return-void
.end method

.method private static final I0(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-direct {p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->P0()V

    return-void
.end method

.method private static final J0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->P0()V

    return-void
.end method

.method private final K0()Z
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->Z0()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_0
    return v2
.end method

.method private final L0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->j:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final M0()F
    .locals 2

    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final O0(Landroid/view/Window;)V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string v1, "getDecorView(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private final P0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->n:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->V0()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v2, Lck/t;

    invoke-direct {v2, p0}, Lck/t;-><init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-boolean v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->n:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private static final Q0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->g1(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->dismissAllowingStateLoss()V

    return v2

    :cond_1
    return v1
.end method

.method private final b1()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final c1(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->h:F

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->X0()Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->h:F

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->b1()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->X0()Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->d()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->D0()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->B0()V

    :goto_1
    return-void
.end method

.method private final d1(F)V
    .locals 3

    iget v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->g:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->c:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->h:F

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    iget p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->h:F

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->l(FFF)F

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->X0()Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_2
    iget v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->h:F

    invoke-virtual {p0, v0, p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->j1(FF)V

    return-void
.end method

.method private final e1(Landroid/view/MotionEvent;ZZZ)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->j:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_e

    if-eq v0, v1, :cond_b

    const/4 p3, 0x2

    if-eq v0, p3, :cond_5

    const/4 p2, 0x3

    if-eq v0, p2, :cond_b

    const/4 p2, 0x6

    if-eq v0, p2, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    iget p4, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->i:I

    if-ne p3, p4, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-ge v1, p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->i:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    sub-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->g:F

    :cond_3
    iget-object p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f:Z

    return p1

    :cond_5
    iget-object p3, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e:Landroid/view/VelocityTracker;

    if-eqz p3, :cond_6

    invoke-virtual {p3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    iget v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->g:F

    sub-float/2addr p3, v0

    iget-boolean v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->b1()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_7

    return v2

    :cond_7
    if-eqz p4, :cond_8

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->K0()Z

    move-result p3

    if-nez p3, :cond_8

    return v2

    :cond_8
    iput-boolean v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f:Z

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->L0()V

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->c:Landroid/view/View;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    iget-boolean p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f:Z

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->d1(F)V

    return v1

    :cond_a
    return v2

    :cond_b
    iget-object p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_c
    iget-boolean p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f:Z

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->k1()V

    return v2

    :cond_d
    iput-boolean v2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f:Z

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->M0()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->c1(F)V

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->k1()V

    return v1

    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->i:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->g:F

    iput-boolean v2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f:Z

    iget-object p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    :cond_f
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_10

    invoke-virtual {p2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_10
    return p3
.end method

.method private final g1(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->R0()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->c:Landroid/view/View;

    :goto_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    add-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final k1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e:Landroid/view/VelocityTracker;

    return-void
.end method

.method private final l1(Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->a1()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->S0()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method private final m1(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lck/s;

    invoke-direct {v0, p0}, Lck/s;-><init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->Q0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final n1(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p1, v0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e1(Landroid/view/MotionEvent;ZZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic o0(Landroid/view/View;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->E0(Landroid/view/View;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final o1(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$e;

    invoke-direct {v0, p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$e;-><init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    return-void
.end method

.method public static synthetic p0(Landroid/view/View;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->C0(Landroid/view/View;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final p1()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$b;

    invoke-direct {v2, p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$b;-><init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->d:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->Y0()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->m1(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->Z0()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->o1(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->i1()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->m1(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public static synthetic q0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->r1(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method private final q1()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lck/r;

    invoke-direct {v1, p0}, Lck/r;-><init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/widget/FrameLayout;FLandroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->G0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/widget/FrameLayout;FLandroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final r1(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, p2}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->h1(Landroidx/core/view/WindowInsetsCompat;)V

    return-object p2
.end method

.method public static synthetic s0(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->I0(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    return-void
.end method

.method private static final s1(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    return p0
.end method

.method public static synthetic t0(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->H0(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->s1(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)I

    move-result p0

    return p0
.end method

.method public static synthetic v0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->J0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->n1(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic x0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->B0()V

    return-void
.end method

.method public static final synthetic y0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->k:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic z0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/MotionEvent;ZZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->e1(Landroid/view/MotionEvent;ZZZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final F0()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->R0()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lck/n;

    invoke-direct {v1, p0}, Lck/n;-><init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->W0()F

    move-result v2

    new-instance v4, Lck/o;

    invoke-direct {v4, p0, v1, v2, v0}, Lck/o;-><init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/widget/FrameLayout;FLandroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->P0()V

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    new-instance v0, Lck/p;

    invoke-direct {v0, v4, p0}, Lck/p;-><init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    new-instance v0, Lck/q;

    invoke-direct {v0, v4, p0}, Lck/q;-><init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_1
    return-void
.end method

.method protected N0(Landroid/view/Window;)V
    .locals 3

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0xc000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->U0()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-static {p1, v0}, Lcom/gyf/immersionbar/h;->a(Landroid/view/Window;Z)V

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/l;->a(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method protected R0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected S0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected T0()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->S0()I

    move-result v0

    return v0
.end method

.method protected U0()I
    .locals 1

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected V0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected W0()F
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    return v0
.end method

.method protected X0()Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->m:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    return-object v0
.end method

.method protected Y0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected Z0()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a1()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->R0()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->S0()I

    move-result v0

    return v0
.end method

.method public dismissAllowingStateLoss()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method protected f1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected h1(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->T0()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->c:Landroid/view/View;

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object v1

    iget v1, v1, Lz0/c;->d:I

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object p1

    iget p1, p1, Lz0/c;->d:I

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected i1()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j1(FF)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/baseui/R$style;->SwipeDismissDialogTheme:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "onCreateDialog(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->f1()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    sget v1, Lcom/transsion/baseui/R$style;->BaseBottomDialogAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->N0(Landroid/view/Window;)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->n:Z

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->V0()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->L0()V

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->k1()V

    iput-object v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->d:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->c:Landroid/view/View;

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->N0(Landroid/view/Window;)V

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->O0(Landroid/view/Window;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->F0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->l1(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->p1()V

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->q1()V

    return-void
.end method
