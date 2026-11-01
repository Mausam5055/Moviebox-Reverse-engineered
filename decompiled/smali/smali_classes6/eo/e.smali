.class public final Leo/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leo/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/view/GestureDetector;

.field private h:Leo/e$a;

.field private i:Z

.field private j:Landroid/view/View;

.field private final k:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leo/e;->c:Z

    new-instance v0, Leo/e$c;

    invoke-direct {v0, p0}, Leo/e$c;-><init>(Leo/e;)V

    iput-object v0, p0, Leo/e;->k:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p1, p0, Leo/e;->a:Landroid/content/Context;

    iput-object p2, p0, Leo/e;->b:Landroid/view/View;

    invoke-direct {p0}, Leo/e;->m()V

    return-void
.end method

.method public static synthetic a(Leo/e;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Leo/e;->n(Leo/e;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Leo/e;)Leo/e$a;
    .locals 0

    iget-object p0, p0, Leo/e;->h:Leo/e$a;

    return-object p0
.end method

.method public static final synthetic c(Leo/e;)Z
    .locals 0

    iget-boolean p0, p0, Leo/e;->i:Z

    return p0
.end method

.method public static final synthetic d(Leo/e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Leo/e;->j:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic e(Leo/e;)Z
    .locals 0

    iget-boolean p0, p0, Leo/e;->c:Z

    return p0
.end method

.method public static final synthetic f(Leo/e;)Z
    .locals 0

    iget-boolean p0, p0, Leo/e;->d:Z

    return p0
.end method

.method public static final synthetic g(Leo/e;)Z
    .locals 0

    iget-boolean p0, p0, Leo/e;->f:Z

    return p0
.end method

.method public static final synthetic h(Leo/e;)Z
    .locals 0

    iget-boolean p0, p0, Leo/e;->e:Z

    return p0
.end method

.method public static final synthetic i(Leo/e;Z)V
    .locals 0

    iput-boolean p1, p0, Leo/e;->d:Z

    return-void
.end method

.method public static final synthetic j(Leo/e;Z)V
    .locals 0

    iput-boolean p1, p0, Leo/e;->f:Z

    return-void
.end method

.method public static final synthetic k(Leo/e;Z)V
    .locals 0

    iput-boolean p1, p0, Leo/e;->e:Z

    return-void
.end method

.method private final m()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Leo/e;->a:Landroid/content/Context;

    iget-object v2, p0, Leo/e;->k:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Leo/e;->g:Landroid/view/GestureDetector;

    iget-object v0, p0, Leo/e;->b:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v1, Leo/d;

    invoke-direct {v1, p0}, Leo/d;-><init>(Leo/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Leo/e;->g:Landroid/view/GestureDetector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v1, Leo/e$b;

    invoke-direct {v1, p0}, Leo/e$b;-><init>(Leo/e;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method private static final n(Leo/e;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leo/e;->h:Leo/e$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Leo/e$a;->e()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Leo/e;->f:Z

    iput-boolean p1, p0, Leo/e;->e:Z

    iput-boolean p1, p0, Leo/e;->d:Z

    :goto_0
    iget-object p0, p0, Leo/e;->g:Landroid/view/GestureDetector;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Leo/e;->c:Z

    return-void
.end method

.method public final o(I)Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p(Landroid/view/View;I)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(I)Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final r(Landroid/view/View;I)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-le p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final s(Leo/e$a;)V
    .locals 0

    iput-object p1, p0, Leo/e;->h:Leo/e$a;

    return-void
.end method
