.class final Lcom/google/android/exoplayer2/source/rtsp/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/p$d;,
        Lcom/google/android/exoplayer2/source/rtsp/p$e;,
        Lcom/google/android/exoplayer2/source/rtsp/p$f;,
        Lcom/google/android/exoplayer2/source/rtsp/p$b;,
        Lcom/google/android/exoplayer2/source/rtsp/p$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/b;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/exoplayer2/source/rtsp/p$b;

.field private final d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Lcom/google/android/exoplayer2/source/rtsp/p$c;

.field private final h:Lcom/google/android/exoplayer2/source/rtsp/c$a;

.field private i:Lcom/google/android/exoplayer2/source/n$a;

.field private j:Lcom/google/common/collect/ImmutableList;

.field private k:Ljava/io/IOException;

.field private l:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

.field private m:J

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/source/rtsp/c$a;Landroid/net/Uri;Lcom/google/android/exoplayer2/source/rtsp/p$c;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->a:Lcom/google/android/exoplayer2/upstream/b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->h:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->g:Lcom/google/android/exoplayer2/source/rtsp/p$c;

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->b:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/p$b;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/p$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/p;Lcom/google/android/exoplayer2/source/rtsp/p$a;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->c:Lcom/google/android/exoplayer2/source/rtsp/p$b;

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    move-object v0, p1

    move-object v1, v2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->o:J

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/source/rtsp/p;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->v:Z

    return p0
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/source/rtsp/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->v:Z

    return p1
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/source/rtsp/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->N()V

    return-void
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/source/rtsp/p;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->s:Z

    return p0
.end method

.method static synthetic E(Lcom/google/android/exoplayer2/source/rtsp/p;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->k:Ljava/io/IOException;

    return-object p1
.end method

.method private static F(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 8

    const/4 v0, 0x1

    new-instance v1, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Lcom/google/android/exoplayer2/source/a0;

    move-result-object v4

    new-instance v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/o1;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/o1;

    new-array v7, v0, [Lcom/google/android/exoplayer2/o1;

    aput-object v4, v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private G(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/e;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->b(Lcom/google/android/exoplayer2/source/rtsp/p$d;)Lcom/google/android/exoplayer2/source/rtsp/e;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private I()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private J()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->r:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->s:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Lcom/google/android/exoplayer2/source/a0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->s:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->F(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->j:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->i:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private K()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/p$d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->e()Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->B0(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private N()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->x0()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->h:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/rtsp/c$a;->b()Lcom/google/android/exoplayer2/source/rtsp/c$a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    const-string v1, "No fallback data channel factory for TCP retry"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->l:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    iget-object v7, v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/rtsp/p$d;->a:Lcom/google/android/exoplayer2/source/rtsp/t;

    invoke-direct {v6, p0, v7, v4, v0}, Lcom/google/android/exoplayer2/source/rtsp/p$e;-><init>(Lcom/google/android/exoplayer2/source/rtsp/p;Lcom/google/android/exoplayer2/source/rtsp/t;ILcom/google/android/exoplayer2/source/rtsp/c$a;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->j()V

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private O(J)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Lcom/google/android/exoplayer2/source/a0;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->q:Z

    return v0
.end method

.method private R()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/rtsp/p;)I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->u:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->l:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/rtsp/p;Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->l:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    return-object p1
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/rtsp/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/p$c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->g:Lcom/google/android/exoplayer2/source/rtsp/p$c;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/source/rtsp/p;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->I()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/source/rtsp/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->q:Z

    return p1
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/source/rtsp/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    return-wide v0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/source/rtsp/p;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    return-wide p1
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/source/rtsp/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    return-wide v0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/source/rtsp/p;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    return-wide p1
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/source/rtsp/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->o:J

    return-wide v0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/source/rtsp/p;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->o:J

    return-wide p1
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/source/rtsp/p;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/p;->G(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/c$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->h:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/source/rtsp/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->J()V

    return-void
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/upstream/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->a:Lcom/google/android/exoplayer2/upstream/b;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/p$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->c:Lcom/google/android/exoplayer2/source/rtsp/p$b;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/source/rtsp/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->R()V

    return-void
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/source/rtsp/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->K()V

    return-void
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/source/rtsp/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/source/rtsp/p;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->b:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method H(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method L(ILcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->f(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public M()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->r:Z

    return-void
.end method

.method P(IJ)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->i(J)I

    move-result p1

    return p1
.end method

.method public a(JLcom/google/android/exoplayer2/c3;)J
    .locals 0

    return-wide p1
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    move p2, v0

    :goto_1
    array-length v1, p1

    const/4 v2, 0x1

    if-ge p2, v1, :cond_5

    aget-object v1, p1, p2

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lla/m;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->j:Lcom/google/common/collect/ImmutableList;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->j:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v1, p3, p2

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/p$f;

    invoke-direct {v1, p0, v3}, Lcom/google/android/exoplayer2/source/rtsp/p$f;-><init>(Lcom/google/android/exoplayer2/source/rtsp/p;I)V

    aput-object v1, p3, p2

    aput-boolean v2, p4, p2

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    iget-object p3, p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->t:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->K()V

    return-wide p5
.end method

.method public continueLoading(J)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->isLoading()Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Lcom/google/android/exoplayer2/source/a0;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/source/a0;->q(JZZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->i:Lcom/google/android/exoplayer2/source/n$a;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->C0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->k:Ljava/io/IOException;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    move v6, v0

    :goto_0
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->d()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide v4, v3

    move v3, v0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    cmp-long v0, v4, v1

    if-nez v0, :cond_5

    :cond_4
    const-wide/16 v4, 0x0

    :cond_5
    return-wide v4

    :cond_6
    :goto_1
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lt9/x;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->s:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    new-instance v0, Lt9/x;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->j:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->k:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->q:Z

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->v:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->o:J

    return-wide p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->discardBuffer(JZ)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->I()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->r0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->y0(J)V

    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return-wide p1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/p;->O(J)Z

    move-result v1

    if-eqz v1, :cond_4

    return-wide p1

    :cond_4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->y0(J)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->h(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-wide p1
.end method
