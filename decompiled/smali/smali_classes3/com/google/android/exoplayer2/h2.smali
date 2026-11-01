.class final Lcom/google/android/exoplayer2/h2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/h2$a;,
        Lcom/google/android/exoplayer2/h2$b;,
        Lcom/google/android/exoplayer2/h2$c;,
        Lcom/google/android/exoplayer2/h2$d;
    }
.end annotation


# instance fields
.field private final a:Le9/u1;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/IdentityHashMap;

.field private final d:Ljava/util/Map;

.field private final e:Lcom/google/android/exoplayer2/h2$d;

.field private final f:Lcom/google/android/exoplayer2/source/p$a;

.field private final g:Lcom/google/android/exoplayer2/drm/s$a;

.field private final h:Ljava/util/HashMap;

.field private final i:Ljava/util/Set;

.field private j:Lt9/t;

.field private k:Z

.field private l:Lcom/google/android/exoplayer2/upstream/k0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/h2$d;Le9/a;Landroid/os/Handler;Le9/u1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/h2;->a:Le9/u1;

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2;->e:Lcom/google/android/exoplayer2/h2$d;

    new-instance p1, Lt9/t$a;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lt9/t$a;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2;->j:Lt9/t;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2;->c:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    new-instance p1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/p$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2;->f:Lcom/google/android/exoplayer2/source/p$a;

    new-instance p4, Lcom/google/android/exoplayer2/drm/s$a;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/drm/s$a;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/h2;->g:Lcom/google/android/exoplayer2/drm/s$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/h2;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/h2;->i:Ljava/util/Set;

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/p$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V

    invoke-virtual {p4, p3, p2}, Lcom/google/android/exoplayer2/drm/s$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method private A(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/h2$c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/h2;->d:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/exoplayer2/h2$c;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/android/exoplayer2/h2$c;->a:Lcom/google/android/exoplayer2/source/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/m;->P()Lcom/google/android/exoplayer2/k3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v2

    neg-int v2, v2

    invoke-direct {p0, p2, v2}, Lcom/google/android/exoplayer2/h2;->g(II)V

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/h2$c;->e:Z

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/h2;->k:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/h2;->u(Lcom/google/android/exoplayer2/h2$c;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/h2;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2;->t(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/h2;)Lcom/google/android/exoplayer2/source/p$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/h2;->f:Lcom/google/android/exoplayer2/source/p$a;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/h2;)Lcom/google/android/exoplayer2/drm/s$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/h2;->g:Lcom/google/android/exoplayer2/drm/s$a;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/h2$c;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/h2;->n(Lcom/google/android/exoplayer2/h2$c;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/h2$c;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/h2;->r(Lcom/google/android/exoplayer2/h2$c;I)I

    move-result p0

    return p0
.end method

.method private g(II)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2$c;

    iget v1, v0, Lcom/google/android/exoplayer2/h2$c;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/h2$c;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/h2$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/h2$b;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/h2$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object p1, p1, Lcom/google/android/exoplayer2/h2$b;->b:Lcom/google/android/exoplayer2/source/o$c;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/o;->o(Lcom/google/android/exoplayer2/source/o$c;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/h2$c;

    iget-object v2, v1, Lcom/google/android/exoplayer2/h2$c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/h2;->j(Lcom/google/android/exoplayer2/h2$c;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/h2$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/h2$b;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/h2$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object p1, p1, Lcom/google/android/exoplayer2/h2$b;->b:Lcom/google/android/exoplayer2/source/o$c;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/o;->m(Lcom/google/android/exoplayer2/source/o$c;)V

    :cond_0
    return-void
.end method

.method private static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static n(Lcom/google/android/exoplayer2/h2$c;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/h2$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/h2$c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v1, v1, Lt9/j;->d:J

    iget-wide v3, p1, Lt9/j;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, p1, Lt9/j;->a:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/h2;->p(Lcom/google/android/exoplayer2/h2$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/o$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/o$b;

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

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static p(Lcom/google/android/exoplayer2/h2$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/h2$c;->b:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->E(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static r(Lcom/google/android/exoplayer2/h2$c;I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/h2$c;->d:I

    add-int/2addr p1, p0

    return p1
.end method

.method private synthetic t(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2;->e:Lcom/google/android/exoplayer2/h2$d;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/h2$d;->a()V

    return-void
.end method

.method private u(Lcom/google/android/exoplayer2/h2$c;)V
    .locals 3

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/h2$c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/h2$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2$b;

    iget-object v1, v0, Lcom/google/android/exoplayer2/h2$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v2, v0, Lcom/google/android/exoplayer2/h2$b;->b:Lcom/google/android/exoplayer2/source/o$c;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/o;->e(Lcom/google/android/exoplayer2/source/o$c;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/h2$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v2, v0, Lcom/google/android/exoplayer2/h2$b;->c:Lcom/google/android/exoplayer2/h2$a;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/o;->h(Lcom/google/android/exoplayer2/source/p;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/h2$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v0, v0, Lcom/google/android/exoplayer2/h2$b;->c:Lcom/google/android/exoplayer2/h2$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/o;->r(Lcom/google/android/exoplayer2/drm/s;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private w(Lcom/google/android/exoplayer2/h2$c;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/exoplayer2/h2$c;->a:Lcom/google/android/exoplayer2/source/m;

    new-instance v1, Lcom/google/android/exoplayer2/g2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/g2;-><init>(Lcom/google/android/exoplayer2/h2;)V

    new-instance v2, Lcom/google/android/exoplayer2/h2$a;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/h2$a;-><init>(Lcom/google/android/exoplayer2/h2;Lcom/google/android/exoplayer2/h2$c;)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/h2;->h:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/exoplayer2/h2$b;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/h2$b;-><init>(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/o$c;Lcom/google/android/exoplayer2/h2$a;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->y()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/o;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->y()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/o;->q(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2;->l:Lcom/google/android/exoplayer2/upstream/k0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/h2;->a:Le9/u1;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/source/o;->i(Lcom/google/android/exoplayer2/source/o$c;Lcom/google/android/exoplayer2/upstream/k0;Le9/u1;)V

    return-void
.end method


# virtual methods
.method public B(Ljava/util/List;Lt9/t;)Lcom/google/android/exoplayer2/k3;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/h2;->A(II)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/h2;->f(ILjava/util/List;Lt9/t;)Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    return-object p1
.end method

.method public C(Lt9/t;)Lcom/google/android/exoplayer2/k3;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h2;->q()I

    move-result v0

    invoke-interface {p1}, Lt9/t;->getLength()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-interface {p1}, Lt9/t;->cloneAndClear()Lt9/t;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lt9/t;->cloneAndInsert(II)Lt9/t;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/h2;->j:Lt9/t;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h2;->i()Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    return-object p1
.end method

.method public f(ILjava/util/List;Lt9/t;)Lcom/google/android/exoplayer2/k3;
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p0, Lcom/google/android/exoplayer2/h2;->j:Lt9/t;

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2$c;

    if-lez p3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/h2$c;

    iget-object v2, v1, Lcom/google/android/exoplayer2/h2$c;->a:Lcom/google/android/exoplayer2/source/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/m;->P()Lcom/google/android/exoplayer2/k3;

    move-result-object v2

    iget v1, v1, Lcom/google/android/exoplayer2/h2$c;->d:I

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h2$c;->c(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h2$c;->c(I)V

    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/h2$c;->a:Lcom/google/android/exoplayer2/source/m;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/m;->P()Lcom/google/android/exoplayer2/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v1

    invoke-direct {p0, p3, v1}, Lcom/google/android/exoplayer2/h2;->g(II)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/h2;->d:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/h2$c;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/h2;->k:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h2;->w(Lcom/google/android/exoplayer2/h2$c;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/h2;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/h2;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h2;->j(Lcom/google/android/exoplayer2/h2$c;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h2;->i()Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 2

    iget-object v0, p1, Lt9/j;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/h2;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lt9/j;->a:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/exoplayer2/h2;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/o$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/h2;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2$c;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h2;->l(Lcom/google/android/exoplayer2/h2$c;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/h2$c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/google/android/exoplayer2/h2$c;->a:Lcom/google/android/exoplayer2/source/m;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/m;->L(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/l;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/h2;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/h2;->k()V

    return-object p1
.end method

.method public i()Lcom/google/android/exoplayer2/k3;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/k3;->a:Lcom/google/android/exoplayer2/k3;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/h2$c;

    iput v1, v2, Lcom/google/android/exoplayer2/h2$c;->d:I

    iget-object v2, v2, Lcom/google/android/exoplayer2/h2$c;->a:Lcom/google/android/exoplayer2/source/m;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/m;->P()Lcom/google/android/exoplayer2/k3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/t2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/h2;->j:Lt9/t;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/t2;-><init>(Ljava/util/Collection;Lt9/t;)V

    return-object v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h2;->k:Z

    return v0
.end method

.method public v(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h2;->k:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2;->l:Lcom/google/android/exoplayer2/upstream/k0;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2$c;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h2;->w(Lcom/google/android/exoplayer2/h2$c;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/h2;->i:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/h2;->k:Z

    return-void
.end method

.method public x()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->h:Ljava/util/HashMap;

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

    check-cast v1, Lcom/google/android/exoplayer2/h2$b;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/h2$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v3, v1, Lcom/google/android/exoplayer2/h2$b;->b:Lcom/google/android/exoplayer2/source/o$c;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/o;->e(Lcom/google/android/exoplayer2/source/o$c;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/h2$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v3, v1, Lcom/google/android/exoplayer2/h2$b;->c:Lcom/google/android/exoplayer2/h2$a;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/o;->h(Lcom/google/android/exoplayer2/source/p;)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/h2$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v1, v1, Lcom/google/android/exoplayer2/h2$b;->c:Lcom/google/android/exoplayer2/h2$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/o;->r(Lcom/google/android/exoplayer2/drm/s;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h2;->k:Z

    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/source/n;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2$c;

    iget-object v1, v0, Lcom/google/android/exoplayer2/h2$c;->a:Lcom/google/android/exoplayer2/source/m;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/m;->k(Lcom/google/android/exoplayer2/source/n;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/h2$c;->c:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/source/l;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/h2;->k()V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h2;->u(Lcom/google/android/exoplayer2/h2$c;)V

    return-void
.end method

.method public z(IILt9/t;)Lcom/google/android/exoplayer2/k3;
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h2;->q()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/h2;->j:Lt9/t;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2;->A(II)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h2;->i()Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    return-object p1
.end method
