.class public Lcom/google/android/material/internal/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/view/menu/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/s$h;,
        Lcom/google/android/material/internal/s$d;,
        Lcom/google/android/material/internal/s$f;,
        Lcom/google/android/material/internal/s$g;,
        Lcom/google/android/material/internal/s$e;,
        Lcom/google/android/material/internal/s$c;,
        Lcom/google/android/material/internal/s$b;,
        Lcom/google/android/material/internal/s$j;,
        Lcom/google/android/material/internal/s$k;,
        Lcom/google/android/material/internal/s$i;,
        Lcom/google/android/material/internal/s$l;
    }
.end annotation


# instance fields
.field private A:I

.field B:I

.field private C:I

.field final D:Landroid/view/View$OnClickListener;

.field private a:Lcom/google/android/material/internal/NavigationMenuView;

.field b:Landroid/widget/LinearLayout;

.field private c:Landroidx/appcompat/view/menu/l$a;

.field d:Landroidx/appcompat/view/menu/f;

.field private e:I

.field f:Lcom/google/android/material/internal/s$c;

.field g:Landroid/view/LayoutInflater;

.field h:I

.field i:Landroid/content/res/ColorStateList;

.field j:I

.field k:Z

.field l:Landroid/content/res/ColorStateList;

.field m:Landroid/content/res/ColorStateList;

.field n:Landroid/graphics/drawable/Drawable;

.field o:Landroid/graphics/drawable/RippleDrawable;

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:Z

.field y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/s;->h:I

    iput v0, p0, Lcom/google/android/material/internal/s;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/s;->k:Z

    iput-boolean v0, p0, Lcom/google/android/material/internal/s;->y:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/internal/s;->C:I

    new-instance v0, Lcom/google/android/material/internal/s$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/s$a;-><init>(Lcom/google/android/material/internal/s;)V

    iput-object v0, p0, Lcom/google/android/material/internal/s;->D:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private C()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/internal/s;->q()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/google/android/material/internal/s;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/s;->z:I

    return p0
.end method

.method private b0()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/material/internal/s;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/s;->y:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/internal/s;->A:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->w:I

    return v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->v:I

    return v0
.end method

.method public D(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/s;->g:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->l(Landroid/view/View;)V

    return-object p1
.end method

.method public E(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/material/internal/s;->C()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget v0, p0, Lcom/google/android/material/internal/s;->A:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public F(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/internal/s;->y:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/internal/s;->y:Z

    invoke-direct {p0}, Lcom/google/android/material/internal/s;->b0()V

    :cond_0
    return-void
.end method

.method public G(Landroidx/appcompat/view/menu/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->f:Lcom/google/android/material/internal/s$c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s$c;->s(Landroidx/appcompat/view/menu/h;)V

    return-void
.end method

.method public H(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->u:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public I(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->t:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->e:I

    return-void
.end method

.method public K(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/s;->n:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public L(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/s;->o:Landroid/graphics/drawable/RippleDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public M(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->p:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public N(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->r:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public O(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->s:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/s;->s:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/s;->x:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    :cond_0
    return-void
.end method

.method public P(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/s;->m:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public Q(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->z:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->j:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public S(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/s;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public T(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/s;->l:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public U(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->q:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public V(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/internal/s;->C:I

    iget-object v0, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public W(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/s;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public X(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->w:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public Y(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->v:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public Z(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/s;->h:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public a0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->f:Lcom/google/android/material/internal/s$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s$c;->t(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/f;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->c:Landroidx/appcompat/view/menu/l$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/l$a;->b(Landroidx/appcompat/view/menu/f;Z)V

    :cond_0
    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/internal/s;->f:Lcom/google/android/material/internal/s$c;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/s$c;->q(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android:menu:header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public f(Landroidx/appcompat/view/menu/q;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/s;->f:Lcom/google/android/material/internal/s$c;

    if-eqz v1, :cond_1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v1}, Lcom/google/android/material/internal/s$c;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->e:I

    return v0
.end method

.method public h(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/internal/s;->f:Lcom/google/android/material/internal/s$c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/internal/s$c;->u()V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/s;->g:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/google/android/material/internal/s;->d:Landroidx/appcompat/view/menu/f;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$dimen;->design_navigation_separator_vertical_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/s;->B:I

    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public m(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/internal/s;->A:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/google/android/material/internal/s;->A:I

    invoke-direct {p0}, Lcom/google/android/material/internal/s;->b0()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public n()Landroidx/appcompat/view/menu/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->f:Lcom/google/android/material/internal/s$c;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s$c;->k()Landroidx/appcompat/view/menu/h;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->u:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->t:I

    return v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public r(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public s()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->p:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->r:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->z:I

    return v0
.end method

.method public w()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public x()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/s;->q:I

    return v0
.end method

.method public z(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/m;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/s;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object p1, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    new-instance v0, Lcom/google/android/material/internal/s$h;

    iget-object v1, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/internal/s$h;-><init>(Lcom/google/android/material/internal/s;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/o;)V

    iget-object p1, p0, Lcom/google/android/material/internal/s;->f:Lcom/google/android/material/internal/s$c;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/material/internal/s$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/s$c;-><init>(Lcom/google/android/material/internal/s;)V

    iput-object p1, p0, Lcom/google/android/material/internal/s;->f:Lcom/google/android/material/internal/s$c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    :cond_0
    iget p1, p0, Lcom/google/android/material/internal/s;->C:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/s;->g:Landroid/view/LayoutInflater;

    sget v0, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    iget-object v1, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/internal/s;->b:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v0, p0, Lcom/google/android/material/internal/s;->f:Lcom/google/android/material/internal/s$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/s;->a:Lcom/google/android/material/internal/NavigationMenuView;

    return-object p1
.end method
