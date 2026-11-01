.class public abstract Landroidx/transition/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/j$f;,
        Landroidx/transition/j$d;,
        Landroidx/transition/j$g;,
        Landroidx/transition/j$e;
    }
.end annotation


# static fields
.field private static final J:[Landroid/animation/Animator;

.field private static final K:[I

.field private static final L:Landroidx/transition/g;

.field private static M:Ljava/lang/ThreadLocal;


# instance fields
.field private A:Z

.field B:Z

.field private C:Landroidx/transition/j;

.field private D:Ljava/util/ArrayList;

.field E:Ljava/util/ArrayList;

.field F:Landroidx/transition/t;

.field private G:Landroidx/transition/j$e;

.field private H:Landroidx/collection/a;

.field private I:Landroidx/transition/g;

.field private a:Ljava/lang/String;

.field private b:J

.field c:J

.field private d:Landroid/animation/TimeInterpolator;

.field e:Ljava/util/ArrayList;

.field f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Ljava/util/ArrayList;

.field private o:Ljava/util/ArrayList;

.field private p:Landroidx/transition/x;

.field private q:Landroidx/transition/x;

.field r:Landroidx/transition/u;

.field private s:[I

.field private t:Ljava/util/ArrayList;

.field private u:Ljava/util/ArrayList;

.field private v:[Landroidx/transition/j$f;

.field w:Z

.field x:Ljava/util/ArrayList;

.field private y:[Landroid/animation/Animator;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/animation/Animator;

    sput-object v0, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/transition/j;->K:[I

    new-instance v0, Landroidx/transition/j$a;

    invoke-direct {v0}, Landroidx/transition/j$a;-><init>()V

    sput-object v0, Landroidx/transition/j;->L:Landroidx/transition/g;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/j;->M:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/j;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/j;->b:J

    iput-wide v0, p0, Landroidx/transition/j;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/j;->i:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/j;->j:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/j;->l:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/j;->m:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/j;->n:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/j;->o:Ljava/util/ArrayList;

    new-instance v1, Landroidx/transition/x;

    invoke-direct {v1}, Landroidx/transition/x;-><init>()V

    iput-object v1, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    new-instance v1, Landroidx/transition/x;

    invoke-direct {v1}, Landroidx/transition/x;-><init>()V

    iput-object v1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    iput-object v0, p0, Landroidx/transition/j;->r:Landroidx/transition/u;

    sget-object v1, Landroidx/transition/j;->K:[I

    iput-object v1, p0, Landroidx/transition/j;->s:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/j;->w:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    sget-object v2, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    iput-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    iput v1, p0, Landroidx/transition/j;->z:I

    iput-boolean v1, p0, Landroidx/transition/j;->A:Z

    iput-boolean v1, p0, Landroidx/transition/j;->B:Z

    iput-object v0, p0, Landroidx/transition/j;->C:Landroidx/transition/j;

    iput-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    sget-object v0, Landroidx/transition/j;->L:Landroidx/transition/g;

    iput-object v0, p0, Landroidx/transition/j;->I:Landroidx/transition/g;

    return-void
.end method

.method private static I(Landroidx/transition/w;Landroidx/transition/w;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroidx/transition/w;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Landroidx/transition/w;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, p2

    :goto_1
    return p0
.end method

.method private J(Landroidx/collection/a;Landroidx/collection/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/w;

    invoke-virtual {p2, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/w;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v6, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private K(Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/collection/x0;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/w;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/transition/w;->b:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/collection/x0;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/w;

    iget-object v3, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private L(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/x;Landroidx/collection/x;)V
    .locals 7

    invoke-virtual {p3}, Landroidx/collection/x;->n()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p3, v1}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3, v1}, Landroidx/collection/x;->j(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/w;

    invoke-virtual {p2, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/w;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v6, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private M(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 7

    invoke-virtual {p3}, Landroidx/collection/x0;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p3, v1}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3, v1}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/w;

    invoke-virtual {p2, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/w;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v6, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private N(Landroidx/transition/x;Landroidx/transition/x;)V
    .locals 5

    new-instance v0, Landroidx/collection/a;

    iget-object v1, p1, Landroidx/transition/x;->a:Landroidx/collection/a;

    invoke-direct {v0, v1}, Landroidx/collection/a;-><init>(Landroidx/collection/x0;)V

    new-instance v1, Landroidx/collection/a;

    iget-object v2, p2, Landroidx/transition/x;->a:Landroidx/collection/a;

    invoke-direct {v1, v2}, Landroidx/collection/a;-><init>(Landroidx/collection/x0;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/transition/j;->s:[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Landroidx/transition/x;->c:Landroidx/collection/x;

    iget-object v4, p2, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/j;->L(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/x;Landroidx/collection/x;)V

    goto :goto_1

    :cond_1
    iget-object v3, p1, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/j;->J(Landroidx/collection/a;Landroidx/collection/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    :cond_2
    iget-object v3, p1, Landroidx/transition/x;->d:Landroidx/collection/a;

    iget-object v4, p2, Landroidx/transition/x;->d:Landroidx/collection/a;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/j;->M(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/transition/j;->K(Landroidx/collection/a;Landroidx/collection/a;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, v1}, Landroidx/transition/j;->c(Landroidx/collection/a;Landroidx/collection/a;)V

    return-void
.end method

.method private O(Landroidx/transition/j;Landroidx/transition/j$g;Z)V
    .locals 5

    iget-object v0, p0, Landroidx/transition/j;->C:Landroidx/transition/j;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1, p2, p3}, Landroidx/transition/j;->O(Landroidx/transition/j;Landroidx/transition/j$g;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/transition/j;->v:[Landroidx/transition/j$f;

    if-nez v1, :cond_1

    new-array v1, v0, [Landroidx/transition/j$f;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/transition/j;->v:[Landroidx/transition/j$f;

    iget-object v3, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/transition/j$f;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    invoke-interface {p2, v4, p1, p3}, Landroidx/transition/j$g;->a(Landroidx/transition/j$f;Landroidx/transition/j;Z)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Landroidx/transition/j;->v:[Landroidx/transition/j$f;

    :cond_3
    return-void
.end method

.method private V(Landroid/animation/Animator;Landroidx/collection/a;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/transition/j$b;

    invoke-direct {v0, p0, p2}, Landroidx/transition/j$b;-><init>(Landroidx/transition/j;Landroidx/collection/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Landroidx/transition/j;->e(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method private c(Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroidx/collection/x0;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/w;

    iget-object v4, v2, Landroidx/transition/w;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroidx/collection/x0;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    invoke-virtual {p2, v0}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/w;

    iget-object v1, p1, Landroidx/transition/w;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V
    .locals 3

    iget-object v0, p0, Landroidx/transition/x;->a:Landroidx/collection/a;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    iget-object v1, p0, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v1, p0, Landroidx/transition/x;->d:Landroidx/collection/a;

    invoke-virtual {v1, p2}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/transition/x;->d:Landroidx/collection/a;

    invoke-virtual {v1, p2, v0}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/transition/x;->d:Landroidx/collection/a;

    invoke-virtual {v1, p2, p1}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object p2, p0, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {p2, v1, v2}, Landroidx/collection/x;->g(J)I

    move-result p2

    if-ltz p2, :cond_4

    iget-object p1, p0, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {p1, v1, v2}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    iget-object p0, p0, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    iget-object p0, p0, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {p0, v1, v2, p1}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private g(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/transition/j;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/transition/j;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    new-instance v1, Landroidx/transition/w;

    invoke-direct {v1, p1}, Landroidx/transition/w;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_5

    invoke-virtual {p0, v1}, Landroidx/transition/j;->j(Landroidx/transition/w;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/j;->f(Landroidx/transition/w;)V

    :goto_1
    iget-object v3, v1, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroidx/transition/j;->i(Landroidx/transition/w;)V

    if-eqz p2, :cond_6

    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    invoke-static {v3, p1, v1}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    invoke-static {v3, p1, v1}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/transition/j;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/transition/j;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroidx/transition/j;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_b

    iget-object v3, p0, Landroidx/transition/j;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/transition/j;->g(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method private static y()Landroidx/collection/a;
    .locals 2

    sget-object v0, Landroidx/transition/j;->M:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    sget-object v1, Landroidx/transition/j;->M:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public D()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public E()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F(Landroid/view/View;Z)Landroidx/transition/w;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->r:Landroidx/transition/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/transition/j;->F(Landroid/view/View;Z)Landroidx/transition/w;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    :goto_0
    iget-object p2, p2, Landroidx/transition/x;->a:Landroidx/collection/a;

    invoke-virtual {p2, p1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/w;

    return-object p1
.end method

.method public G(Landroidx/transition/w;Landroidx/transition/w;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/transition/j;->E()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    invoke-static {p1, p2, v5}, Landroidx/transition/j;->I(Landroidx/transition/w;Landroidx/transition/w;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroidx/transition/w;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, p2, v3}, Landroidx/transition/j;->I(Landroidx/transition/w;Landroidx/transition/w;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move v0, v2

    :cond_3
    return v0
.end method

.method H(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/transition/j;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroidx/transition/j;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/transition/j;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/transition/j;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v3

    :cond_7
    iget-object v1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    :cond_9
    iget-object v0, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    move v0, v2

    :goto_1
    iget-object v1, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v3
.end method

.method P(Landroidx/transition/j$g;Z)V
    .locals 0

    invoke-direct {p0, p0, p1, p2}, Landroidx/transition/j;->O(Landroidx/transition/j;Landroidx/transition/j$g;Z)V

    return-void
.end method

.method public Q(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Landroidx/transition/j;->B:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    sget-object v1, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    iput-object v1, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_0

    aget-object v2, v0, p1

    const/4 v3, 0x0

    aput-object v3, v0, p1

    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    sget-object p1, Landroidx/transition/j$g;->d:Landroidx/transition/j$g;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    iput-boolean v1, p0, Landroidx/transition/j;->A:Z

    :cond_1
    return-void
.end method

.method R(Landroid/view/ViewGroup;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    iget-object v1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    invoke-direct {p0, v0, v1}, Landroidx/transition/j;->N(Landroidx/transition/x;Landroidx/transition/x;)V

    invoke-static {}, Landroidx/transition/j;->y()Landroidx/collection/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/x0;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_4

    invoke-virtual {v0, v4}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/j$d;

    if-eqz v5, :cond_4

    iget-object v6, v5, Landroidx/transition/j$d;->a:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroidx/transition/j$d;->d:Landroid/view/WindowId;

    invoke-virtual {v2, v6}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroidx/transition/j$d;->c:Landroidx/transition/w;

    iget-object v7, v5, Landroidx/transition/j$d;->a:Landroid/view/View;

    invoke-virtual {p0, v7, v3}, Landroidx/transition/j;->F(Landroid/view/View;Z)Landroidx/transition/w;

    move-result-object v8

    invoke-virtual {p0, v7, v3}, Landroidx/transition/j;->t(Landroid/view/View;Z)Landroidx/transition/w;

    move-result-object v9

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    iget-object v9, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    iget-object v9, v9, Landroidx/transition/x;->a:Landroidx/collection/a;

    invoke-virtual {v9, v7}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroidx/transition/w;

    :cond_0
    if-nez v8, :cond_1

    if-eqz v9, :cond_4

    :cond_1
    iget-object v7, v5, Landroidx/transition/j$d;->e:Landroidx/transition/j;

    invoke-virtual {v7, v6, v9}, Landroidx/transition/j;->G(Landroidx/transition/w;Landroidx/transition/w;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v5, v5, Landroidx/transition/j$d;->e:Landroidx/transition/j;

    invoke-virtual {v5}, Landroidx/transition/j;->x()Landroidx/transition/j;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    iget-object v6, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    iget-object v7, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    iget-object v8, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/transition/j;->o(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroidx/transition/j;->W()V

    return-void
.end method

.method public S(Landroidx/transition/j$f;)Landroidx/transition/j;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/transition/j;->C:Landroidx/transition/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/transition/j;->S(Landroidx/transition/j$f;)Landroidx/transition/j;

    :cond_1
    iget-object p1, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    :cond_2
    return-object p0
.end method

.method public T(Landroid/view/View;)Landroidx/transition/j;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public U(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Landroidx/transition/j;->A:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/transition/j;->B:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/Animator;

    sget-object v2, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    iput-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    aget-object v2, v1, p1

    const/4 v3, 0x0

    aput-object v3, v1, p1

    invoke-virtual {v2}, Landroid/animation/Animator;->resume()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    sget-object p1, Landroidx/transition/j$g;->e:Landroidx/transition/j$g;

    invoke-virtual {p0, p1, v0}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    :cond_1
    iput-boolean v0, p0, Landroidx/transition/j;->A:Z

    :cond_2
    return-void
.end method

.method protected W()V
    .locals 4

    invoke-virtual {p0}, Landroidx/transition/j;->d0()V

    invoke-static {}, Landroidx/transition/j;->y()Landroidx/collection/a;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/transition/j;->d0()V

    invoke-direct {p0, v2, v0}, Landroidx/transition/j;->V(Landroid/animation/Animator;Landroidx/collection/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/transition/j;->p()V

    return-void
.end method

.method public X(J)Landroidx/transition/j;
    .locals 0

    iput-wide p1, p0, Landroidx/transition/j;->c:J

    return-object p0
.end method

.method public Y(Landroidx/transition/j$e;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/j;->G:Landroidx/transition/j$e;

    return-void
.end method

.method public Z(Landroid/animation/TimeInterpolator;)Landroidx/transition/j;
    .locals 0

    iput-object p1, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroidx/transition/j$f;)Landroidx/transition/j;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a0(Landroidx/transition/g;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Landroidx/transition/j;->L:Landroidx/transition/g;

    iput-object p1, p0, Landroidx/transition/j;->I:Landroidx/transition/g;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/transition/j;->I:Landroidx/transition/g;

    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;)Landroidx/transition/j;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b0(Landroidx/transition/t;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    return-void
.end method

.method public c0(J)Landroidx/transition/j;
    .locals 0

    iput-wide p1, p0, Landroidx/transition/j;->b:J

    return-object p0
.end method

.method protected cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/Animator;

    sget-object v2, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    iput-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    sget-object v0, Landroidx/transition/j$g;->c:Landroidx/transition/j$g;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/j;->m()Landroidx/transition/j;

    move-result-object v0

    return-object v0
.end method

.method protected d0()V
    .locals 2

    iget v0, p0, Landroidx/transition/j;->z:I

    if-nez v0, :cond_0

    sget-object v0, Landroidx/transition/j$g;->a:Landroidx/transition/j$g;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    iput-boolean v1, p0, Landroidx/transition/j;->B:Z

    :cond_0
    iget v0, p0, Landroidx/transition/j;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/j;->z:I

    return-void
.end method

.method protected e(Landroid/animation/Animator;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/transition/j;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/transition/j;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/transition/j;->q()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    invoke-virtual {p0}, Landroidx/transition/j;->z()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroidx/transition/j;->z()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {p0}, Landroidx/transition/j;->s()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/transition/j;->s()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v0, Landroidx/transition/j$c;

    invoke-direct {v0, p0}, Landroidx/transition/j$c;-><init>(Landroidx/transition/j;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method e0(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/transition/j;->c:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    const-string v1, ") "

    if-eqz p1, :cond_0

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroidx/transition/j;->c:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v5, p0, Landroidx/transition/j;->b:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_1

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/transition/j;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    if-eqz p1, :cond_2

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    iget-object p1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    :cond_3
    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez p1, :cond_5

    move p1, v2

    :goto_0
    iget-object v3, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    if-lez p1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v3, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    :goto_1
    iget-object p1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    if-lez v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object p1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract f(Landroidx/transition/w;)V
.end method

.method i(Landroidx/transition/w;)V
    .locals 4

    iget-object v0, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/transition/w;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    invoke-virtual {v0}, Landroidx/transition/t;->b()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Landroidx/transition/w;->a:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    invoke-virtual {v0, p1}, Landroidx/transition/t;->a(Landroidx/transition/w;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract j(Landroidx/transition/w;)V
.end method

.method k(Landroid/view/ViewGroup;Z)V
    .locals 5

    invoke-virtual {p0, p2}, Landroidx/transition/j;->l(Z)V

    iget-object v0, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/j;->g(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Landroidx/transition/w;

    invoke-direct {v3, v2}, Landroidx/transition/w;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_4

    invoke-virtual {p0, v3}, Landroidx/transition/j;->j(Landroidx/transition/w;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, Landroidx/transition/j;->f(Landroidx/transition/w;)V

    :goto_2
    iget-object v4, v3, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Landroidx/transition/j;->i(Landroidx/transition/w;)V

    if-eqz p2, :cond_5

    iget-object v4, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    invoke-static {v4, v2, v3}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    invoke-static {v4, v2, v3}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move p1, v1

    :goto_4
    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Landroidx/transition/w;

    invoke-direct {v2, v0}, Landroidx/transition/w;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8

    invoke-virtual {p0, v2}, Landroidx/transition/j;->j(Landroidx/transition/w;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v2}, Landroidx/transition/j;->f(Landroidx/transition/w;)V

    :goto_5
    iget-object v3, v2, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Landroidx/transition/j;->i(Landroidx/transition/w;)V

    if-eqz p2, :cond_9

    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    invoke-static {v3, v0, v2}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    goto :goto_6

    :cond_9
    iget-object v3, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    invoke-static {v3, v0, v2}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    iget-object p1, p0, Landroidx/transition/j;->H:Landroidx/collection/a;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroidx/collection/x0;->size()I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_8
    if-ge v0, p1, :cond_b

    iget-object v2, p0, Landroidx/transition/j;->H:Landroidx/collection/a;

    invoke-virtual {v2, v0}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    iget-object v3, v3, Landroidx/transition/x;->d:Landroidx/collection/a;

    invoke-virtual {v3, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v2, p0, Landroidx/transition/j;->H:Landroidx/collection/a;

    invoke-virtual {v2, v1}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    iget-object v3, v3, Landroidx/transition/x;->d:Landroidx/collection/a;

    invoke-virtual {v3, v2, v0}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method l(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    iget-object p1, p1, Landroidx/transition/x;->a:Landroidx/collection/a;

    invoke-virtual {p1}, Landroidx/collection/x0;->clear()V

    iget-object p1, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    iget-object p1, p1, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    iget-object p1, p1, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {p1}, Landroidx/collection/x;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    iget-object p1, p1, Landroidx/transition/x;->a:Landroidx/collection/a;

    invoke-virtual {p1}, Landroidx/collection/x0;->clear()V

    iget-object p1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    iget-object p1, p1, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    iget-object p1, p1, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {p1}, Landroidx/collection/x;->b()V

    :goto_0
    return-void
.end method

.method public m()Landroidx/transition/j;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    new-instance v1, Landroidx/transition/x;

    invoke-direct {v1}, Landroidx/transition/x;-><init>()V

    iput-object v1, v0, Landroidx/transition/j;->p:Landroidx/transition/x;

    new-instance v1, Landroidx/transition/x;

    invoke-direct {v1}, Landroidx/transition/x;-><init>()V

    iput-object v1, v0, Landroidx/transition/j;->q:Landroidx/transition/x;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    iput-object p0, v0, Landroidx/transition/j;->C:Landroidx/transition/j;

    iput-object v1, v0, Landroidx/transition/j;->D:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public n(Landroid/view/ViewGroup;Landroidx/transition/w;Landroidx/transition/w;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method o(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroidx/transition/j;->y()Landroidx/collection/a;

    move-result-object v9

    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/j;->x()Landroidx/transition/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0x7fffffffffffffffL

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_c

    move-object/from16 v14, p4

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/w;

    move-object/from16 v15, p5

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/w;

    if-eqz v2, :cond_0

    iget-object v5, v2, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v3, :cond_1

    iget-object v5, v3, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move/from16 v16, v11

    goto/16 :goto_5

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v7, v2, v3}, Landroidx/transition/j;->G(Landroidx/transition/w;Landroidx/transition/w;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    invoke-virtual {v7, v8, v2, v3}, Landroidx/transition/j;->n(Landroid/view/ViewGroup;Landroidx/transition/w;Landroidx/transition/w;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_9

    iget-object v6, v3, Landroidx/transition/w;->b:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/j;->E()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v12, v4

    if-lez v12, :cond_8

    new-instance v12, Landroidx/transition/w;

    invoke-direct {v12, v6}, Landroidx/transition/w;-><init>(Landroid/view/View;)V

    move-object/from16 v17, v5

    move/from16 v16, v11

    move-object/from16 v11, p3

    iget-object v5, v11, Landroidx/transition/x;->a:Landroidx/collection/a;

    invoke-virtual {v5, v6}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/w;

    if-eqz v5, :cond_5

    const/4 v11, 0x0

    :goto_1
    array-length v14, v4

    if-ge v11, v14, :cond_5

    iget-object v14, v12, Landroidx/transition/w;->a:Ljava/util/Map;

    aget-object v15, v4, v11

    move-object/from16 v18, v4

    iget-object v4, v5, Landroidx/transition/w;->a:Ljava/util/Map;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v15, p5

    move-object/from16 v4, v18

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Landroidx/collection/x0;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_7

    invoke-virtual {v9, v5}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    invoke-virtual {v9, v11}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/transition/j$d;

    iget-object v14, v11, Landroidx/transition/j$d;->c:Landroidx/transition/w;

    if-eqz v14, :cond_6

    iget-object v14, v11, Landroidx/transition/j$d;->a:Landroid/view/View;

    if-ne v14, v6, :cond_6

    iget-object v14, v11, Landroidx/transition/j$d;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/j;->u()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v11, v11, Landroidx/transition/j$d;->c:Landroidx/transition/w;

    invoke-virtual {v11, v12}, Landroidx/transition/w;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v4, v17

    goto :goto_3

    :cond_8
    move-object/from16 v17, v5

    move/from16 v16, v11

    move-object/from16 v4, v17

    const/4 v12, 0x0

    :goto_3
    move-object v11, v4

    move-object v4, v6

    move-object v5, v12

    goto :goto_4

    :cond_9
    move-object/from16 v17, v5

    move/from16 v16, v11

    iget-object v4, v2, Landroidx/transition/w;->b:Landroid/view/View;

    move-object/from16 v11, v17

    const/4 v5, 0x0

    :goto_4
    if-eqz v11, :cond_b

    iget-object v6, v7, Landroidx/transition/j;->F:Landroidx/transition/t;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v8, v7, v2, v3}, Landroidx/transition/t;->c(Landroid/view/ViewGroup;Landroidx/transition/j;Landroidx/transition/w;Landroidx/transition/w;)J

    move-result-wide v2

    iget-object v6, v7, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    long-to-int v12, v2

    invoke-virtual {v10, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_a
    move-wide v14, v0

    new-instance v12, Landroidx/transition/j$d;

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/j;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v6

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v3, p0

    move-object v4, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/transition/j$d;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/j;Landroid/view/WindowId;Landroidx/transition/w;Landroid/animation/Animator;)V

    invoke-virtual {v9, v11, v12}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v14

    :cond_b
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v16

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_d

    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, v7, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v9, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j$d;

    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    iget-object v5, v2, Landroidx/transition/j$d;->f:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v2, v2, Landroidx/transition/j$d;->f:Landroid/animation/Animator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method protected p()V
    .locals 4

    iget v0, p0, Landroidx/transition/j;->z:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/transition/j;->z:I

    if-nez v0, :cond_4

    sget-object v0, Landroidx/transition/j$g;->b:Landroidx/transition/j$g;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    iget-object v3, v3, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {v3}, Landroidx/collection/x;->n()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    iget-object v3, v3, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {v3, v0}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    iget-object v3, v3, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {v3}, Landroidx/collection/x;->n()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    iget-object v3, v3, Landroidx/transition/x;->c:Landroidx/collection/x;

    invoke-virtual {v3, v0}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Landroidx/transition/j;->B:Z

    :cond_4
    return-void
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Landroidx/transition/j;->c:J

    return-wide v0
.end method

.method public r()Landroidx/transition/j$e;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->G:Landroidx/transition/j$e;

    return-object v0
.end method

.method public s()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method t(Landroid/view/View;Z)Landroidx/transition/w;
    .locals 5

    iget-object v0, p0, Landroidx/transition/j;->r:Landroidx/transition/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/transition/j;->t(Landroid/view/View;Z)Landroidx/transition/w;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/w;

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    iget-object v4, v4, Landroidx/transition/w;->b:Landroid/view/View;

    if-ne v4, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    iget-object p1, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/transition/w;

    :cond_7
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/transition/j;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public v()Landroidx/transition/g;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->I:Landroidx/transition/g;

    return-object v0
.end method

.method public w()Landroidx/transition/t;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    return-object v0
.end method

.method public final x()Landroidx/transition/j;
    .locals 1

    iget-object v0, p0, Landroidx/transition/j;->r:Landroidx/transition/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/transition/j;->x()Landroidx/transition/j;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public z()J
    .locals 2

    iget-wide v0, p0, Landroidx/transition/j;->b:J

    return-wide v0
.end method
