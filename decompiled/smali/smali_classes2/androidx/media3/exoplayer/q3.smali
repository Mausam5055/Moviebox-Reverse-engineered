.class final Landroidx/media3/exoplayer/q3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/q3$c;,
        Landroidx/media3/exoplayer/q3$d;,
        Landroidx/media3/exoplayer/q3$b;,
        Landroidx/media3/exoplayer/q3$a;
    }
.end annotation


# instance fields
.field private final a:Ly1/f4;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/IdentityHashMap;

.field private final d:Ljava/util/Map;

.field private final e:Landroidx/media3/exoplayer/q3$d;

.field private final f:Ljava/util/HashMap;

.field private final g:Ljava/util/Set;

.field private final h:Ly1/a;

.field private final i:Landroidx/media3/common/util/p;

.field private j:Lg2/v;

.field private k:Z

.field private l:Lw1/n;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/q3$d;Ly1/a;Landroidx/media3/common/util/p;Ly1/f4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/media3/exoplayer/q3;->a:Ly1/f4;

    iput-object p1, p0, Landroidx/media3/exoplayer/q3;->e:Landroidx/media3/exoplayer/q3$d;

    new-instance p1, Lg2/v$a;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lg2/v$a;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/q3;->j:Lg2/v;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/q3;->c:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/q3;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    iput-object p2, p0, Landroidx/media3/exoplayer/q3;->h:Ly1/a;

    iput-object p3, p0, Landroidx/media3/exoplayer/q3;->i:Landroidx/media3/common/util/p;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/q3;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/q3;->g:Ljava/util/Set;

    return-void
.end method

.method private B(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/q3$c;

    iget-object v2, p0, Landroidx/media3/exoplayer/q3;->d:Ljava/util/Map;

    iget-object v3, v1, Landroidx/media3/exoplayer/q3$c;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/p;->W()Landroidx/media3/common/e0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/e0;->p()I

    move-result v2

    neg-int v2, v2

    invoke-direct {p0, p2, v2}, Landroidx/media3/exoplayer/q3;->g(II)V

    iput-boolean v0, v1, Landroidx/media3/exoplayer/q3$c;->e:Z

    iget-boolean v2, p0, Landroidx/media3/exoplayer/q3;->k:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/q3;->v(Landroidx/media3/exoplayer/q3$c;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/q3;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/q3;->u(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    return-void
.end method

.method static synthetic b(Landroidx/media3/exoplayer/q3;)Landroidx/media3/common/util/p;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/q3;->i:Landroidx/media3/common/util/p;

    return-object p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/q3$c;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/q3;->n(Landroidx/media3/exoplayer/q3$c;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/q3$c;I)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/q3;->s(Landroidx/media3/exoplayer/q3$c;I)I

    move-result p0

    return p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/q3;)Ly1/a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/q3;->h:Ly1/a;

    return-object p0
.end method

.method private g(II)V
    .locals 2

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/q3$c;

    iget v1, v0, Landroidx/media3/exoplayer/q3$c;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Landroidx/media3/exoplayer/q3$c;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j(Landroidx/media3/exoplayer/q3$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/q3$b;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/q3$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object p1, p1, Landroidx/media3/exoplayer/q3$b;->b:Landroidx/media3/exoplayer/source/r$c;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->o(Landroidx/media3/exoplayer/source/r$c;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/q3$c;

    iget-object v2, v1, Landroidx/media3/exoplayer/q3$c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/q3;->j(Landroidx/media3/exoplayer/q3$c;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l(Landroidx/media3/exoplayer/q3$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/q3$b;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/q3$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object p1, p1, Landroidx/media3/exoplayer/q3$b;->b:Landroidx/media3/exoplayer/source/r$c;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->k(Landroidx/media3/exoplayer/source/r$c;)V

    :cond_0
    return-void
.end method

.method private static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/a;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static n(Landroidx/media3/exoplayer/q3$c;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/q3$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/q3$c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/r$b;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/r$b;->d:J

    iget-wide v3, p1, Landroidx/media3/exoplayer/source/r$b;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/q3;->p(Landroidx/media3/exoplayer/q3$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/r$b;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/a;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static p(Landroidx/media3/exoplayer/q3$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/q3$c;->b:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static s(Landroidx/media3/exoplayer/q3$c;I)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/q3$c;->d:I

    add-int/2addr p1, p0

    return p1
.end method

.method private synthetic u(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/q3;->e:Landroidx/media3/exoplayer/q3$d;

    invoke-interface {p1}, Landroidx/media3/exoplayer/q3$d;->a()V

    return-void
.end method

.method private v(Landroidx/media3/exoplayer/q3$c;)V
    .locals 3

    iget-boolean v0, p1, Landroidx/media3/exoplayer/q3$c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/q3$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/q3$b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/q3$b;

    iget-object v1, v0, Landroidx/media3/exoplayer/q3$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v2, v0, Landroidx/media3/exoplayer/q3$b;->b:Landroidx/media3/exoplayer/source/r$c;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/source/r;->n(Landroidx/media3/exoplayer/source/r$c;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/q3$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v2, v0, Landroidx/media3/exoplayer/q3$b;->c:Landroidx/media3/exoplayer/q3$a;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/source/r;->e(Landroidx/media3/exoplayer/source/s;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/q3$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v0, v0, Landroidx/media3/exoplayer/q3$b;->c:Landroidx/media3/exoplayer/q3$a;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/r;->i(Landroidx/media3/exoplayer/drm/r;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private x(Landroidx/media3/exoplayer/q3$c;)V
    .locals 5

    iget-object v0, p1, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    new-instance v1, Landroidx/media3/exoplayer/d3;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/d3;-><init>(Landroidx/media3/exoplayer/q3;)V

    new-instance v2, Landroidx/media3/exoplayer/q3$a;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/q3$a;-><init>(Landroidx/media3/exoplayer/q3;Landroidx/media3/exoplayer/q3$c;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/q3;->f:Ljava/util/HashMap;

    new-instance v4, Landroidx/media3/exoplayer/q3$b;

    invoke-direct {v4, v0, v1, v2}, Landroidx/media3/exoplayer/q3$b;-><init>(Landroidx/media3/exoplayer/source/r;Landroidx/media3/exoplayer/source/r$c;Landroidx/media3/exoplayer/q3$a;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/media3/common/util/a1;->C()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Landroidx/media3/exoplayer/source/r;->d(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V

    invoke-static {}, Landroidx/media3/common/util/a1;->C()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Landroidx/media3/exoplayer/source/r;->h(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/q3;->l:Lw1/n;

    iget-object v2, p0, Landroidx/media3/exoplayer/q3;->a:Ly1/f4;

    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/exoplayer/source/r;->m(Landroidx/media3/exoplayer/source/r$c;Lw1/n;Ly1/f4;)V

    return-void
.end method


# virtual methods
.method public A(IILg2/v;)Landroidx/media3/common/e0;
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/q3;->r()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iput-object p3, p0, Landroidx/media3/exoplayer/q3;->j:Lg2/v;

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/q3;->B(II)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/q3;->i()Landroidx/media3/common/e0;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/util/List;Lg2/v;)Landroidx/media3/common/e0;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/q3;->B(II)V

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/exoplayer/q3;->f(ILjava/util/List;Lg2/v;)Landroidx/media3/common/e0;

    move-result-object p1

    return-object p1
.end method

.method public D(Lg2/v;)Landroidx/media3/common/e0;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/q3;->r()I

    move-result v0

    invoke-interface {p1}, Lg2/v;->getLength()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-interface {p1}, Lg2/v;->cloneAndClear()Lg2/v;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lg2/v;->cloneAndInsert(II)Lg2/v;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/q3;->j:Lg2/v;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/q3;->i()Landroidx/media3/common/e0;

    move-result-object p1

    return-object p1
.end method

.method public E(IILjava/util/List;)Landroidx/media3/common/e0;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/q3;->r()I

    move-result v2

    if-gt p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/a;->a(Z)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int v3, p2, p1

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/q3$c;

    iget-object v1, v1, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    sub-int v2, v0, p1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/t;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/p;->l(Landroidx/media3/common/t;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/q3;->i()Landroidx/media3/common/e0;

    move-result-object p1

    return-object p1
.end method

.method public f(ILjava/util/List;Lg2/v;)Landroidx/media3/common/e0;
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p0, Landroidx/media3/exoplayer/q3;->j:Lg2/v;

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/q3$c;

    if-lez p3, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/q3$c;

    iget-object v2, v1, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/p;->W()Landroidx/media3/common/e0;

    move-result-object v2

    iget v1, v1, Landroidx/media3/exoplayer/q3$c;->d:I

    invoke-virtual {v2}, Landroidx/media3/common/e0;->p()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/q3$c;->c(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/q3$c;->c(I)V

    :goto_1
    iget-object v1, v0, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/p;->W()Landroidx/media3/common/e0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/e0;->p()I

    move-result v1

    invoke-direct {p0, p3, v1}, Landroidx/media3/exoplayer/q3;->g(II)V

    iget-object v1, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/q3;->d:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media3/exoplayer/q3$c;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/q3;->k:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/q3;->x(Landroidx/media3/exoplayer/q3$c;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/q3;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/q3;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/q3;->j(Landroidx/media3/exoplayer/q3$c;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/q3;->i()Landroidx/media3/common/e0;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 2

    iget-object v0, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media3/exoplayer/q3;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/media3/exoplayer/q3;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/source/r$b;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/exoplayer/q3;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/q3$c;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/q3$c;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/q3;->l(Landroidx/media3/exoplayer/q3$c;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/q3$c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/p;->T(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/o;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/q3;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/media3/exoplayer/q3;->k()V

    return-object p1
.end method

.method public i()Landroidx/media3/common/e0;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/q3$c;

    iput v1, v2, Landroidx/media3/exoplayer/q3$c;->d:I

    iget-object v2, v2, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/p;->W()Landroidx/media3/common/e0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/e0;->p()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/u3;

    iget-object v1, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/exoplayer/q3;->j:Lg2/v;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/u3;-><init>(Ljava/util/Collection;Lg2/v;)V

    return-object v0
.end method

.method public q()Lg2/v;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->j:Lg2/v;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/q3;->k:Z

    return v0
.end method

.method public w(Lw1/n;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/q3;->k:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/q3;->l:Lw1/n;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/q3$c;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/q3;->x(Landroidx/media3/exoplayer/q3$c;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/q3;->g:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/q3;->k:Z

    return-void
.end method

.method public y()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/q3$b;

    :try_start_0
    iget-object v2, v1, Landroidx/media3/exoplayer/q3$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v3, v1, Landroidx/media3/exoplayer/q3$b;->b:Landroidx/media3/exoplayer/source/r$c;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/source/r;->n(Landroidx/media3/exoplayer/source/r$c;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v2, v1, Landroidx/media3/exoplayer/q3$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v3, v1, Landroidx/media3/exoplayer/q3$b;->c:Landroidx/media3/exoplayer/q3$a;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/source/r;->e(Landroidx/media3/exoplayer/source/s;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/q3$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/q3$b;->c:Landroidx/media3/exoplayer/q3$a;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/source/r;->i(Landroidx/media3/exoplayer/drm/r;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/q3;->k:Z

    return-void
.end method

.method public z(Landroidx/media3/exoplayer/source/q;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/q3;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/q3$c;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/q3$c;

    iget-object v1, v0, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/p;->j(Landroidx/media3/exoplayer/source/q;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/q3$c;->c:Ljava/util/List;

    check-cast p1, Landroidx/media3/exoplayer/source/o;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/q3;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/q3;->k()V

    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/q3;->v(Landroidx/media3/exoplayer/q3$c;)V

    return-void
.end method
