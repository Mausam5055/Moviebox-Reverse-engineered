.class final Landroidx/media3/exoplayer/source/a0$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$d;
.implements Landroidx/media3/exoplayer/source/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroid/net/Uri;

.field private final c:Lw1/l;

.field private final d:Landroidx/media3/exoplayer/source/v;

.field private final e:Ll2/t;

.field private final f:Landroidx/media3/common/util/l;

.field private final g:Ll2/l0;

.field private volatile h:Z

.field private i:Z

.field private j:J

.field private k:Lw1/h;

.field private l:Ll2/s0;

.field private m:Z

.field final synthetic n:Landroidx/media3/exoplayer/source/a0;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/a0;Landroid/net/Uri;Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/source/v;Ll2/t;Landroidx/media3/common/util/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/a0$b;->b:Landroid/net/Uri;

    new-instance p1, Lw1/l;

    invoke-direct {p1, p3}, Lw1/l;-><init>(Landroidx/media3/datasource/a;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/a0$b;->e:Ll2/t;

    iput-object p6, p0, Landroidx/media3/exoplayer/source/a0$b;->f:Landroidx/media3/common/util/l;

    new-instance p1, Ll2/l0;

    invoke-direct {p1}, Ll2/l0;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$b;->g:Ll2/l0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/a0$b;->i:Z

    invoke-static {}, Lg2/i;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/a0$b;->a:J

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/a0$b;->g(J)Lw1/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$b;->k:Lw1/h;

    return-void
.end method

.method static synthetic b(Landroidx/media3/exoplayer/source/a0$b;)Lw1/l;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    return-object p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/source/a0$b;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/a0$b;->a:J

    return-wide v0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/source/a0$b;)Lw1/h;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/a0$b;->k:Lw1/h;

    return-object p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/source/a0$b;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/a0$b;->j:J

    return-wide v0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/source/a0$b;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/a0$b;->h(JJ)V

    return-void
.end method

.method private g(J)Lw1/h;
    .locals 2

    new-instance v0, Lw1/h$b;

    invoke-direct {v0}, Lw1/h$b;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a0$b;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lw1/h$b;->h(J)Lw1/h$b;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {p2}, Landroidx/media3/exoplayer/source/a0;->t(Landroidx/media3/exoplayer/source/a0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw1/h$b;->f(Ljava/lang/String;)Lw1/h$b;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lw1/h$b;->b(I)Lw1/h$b;

    move-result-object p1

    invoke-static {}, Landroidx/media3/exoplayer/source/a0;->s()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw1/h$b;->e(Ljava/util/Map;)Lw1/h$b;

    move-result-object p1

    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    move-result-object p1

    return-object p1
.end method

.method private h(JJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$b;->g:Ll2/l0;

    iput-wide p1, v0, Ll2/l0;->a:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/a0$b;->j:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/a0$b;->i:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/a0$b;->m:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 11

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/a0$b;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/a0$b;->j:J

    :goto_0
    move-wide v5, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/a0;->r(Landroidx/media3/exoplayer/source/a0;Z)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/a0$b;->j:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v8

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$b;->l:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ll2/s0;

    invoke-interface {v4, p1, v8}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Ll2/s0;->d(JIIILl2/s0$a;)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/a0$b;->m:Z

    return-void
.end method

.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/a0$b;->h:Z

    return-void
.end method

.method public load()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-nez v2, :cond_c

    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/a0$b;->h:Z

    if-nez v3, :cond_c

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    :try_start_0
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Ll2/l0;

    iget-wide v13, v6, Ll2/l0;->a:J

    invoke-direct {v1, v13, v14}, Landroidx/media3/exoplayer/source/a0$b;->g(J)Lw1/h;

    move-result-object v6

    iput-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->k:Lw1/h;

    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    invoke-virtual {v7, v6}, Lw1/l;->a(Lw1/h;)J

    move-result-wide v6

    iget-boolean v8, v1, Landroidx/media3/exoplayer/source/a0$b;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/v;->b()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Ll2/l0;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/v;->b()J

    move-result-wide v2

    iput-wide v2, v0, Ll2/l0;->a:J

    :cond_1
    :goto_1
    iget-object v0, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    invoke-static {v0}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    goto/16 :goto_6

    :cond_2
    cmp-long v8, v6, v4

    if-eqz v8, :cond_3

    add-long/2addr v6, v13

    :try_start_1
    iget-object v8, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {v8}, Landroidx/media3/exoplayer/source/a0;->v(Landroidx/media3/exoplayer/source/a0;)V

    :cond_3
    move-wide v15, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :goto_2
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    invoke-virtual {v7}, Lw1/l;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Ly2/b;->b(Ljava/util/Map;)Ly2/b;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/media3/exoplayer/source/a0;->x(Landroidx/media3/exoplayer/source/a0;Ly2/b;)Ly2/b;

    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {v7}, Landroidx/media3/exoplayer/source/a0;->w(Landroidx/media3/exoplayer/source/a0;)Ly2/b;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {v7}, Landroidx/media3/exoplayer/source/a0;->w(Landroidx/media3/exoplayer/source/a0;)Ly2/b;

    move-result-object v7

    iget v7, v7, Ly2/b;->f:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    new-instance v6, Landroidx/media3/exoplayer/source/n;

    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    iget-object v8, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {v8}, Landroidx/media3/exoplayer/source/a0;->w(Landroidx/media3/exoplayer/source/a0;)Ly2/b;

    move-result-object v8

    iget v8, v8, Ly2/b;->f:I

    invoke-direct {v6, v7, v8, v1}, Landroidx/media3/exoplayer/source/n;-><init>(Landroidx/media3/datasource/a;ILandroidx/media3/exoplayer/source/n$a;)V

    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/a0;->E()Ll2/s0;

    move-result-object v7

    iput-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->l:Ll2/s0;

    invoke-static {}, Landroidx/media3/exoplayer/source/a0;->y()Landroidx/media3/common/r;

    move-result-object v8

    invoke-interface {v7, v8}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    :cond_4
    move-object v8, v6

    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    iget-object v9, v1, Landroidx/media3/exoplayer/source/a0$b;->b:Landroid/net/Uri;

    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    invoke-virtual {v6}, Lw1/l;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->e:Ll2/t;

    move-wide v11, v13

    move-wide v4, v13

    move-wide v13, v15

    move-object v15, v6

    invoke-interface/range {v7 .. v15}, Landroidx/media3/exoplayer/source/v;->c(Landroidx/media3/common/j;Landroid/net/Uri;Ljava/util/Map;JJLl2/t;)V

    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {v6}, Landroidx/media3/exoplayer/source/a0;->w(Landroidx/media3/exoplayer/source/a0;)Ly2/b;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    invoke-interface {v6}, Landroidx/media3/exoplayer/source/v;->a()V

    :cond_5
    iget-boolean v6, v1, Landroidx/media3/exoplayer/source/a0$b;->i:Z

    if-eqz v6, :cond_6

    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/a0$b;->j:J

    invoke-interface {v6, v4, v5, v7, v8}, Landroidx/media3/exoplayer/source/v;->seek(JJ)V

    iput-boolean v0, v1, Landroidx/media3/exoplayer/source/a0$b;->i:Z

    :cond_6
    :goto_3
    move-wide v13, v4

    :cond_7
    if-nez v2, :cond_8

    iget-boolean v4, v1, Landroidx/media3/exoplayer/source/a0$b;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_8

    :try_start_2
    iget-object v4, v1, Landroidx/media3/exoplayer/source/a0$b;->f:Landroidx/media3/common/util/l;

    invoke-virtual {v4}, Landroidx/media3/common/util/l;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    iget-object v5, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Ll2/l0;

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/source/v;->d(Ll2/l0;)I

    move-result v2

    iget-object v4, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/v;->b()J

    move-result-wide v4

    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {v6}, Landroidx/media3/exoplayer/source/a0;->l(Landroidx/media3/exoplayer/source/a0;)J

    move-result-wide v6

    add-long/2addr v6, v13

    cmp-long v6, v4, v6

    if-lez v6, :cond_7

    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->f:Landroidx/media3/common/util/l;

    invoke-virtual {v6}, Landroidx/media3/common/util/l;->d()Z

    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {v6}, Landroidx/media3/exoplayer/source/a0;->n(Landroidx/media3/exoplayer/source/a0;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    invoke-static {v7}, Landroidx/media3/exoplayer/source/a0;->m(Landroidx/media3/exoplayer/source/a0;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    if-ne v2, v3, :cond_9

    move v2, v0

    goto :goto_4

    :cond_9
    iget-object v3, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    invoke-interface {v3}, Landroidx/media3/exoplayer/source/v;->b()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    iget-object v3, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Ll2/l0;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/v;->b()J

    move-result-wide v4

    iput-wide v4, v3, Ll2/l0;->a:J

    :cond_a
    :goto_4
    iget-object v3, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    invoke-static {v3}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    goto/16 :goto_0

    :goto_5
    if-eq v2, v3, :cond_b

    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/v;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Ll2/l0;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    invoke-interface {v3}, Landroidx/media3/exoplayer/source/v;->b()J

    move-result-wide v3

    iput-wide v3, v2, Ll2/l0;->a:J

    :cond_b
    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    invoke-static {v2}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    throw v0

    :cond_c
    :goto_6
    return-void
.end method
