.class public final Lcom/transsion/baseui/widget/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/widget/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/view/GestureDetector;

.field private i:Lcom/transsion/baseui/widget/f$a;

.field private j:Z

.field private k:Landroid/view/View;

.field private final l:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/transsion/baseui/widget/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/baseui/widget/f;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/baseui/widget/f;->d:Z

    new-instance v0, Lcom/transsion/baseui/widget/f$c;

    invoke-direct {v0, p0}, Lcom/transsion/baseui/widget/f$c;-><init>(Lcom/transsion/baseui/widget/f;)V

    iput-object v0, p0, Lcom/transsion/baseui/widget/f;->l:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p1, p0, Lcom/transsion/baseui/widget/f;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/baseui/widget/f;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/baseui/widget/f;->m()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/baseui/widget/f;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baseui/widget/f;->n(Lcom/transsion/baseui/widget/f;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/baseui/widget/f;->i:Lcom/transsion/baseui/widget/f$a;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->j:Z

    return p0
.end method

.method public static final synthetic d(Lcom/transsion/baseui/widget/f;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/baseui/widget/f;->k:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->d:Z

    return p0
.end method

.method public static final synthetic f(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->e:Z

    return p0
.end method

.method public static final synthetic g(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->g:Z

    return p0
.end method

.method public static final synthetic h(Lcom/transsion/baseui/widget/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/baseui/widget/f;->f:Z

    return p0
.end method

.method public static final synthetic i(Lcom/transsion/baseui/widget/f;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->e:Z

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/baseui/widget/f;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->g:Z

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/baseui/widget/f;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->f:Z

    return-void
.end method

.method private final m()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/transsion/baseui/widget/f;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/baseui/widget/f;->l:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/baseui/widget/f;->h:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/transsion/baseui/widget/f;->c:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/baseui/widget/e;

    invoke-direct {v1, p0}, Lcom/transsion/baseui/widget/e;-><init>(Lcom/transsion/baseui/widget/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/baseui/widget/f;->h:Landroid/view/GestureDetector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/baseui/widget/f$b;

    invoke-direct {v1, p0}, Lcom/transsion/baseui/widget/f$b;-><init>(Lcom/transsion/baseui/widget/f;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method private static final n(Lcom/transsion/baseui/widget/f;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/baseui/widget/f;->i:Lcom/transsion/baseui/widget/f$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/baseui/widget/f$a;->e()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->g:Z

    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->f:Z

    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->e:Z

    :goto_0
    iget-object p0, p0, Lcom/transsion/baseui/widget/f;->h:Landroid/view/GestureDetector;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baseui/widget/f;->d:Z

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

.method public final s(Lcom/transsion/baseui/widget/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/widget/f;->i:Lcom/transsion/baseui/widget/f$a;

    return-void
.end method
