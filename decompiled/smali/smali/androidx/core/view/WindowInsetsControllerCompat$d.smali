.class Landroidx/core/view/WindowInsetsControllerCompat$d;
.super Landroidx/core/view/WindowInsetsControllerCompat$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Landroidx/core/view/WindowInsetsControllerCompat;

.field final b:Landroid/view/WindowInsetsController;

.field final c:Landroidx/core/view/SoftwareKeyboardControllerCompat;

.field private final d:Landroidx/collection/x0;

.field protected e:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 1

    invoke-static {p1}, Landroidx/core/view/t2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/core/view/WindowInsetsControllerCompat$d;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->e:Landroid/view/Window;

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 1

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$g;-><init>()V

    new-instance v0, Landroidx/collection/x0;

    invoke-direct {v0}, Landroidx/collection/x0;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->d:Landroidx/collection/x0;

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->a:Landroidx/core/view/WindowInsetsControllerCompat;

    iput-object p3, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->c:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    return-void
.end method

.method public static synthetic l(Landroidx/core/view/WindowInsetsControllerCompat$d;Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;Landroid/view/WindowInsetsController;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/WindowInsetsControllerCompat$d;->m(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method private synthetic m(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;Landroid/view/WindowInsetsController;I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->a:Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-interface {p1, p2, p3}, Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroidx/core/view/WindowInsetsControllerCompat;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->d:Landroidx/collection/x0;

    invoke-virtual {v0, p1}, Landroidx/collection/x0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/core/view/y2;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/y2;-><init>(Landroidx/core/view/WindowInsetsControllerCompat$d;Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V

    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->d:Landroidx/collection/x0;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v0}, Landroidx/core/view/c0;->a(Landroid/view/WindowInsetsController;Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    return-void
.end method

.method b(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .locals 7

    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$d$a;

    invoke-direct {v6, p0, p6}, Landroidx/core/view/WindowInsetsControllerCompat$d$a;-><init>(Landroidx/core/view/WindowInsetsControllerCompat$d;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Landroidx/core/view/u2;->a(Landroid/view/WindowInsetsController;IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method c()I
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->e:Landroid/view/Window;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1538b9a6

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/x2;->a(Landroid/view/WindowInsetsController;)I

    move-result v0

    return v0
.end method

.method d(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->c:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-virtual {v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->hide()V

    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    invoke-static {v0, p1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/s2;->a(Landroid/view/WindowInsetsController;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0}, Landroidx/core/view/s2;->a(Landroid/view/WindowInsetsController;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method g(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->d:Landroidx/collection/x0;

    invoke-virtual {v0, p1}, Landroidx/collection/x0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/w2;->a(Ljava/lang/Object;)Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0, p1}, Landroidx/core/view/d0;->a(Landroid/view/WindowInsetsController;Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 2

    const/16 v0, 0x10

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$d;->n(I)V

    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v0, v0}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$d;->o(I)V

    :cond_2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$d;->n(I)V

    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v1, v1}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$d;->o(I)V

    :cond_2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method j(I)V
    .locals 3

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->e:Landroid/view/Window;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1538b9a6

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    const/16 v2, 0x800

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$d;->o(I)V

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$d;->n(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$d;->o(I)V

    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$d;->n(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x1800

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$d;->o(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {v0, p1}, Landroidx/core/view/v2;->a(Landroid/view/WindowInsetsController;I)V

    :goto_0
    return-void
.end method

.method k(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->c:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-virtual {v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->show()V

    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->b:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    invoke-static {v0, p1}, Landroidx/core/view/b0;->a(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method protected n(I)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected o(I)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
