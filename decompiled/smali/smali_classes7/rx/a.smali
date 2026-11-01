.class public final Lrx/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/view/ScaleGestureDetector;

.field private final d:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrx/c;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoFloatGestureListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lrx/a;->b:Landroid/os/Handler;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lrx/a$b;

    invoke-direct {v1, p2, p0}, Lrx/a$b;-><init>(Lrx/c;Lrx/a;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lrx/a;->c:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lrx/a$a;

    invoke-direct {v1, p0, p2}, Lrx/a$a;-><init>(Lrx/a;Lrx/c;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lrx/a;->d:Landroid/view/GestureDetector;

    return-void
.end method

.method public static final synthetic a(Lrx/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lrx/a;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic b(Lrx/a;)Z
    .locals 0

    iget-boolean p0, p0, Lrx/a;->a:Z

    return p0
.end method

.method public static final synthetic c(Lrx/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lrx/a;->a:Z

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrx/a;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lrx/a;->d:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

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
