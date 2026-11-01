.class final Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/google/android/exoplayer2/source/rtsp/b0;

.field final synthetic c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;
    .locals 4

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/o$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->Z(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a:I

    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/exoplayer2/source/rtsp/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->a0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/l;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string p2, "Authorization"

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->a0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    move-result-object v2

    invoke-virtual {v1, v2, p4, p1}, Lcom/google/android/exoplayer2/source/rtsp/l;->a(Lcom/google/android/exoplayer2/source/rtsp/y$a;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->d(Ljava/util/Map;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    new-instance p2, Lcom/google/android/exoplayer2/source/rtsp/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->e()Lcom/google/android/exoplayer2/source/rtsp/o;

    move-result-object p3

    const-string v0, ""

    invoke-direct {p2, p4, p1, p3, v0}, Lcom/google/android/exoplayer2/source/rtsp/b0;-><init>(Landroid/net/Uri;ILcom/google/android/exoplayer2/source/rtsp/o;Ljava/lang/String;)V

    return-object p2
.end method

.method private h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/b0;->c:Lcom/google/android/exoplayer2/source/rtsp/o;

    const-string v1, "CSeq"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->p(Lcom/google/android/exoplayer2/source/rtsp/b0;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->l(Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/source/rtsp/c0;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->q(Lcom/google/android/exoplayer2/source/rtsp/c0;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/u;->l(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/b0;->c:Lcom/google/android/exoplayer2/source/rtsp/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/o;->b()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Lcom/google/common/collect/j3;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CSeq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "User-Agent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Session"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Authorization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v3}, Lcom/google/common/collect/j3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    iget v0, v0, Lcom/google/android/exoplayer2/source/rtsp/b0;->b:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->U(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b0;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/b0;->a:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    return-void
.end method

.method public c(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    return-void
.end method

.method public d(I)V
    .locals 4

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/c0;

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/o$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->Z(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->U(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/exoplayer2/source/rtsp/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->e()Lcom/google/android/exoplayer2/source/rtsp/o;

    move-result-object v1

    const/16 v2, 0x195

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/rtsp/c0;-><init>(ILcom/google/android/exoplayer2/source/rtsp/o;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->i(Lcom/google/android/exoplayer2/source/rtsp/c0;)V

    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a:I

    return-void
.end method

.method public e(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    return-void
.end method

.method public f(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    const/4 v0, 0x5

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->x(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z

    return-void
.end method

.method public g(Landroid/net/Uri;JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    const-string v0, "Range"

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/d0;->b(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    const/4 p3, 0x6

    invoke-direct {p0, p3, p4, p2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    return-void
.end method

.method public j(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    const-string v0, "Transport"

    invoke-static {v0, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    const/16 v0, 0xa

    invoke-direct {p0, v0, p3, p2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    return-void
.end method

.method public k(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    const/16 v0, 0xc

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->h(Lcom/google/android/exoplayer2/source/rtsp/b0;)V

    :cond_1
    :goto_0
    return-void
.end method
