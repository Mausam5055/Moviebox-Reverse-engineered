.class final Lcom/google/android/exoplayer2/source/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lg9/r;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/util/Map;

.field private e:Lcom/google/android/exoplayer2/upstream/k$a;

.field private f:Lcom/google/android/exoplayer2/drm/x;

.field private g:Lcom/google/android/exoplayer2/upstream/z;


# direct methods
.method public constructor <init>(Lg9/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->a:Lg9/r;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->c:Ljava/util/Set;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->h(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->g(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->i(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/i$a;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->k(Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/i$a;->j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic g(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i;->f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic h(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i;->f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic i(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/i;->f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/i;->e(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method private synthetic k(Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/x$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i$a;->a:Lg9/r;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/x$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lg9/r;)V

    return-object v0
.end method

.method private l(I)Lcom/google/common/base/q;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/q;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->e:Lcom/google/android/exoplayer2/upstream/k$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/k$a;

    const-class v1, Lcom/google/android/exoplayer2/source/o$a;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/source/h;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/source/h;-><init>(Lcom/google/android/exoplayer2/source/i$a;Lcom/google/android/exoplayer2/upstream/k$a;)V

    :goto_0
    move-object v2, v1

    goto :goto_2

    :cond_2
    const-class v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/g;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/g;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    const-class v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lcom/google/android/exoplayer2/source/f;

    invoke-direct {v3, v1, v0}, Lcom/google/android/exoplayer2/source/f;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)V

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_4
    const-class v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lcom/google/android/exoplayer2/source/e;

    invoke-direct {v3, v1, v0}, Lcom/google/android/exoplayer2/source/e;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)V

    goto :goto_1

    :cond_5
    const-class v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lcom/google/android/exoplayer2/source/d;

    invoke-direct {v3, v1, v0}, Lcom/google/android/exoplayer2/source/d;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method


# virtual methods
.method public f(I)Lcom/google/android/exoplayer2/source/o$a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/o$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->l(I)Lcom/google/common/base/q;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/o$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i$a;->f:Lcom/google/android/exoplayer2/drm/x;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/o$a;->b(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/o$a;

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i$a;->g:Lcom/google/android/exoplayer2/upstream/z;

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/o$a;->c(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/o$a;

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public m(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->e:Lcom/google/android/exoplayer2/upstream/k$a;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->e:Lcom/google/android/exoplayer2/upstream/k$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/drm/x;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->f:Lcom/google/android/exoplayer2/drm/x;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/o$a;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/o$a;->b(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/o$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/upstream/z;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i$a;->g:Lcom/google/android/exoplayer2/upstream/z;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/o$a;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/o$a;->c(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/o$a;

    goto :goto_0

    :cond_0
    return-void
.end method
