.class public final Ly1/u1;
.super Ljava/lang/Object;

# interfaces
.implements Ly1/c4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly1/u1$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/google/common/base/q;

.field private static final j:Ljava/util/Random;


# instance fields
.field private final a:Landroidx/media3/common/e0$c;

.field private final b:Landroidx/media3/common/e0$b;

.field private final c:Ljava/util/HashMap;

.field private final d:Lcom/google/common/base/q;

.field private e:Ly1/c4$a;

.field private f:Landroidx/media3/common/e0;

.field private g:Ljava/lang/String;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly1/t1;

    invoke-direct {v0}, Ly1/t1;-><init>()V

    sput-object v0, Ly1/u1;->i:Lcom/google/common/base/q;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ly1/u1;->j:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ly1/u1;->i:Lcom/google/common/base/q;

    invoke-direct {p0, v0}, Ly1/u1;-><init>(Lcom/google/common/base/q;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/u1;->d:Lcom/google/common/base/q;

    new-instance p1, Landroidx/media3/common/e0$c;

    invoke-direct {p1}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object p1, p0, Ly1/u1;->a:Landroidx/media3/common/e0$c;

    new-instance p1, Landroidx/media3/common/e0$b;

    invoke-direct {p1}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object p1, p0, Ly1/u1;->b:Landroidx/media3/common/e0$b;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ly1/u1;->c:Ljava/util/HashMap;

    sget-object p1, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    iput-object p1, p0, Ly1/u1;->f:Landroidx/media3/common/e0;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ly1/u1;->h:J

    return-void
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ly1/u1;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Ly1/u1;)J
    .locals 2

    invoke-direct {p0}, Ly1/u1;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic j(Ly1/u1;)Landroidx/media3/common/e0$c;
    .locals 0

    iget-object p0, p0, Ly1/u1;->a:Landroidx/media3/common/e0$c;

    return-object p0
.end method

.method static synthetic k(Ly1/u1;)Landroidx/media3/common/e0$b;
    .locals 0

    iget-object p0, p0, Ly1/u1;->b:Landroidx/media3/common/e0$b;

    return-object p0
.end method

.method private l(Ly1/u1$a;)V
    .locals 4

    invoke-static {p1}, Ly1/u1$a;->b(Ly1/u1$a;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p1}, Ly1/u1$a;->b(Ly1/u1$a;)J

    move-result-wide v0

    iput-wide v0, p0, Ly1/u1;->h:J

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ly1/u1;->g:Ljava/lang/String;

    return-void
.end method

.method private static m()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    sget-object v1, Ly1/u1;->j:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()J
    .locals 5

    iget-object v0, p0, Ly1/u1;->c:Ljava/util/HashMap;

    iget-object v1, p0, Ly1/u1;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/u1$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ly1/u1$a;->b(Ly1/u1$a;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {v0}, Ly1/u1$a;->b(Ly1/u1$a;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ly1/u1;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private o(ILandroidx/media3/exoplayer/source/r$b;)Ly1/u1$a;
    .locals 9

    iget-object v0, p0, Ly1/u1;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly1/u1$a;

    invoke-virtual {v4, p1, p2}, Ly1/u1$a;->k(ILandroidx/media3/exoplayer/source/r$b;)V

    invoke-virtual {v4, p1, p2}, Ly1/u1$a;->i(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ly1/u1$a;->b(Ly1/u1$a;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    if-nez v7, :cond_0

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/u1$a;

    invoke-static {v5}, Ly1/u1$a;->h(Ly1/u1$a;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ly1/u1$a;->h(Ly1/u1$a;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    move-object v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Ly1/u1;->d:Lcom/google/common/base/q;

    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ly1/u1$a;

    invoke-direct {v1, p0, v0, p1, p2}, Ly1/u1$a;-><init>(Ly1/u1;Ljava/lang/String;ILandroidx/media3/exoplayer/source/r$b;)V

    iget-object p1, p0, Ly1/u1;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method private p(Ly1/c$a;)V
    .locals 6

    iget-object v0, p1, Ly1/c$a;->b:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ly1/u1;->g:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ly1/u1;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/u1$a;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/u1$a;

    invoke-direct {p0, p1}, Ly1/u1;->l(Ly1/u1$a;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ly1/u1;->c:Ljava/util/HashMap;

    iget-object v1, p0, Ly1/u1;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/u1$a;

    iget v1, p1, Ly1/c$a;->c:I

    iget-object v2, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {p0, v1, v2}, Ly1/u1;->o(ILandroidx/media3/exoplayer/source/r$b;)Ly1/u1$a;

    move-result-object v1

    invoke-static {v1}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ly1/u1;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ly1/u1;->c(Ly1/c$a;)V

    iget-object v2, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    invoke-static {v0}, Ly1/u1$a;->b(Ly1/u1$a;)J

    move-result-wide v2

    iget-object v4, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v4, v4, Landroidx/media3/exoplayer/source/r$b;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-static {v0}, Ly1/u1$a;->h(Ly1/u1$a;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ly1/u1$a;->h(Ly1/u1$a;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v2

    iget v2, v2, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget-object v3, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget v3, v3, Landroidx/media3/exoplayer/source/r$b;->b:I

    if-ne v2, v3, :cond_2

    invoke-static {v0}, Ly1/u1$a;->h(Ly1/u1$a;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/source/r$b;->c:I

    iget-object v2, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget v2, v2, Landroidx/media3/exoplayer/source/r$b;->c:I

    if-eq v0, v2, :cond_3

    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, p1, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget-object v3, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-wide v4, v2, Landroidx/media3/exoplayer/source/r$b;->d:J

    invoke-direct {v0, v3, v4, v5}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;J)V

    iget v2, p1, Ly1/c$a;->c:I

    invoke-direct {p0, v2, v0}, Ly1/u1;->o(ILandroidx/media3/exoplayer/source/r$b;)Ly1/u1$a;

    move-result-object v0

    iget-object v2, p0, Ly1/u1;->e:Ly1/c4$a;

    invoke-static {v0}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Ly1/c4$a;->H(Ly1/c$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly1/u1;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized b(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Ly1/u1;->b:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/e0$b;->c:I

    invoke-direct {p0, p1, p2}, Ly1/u1;->o(ILandroidx/media3/exoplayer/source/r$b;)Ly1/u1$a;

    move-result-object p1

    invoke-static {p1}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Ly1/c$a;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Ly1/u1;->e:Ly1/c4$a;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Ly1/c$a;->b:Landroidx/media3/common/e0;

    invoke-virtual {v2}, Landroidx/media3/common/e0;->q()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, v0, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    if-eqz v2, :cond_2

    iget-wide v2, v2, Landroidx/media3/exoplayer/source/r$b;->d:J

    invoke-direct/range {p0 .. p0}, Ly1/u1;->n()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v2, v1, Ly1/u1;->c:Ljava/util/HashMap;

    iget-object v3, v1, Ly1/u1;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1/u1$a;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ly1/u1$a;->b(Ly1/u1$a;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-static {v2}, Ly1/u1$a;->c(Ly1/u1$a;)I

    move-result v2

    iget v3, v0, Ly1/c$a;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, v3, :cond_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    :try_start_3
    iget v2, v0, Ly1/c$a;->c:I

    iget-object v3, v0, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {v1, v2, v3}, Ly1/u1;->o(ILandroidx/media3/exoplayer/source/r$b;)Ly1/u1$a;

    move-result-object v2

    iget-object v3, v1, Ly1/u1;->g:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-static {v2}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ly1/u1;->g:Ljava/lang/String;

    :cond_3
    iget-object v3, v0, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v10, Landroidx/media3/exoplayer/source/r$b;

    iget-object v3, v0, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget-object v5, v3, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-wide v6, v3, Landroidx/media3/exoplayer/source/r$b;->d:J

    iget v3, v3, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-direct {v10, v5, v6, v7, v3}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;JI)V

    iget v3, v0, Ly1/c$a;->c:I

    invoke-direct {v1, v3, v10}, Ly1/u1;->o(ILandroidx/media3/exoplayer/source/r$b;)Ly1/u1$a;

    move-result-object v3

    invoke-static {v3}, Ly1/u1$a;->d(Ly1/u1$a;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3, v4}, Ly1/u1$a;->e(Ly1/u1$a;Z)Z

    iget-object v5, v0, Ly1/c$a;->b:Landroidx/media3/common/e0;

    iget-object v6, v0, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v7, v1, Ly1/u1;->b:Landroidx/media3/common/e0$b;

    invoke-virtual {v5, v6, v7}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v5, v1, Ly1/u1;->b:Landroidx/media3/common/e0$b;

    iget-object v6, v0, Ly1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    iget v6, v6, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {v5, v6}, Landroidx/media3/common/e0$b;->f(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v5

    iget-object v7, v1, Ly1/u1;->b:Landroidx/media3/common/e0$b;

    invoke-virtual {v7}, Landroidx/media3/common/e0$b;->n()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    new-instance v15, Ly1/c$a;

    iget-wide v6, v0, Ly1/c$a;->a:J

    iget-object v8, v0, Ly1/c$a;->b:Landroidx/media3/common/e0;

    iget v9, v0, Ly1/c$a;->c:I

    iget-object v13, v0, Ly1/c$a;->f:Landroidx/media3/common/e0;

    iget v14, v0, Ly1/c$a;->g:I

    iget-object v5, v0, Ly1/c$a;->h:Landroidx/media3/exoplayer/source/r$b;

    move-object/from16 v16, v5

    iget-wide v4, v0, Ly1/c$a;->i:J

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    iget-wide v2, v0, Ly1/c$a;->j:J

    move-wide/from16 v22, v4

    move-object/from16 v4, v16

    move-wide/from16 v16, v22

    move-object v5, v15

    move-object v0, v15

    move-object v15, v4

    move-wide/from16 v18, v2

    invoke-direct/range {v5 .. v19}, Ly1/c$a;-><init>(JLandroidx/media3/common/e0;ILandroidx/media3/exoplayer/source/r$b;JLandroidx/media3/common/e0;ILandroidx/media3/exoplayer/source/r$b;JJ)V

    iget-object v2, v1, Ly1/u1;->e:Ly1/c4$a;

    invoke-static/range {v21 .. v21}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ly1/c4$a;->C(Ly1/c$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object/from16 v20, v2

    :goto_0
    invoke-static/range {v20 .. v20}, Ly1/u1$a;->d(Ly1/u1$a;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object/from16 v0, v20

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ly1/u1$a;->e(Ly1/u1$a;Z)Z

    iget-object v2, v1, Ly1/u1;->e:Ly1/c4$a;

    invoke-static {v0}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3}, Ly1/c4$a;->C(Ly1/c$a;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v4, p1

    move-object/from16 v0, v20

    :goto_1
    invoke-static {v0}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Ly1/u1;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Ly1/u1$a;->f(Ly1/u1$a;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ly1/u1$a;->g(Ly1/u1$a;Z)Z

    iget-object v2, v1, Ly1/u1;->e:Ly1/c4$a;

    invoke-static {v0}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ly1/c4$a;->e(Ly1/c$a;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized d(Ly1/c$a;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly1/u1;->e:Ly1/c4$a;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object v2, p0, Ly1/u1;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/u1$a;

    invoke-virtual {v3, p1}, Ly1/u1$a;->j(Ly1/c$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-static {v3}, Ly1/u1$a;->d(Ly1/u1$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ly1/u1;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz p2, :cond_2

    if-eqz v4, :cond_2

    invoke-static {v3}, Ly1/u1$a;->f(Ly1/u1$a;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    move v5, v0

    :goto_2
    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Ly1/u1;->l(Ly1/u1$a;)V

    :cond_3
    iget-object v4, p0, Ly1/u1;->e:Ly1/c4$a;

    invoke-static {v3}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, p1, v3, v5}, Ly1/c4$a;->l(Ly1/c$a;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Ly1/u1;->p(Ly1/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(Ly1/c$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly1/u1;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ly1/u1;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/u1$a;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/u1$a;

    invoke-direct {p0, v0}, Ly1/u1;->l(Ly1/u1$a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Ly1/u1;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/u1$a;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-static {v1}, Ly1/u1$a;->d(Ly1/u1$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ly1/u1;->e:Ly1/c4$a;

    if-eqz v2, :cond_1

    invoke-static {v1}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Ly1/c4$a;->l(Ly1/c$a;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized f(Ly1/c$a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly1/u1;->e:Ly1/c4$a;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ly1/u1;->f:Landroidx/media3/common/e0;

    iget-object v1, p1, Ly1/c$a;->b:Landroidx/media3/common/e0;

    iput-object v1, p0, Ly1/u1;->f:Landroidx/media3/common/e0;

    iget-object v1, p0, Ly1/u1;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1/u1$a;

    iget-object v3, p0, Ly1/u1;->f:Landroidx/media3/common/e0;

    invoke-virtual {v2, v0, v3}, Ly1/u1$a;->m(Landroidx/media3/common/e0;Landroidx/media3/common/e0;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ly1/u1$a;->j(Ly1/c$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-static {v2}, Ly1/u1$a;->d(Ly1/u1$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ly1/u1;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Ly1/u1;->l(Ly1/u1$a;)V

    :cond_2
    iget-object v3, p0, Ly1/u1;->e:Ly1/c4$a;

    invoke-static {v2}, Ly1/u1$a;->a(Ly1/u1$a;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4}, Ly1/c4$a;->l(Ly1/c$a;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Ly1/u1;->p(Ly1/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g(Ly1/c4$a;)V
    .locals 0

    iput-object p1, p0, Ly1/u1;->e:Ly1/c4$a;

    return-void
.end method
