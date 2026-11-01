.class Landroidx/core/view/insets/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/insets/f$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/ArrayList;

.field private c:Lz0/c;

.field private d:Lz0/c;

.field private e:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    sget-object v0, Lz0/c;->e:Lz0/c;

    iput-object v0, p0, Landroidx/core/view/insets/f;->c:Lz0/c;

    iput-object v0, p0, Landroidx/core/view/insets/f;->d:Lz0/c;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Landroidx/core/view/insets/f;->e:I

    new-instance v0, Landroidx/core/view/insets/f$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/core/view/insets/f$a;-><init>(Landroidx/core/view/insets/f;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroidx/core/view/insets/f;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Landroidx/core/view/insets/d;

    invoke-direct {v1, p0}, Landroidx/core/view/insets/d;-><init>(Landroidx/core/view/insets/f;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    new-instance v1, Landroidx/core/view/insets/f$b;

    invoke-direct {v1, p0, v2}, Landroidx/core/view/insets/f$b;-><init>(Landroidx/core/view/insets/f;I)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a(Landroidx/core/view/insets/f;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/insets/f;->l()V

    return-void
.end method

.method public static synthetic b(Landroidx/core/view/insets/f;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/insets/f;->m(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Landroidx/core/view/insets/f;)I
    .locals 0

    iget p0, p0, Landroidx/core/view/insets/f;->e:I

    return p0
.end method

.method static synthetic d(Landroidx/core/view/insets/f;I)I
    .locals 0

    iput p1, p0, Landroidx/core/view/insets/f;->e:I

    return p1
.end method

.method static synthetic e(Landroidx/core/view/insets/f;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Landroidx/core/view/insets/f;Landroidx/core/view/WindowInsetsCompat;)Lz0/c;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/insets/f;->i(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;

    move-result-object p0

    return-object p0
.end method

.method private i(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;
    .locals 2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object p1

    invoke-static {v0, p1}, Lz0/c;->b(Lz0/c;Lz0/c;)Lz0/c;

    move-result-object p1

    return-object p1
.end method

.method private j(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;
    .locals 2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    move-result-object v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    move-result-object p1

    invoke-static {v0, p1}, Lz0/c;->b(Lz0/c;Lz0/c;)Lz0/c;

    move-result-object p1

    return-object p1
.end method

.method private synthetic l()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/insets/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/core/view/insets/f;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic m(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    invoke-direct {p0, p2}, Landroidx/core/view/insets/f;->i(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;

    move-result-object p1

    invoke-direct {p0, p2}, Landroidx/core/view/insets/f;->j(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/view/insets/f;->c:Lz0/c;

    invoke-virtual {p1, v1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/core/view/insets/f;->d:Lz0/c;

    invoke-virtual {v0, v1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-object p1, p0, Landroidx/core/view/insets/f;->c:Lz0/c;

    iput-object v0, p0, Landroidx/core/view/insets/f;->d:Lz0/c;

    iget-object v1, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/insets/f$c;

    invoke-interface {v2, p1, v0}, Landroidx/core/view/insets/f$c;->c(Lz0/c;Lz0/c;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method


# virtual methods
.method g(Landroidx/core/view/insets/f$c;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/core/view/insets/f;->c:Lz0/c;

    iget-object v1, p0, Landroidx/core/view/insets/f;->d:Lz0/c;

    invoke-interface {p1, v0, v1}, Landroidx/core/view/insets/f$c;->c(Lz0/c;Lz0/c;)V

    iget v0, p0, Landroidx/core/view/insets/f;->e:I

    invoke-interface {p1, v0}, Landroidx/core/view/insets/f$c;->e(I)V

    return-void
.end method

.method h()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/insets/f;->a:Landroid/view/View;

    new-instance v1, Landroidx/core/view/insets/e;

    invoke-direct {v1, p0}, Landroidx/core/view/insets/e;-><init>(Landroidx/core/view/insets/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method k()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method n(Landroidx/core/view/insets/f$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
