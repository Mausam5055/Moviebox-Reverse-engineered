.class public final Landroidx/media3/datasource/cache/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/a$b;,
        Landroidx/media3/datasource/cache/a$c;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/cache/Cache;

.field private final b:Landroidx/media3/datasource/a;

.field private final c:Landroidx/media3/datasource/a;

.field private final d:Landroidx/media3/datasource/a;

.field private final e:Landroidx/media3/datasource/cache/g;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private i:Landroid/net/Uri;

.field private j:Lw1/h;

.field private k:Lw1/h;

.field private l:Landroidx/media3/datasource/a;

.field private m:J

.field private n:J

.field private o:J

.field private p:Landroidx/media3/datasource/cache/h;

.field private q:Z

.field private r:Z

.field private s:J

.field private t:J


# direct methods
.method private constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/a;Landroidx/media3/datasource/a;Lw1/d;Landroidx/media3/datasource/cache/g;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    iput-object p3, p0, Landroidx/media3/datasource/cache/a;->b:Landroidx/media3/datasource/a;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    sget-object p5, Landroidx/media3/datasource/cache/g;->a:Landroidx/media3/datasource/cache/g;

    :goto_0
    iput-object p5, p0, Landroidx/media3/datasource/cache/a;->e:Landroidx/media3/datasource/cache/g;

    and-int/lit8 p1, p6, 0x1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    move p1, p5

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/a;->f:Z

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_2

    move p1, p5

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_2
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/a;->g:Z

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_3

    move p3, p5

    :cond_3
    iput-boolean p3, p0, Landroidx/media3/datasource/cache/a;->h:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_6

    if-eqz p7, :cond_4

    new-instance p3, Lw1/k;

    invoke-direct {p3, p2, p7, p8}, Lw1/k;-><init>(Landroidx/media3/datasource/a;Landroidx/media3/common/PriorityTaskManager;I)V

    move-object p2, p3

    :cond_4
    iput-object p2, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    if-eqz p4, :cond_5

    new-instance p1, Lw1/m;

    invoke-direct {p1, p2, p4}, Lw1/m;-><init>(Landroidx/media3/datasource/a;Lw1/d;)V

    :cond_5
    iput-object p1, p0, Landroidx/media3/datasource/cache/a;->c:Landroidx/media3/datasource/a;

    goto :goto_3

    :cond_6
    sget-object p2, Landroidx/media3/datasource/f;->a:Landroidx/media3/datasource/f;

    iput-object p2, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    iput-object p1, p0, Landroidx/media3/datasource/cache/a;->c:Landroidx/media3/datasource/a;

    :goto_3
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/a;Landroidx/media3/datasource/a;Lw1/d;Landroidx/media3/datasource/cache/g;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/a$b;Landroidx/media3/datasource/cache/a$a;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroidx/media3/datasource/cache/a;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/a;Landroidx/media3/datasource/a;Lw1/d;Landroidx/media3/datasource/cache/g;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/a$b;)V

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroidx/media3/datasource/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->k:Lw1/h;

    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v2, v0}, Landroidx/media3/datasource/cache/Cache;->g(Landroidx/media3/datasource/cache/h;)V

    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->k:Lw1/h;

    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    iget-object v2, p0, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v3, v2}, Landroidx/media3/datasource/cache/Cache;->g(Landroidx/media3/datasource/cache/h;)V

    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    :cond_2
    throw v0
.end method

.method private static g(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    invoke-interface {p0, p1}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/m;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/datasource/cache/l;->b(Landroidx/media3/datasource/cache/m;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method

.method private h(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Landroidx/media3/datasource/cache/Cache$CacheException;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/datasource/cache/a;->q:Z

    :cond_1
    return-void
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    iget-object v1, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    iget-object v1, p0, Landroidx/media3/datasource/cache/a;->b:Landroidx/media3/datasource/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private l()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    iget-object v1, p0, Landroidx/media3/datasource/cache/a;->c:Landroidx/media3/datasource/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()V
    .locals 0

    return-void
.end method

.method private n(I)V
    .locals 0

    return-void
.end method

.method private o(Lw1/h;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lw1/h;->i:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, v1, Landroidx/media3/datasource/cache/a;->r:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    move-object v3, v9

    goto :goto_0

    :cond_0
    iget-boolean v3, v1, Landroidx/media3/datasource/cache/a;->f:Z

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    iget-wide v5, v1, Landroidx/media3/datasource/cache/a;->n:J

    iget-wide v7, v1, Landroidx/media3/datasource/cache/a;->o:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Landroidx/media3/datasource/cache/Cache;->c(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/h;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_1
    iget-object v3, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    iget-wide v5, v1, Landroidx/media3/datasource/cache/a;->n:J

    iget-wide v7, v1, Landroidx/media3/datasource/cache/a;->o:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Landroidx/media3/datasource/cache/Cache;->b(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/h;

    move-result-object v3

    :goto_0
    const-wide/16 v4, -0x1

    if-nez v3, :cond_2

    iget-object v6, v1, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    invoke-virtual/range {p1 .. p1}, Lw1/h;->a()Lw1/h$b;

    move-result-object v7

    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->n:J

    invoke-virtual {v7, v10, v11}, Lw1/h$b;->h(J)Lw1/h$b;

    move-result-object v7

    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->o:J

    invoke-virtual {v7, v10, v11}, Lw1/h$b;->g(J)Lw1/h$b;

    move-result-object v7

    invoke-virtual {v7}, Lw1/h$b;->a()Lw1/h;

    move-result-object v7

    goto/16 :goto_2

    :cond_2
    iget-boolean v6, v3, Landroidx/media3/datasource/cache/h;->d:Z

    if-eqz v6, :cond_4

    iget-object v6, v3, Landroidx/media3/datasource/cache/h;->e:Ljava/io/File;

    invoke-static {v6}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    iget-wide v7, v3, Landroidx/media3/datasource/cache/h;->b:J

    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->n:J

    sub-long/2addr v10, v7

    iget-wide v12, v3, Landroidx/media3/datasource/cache/h;->c:J

    sub-long/2addr v12, v10

    iget-wide v14, v1, Landroidx/media3/datasource/cache/a;->o:J

    cmp-long v16, v14, v4

    if-eqz v16, :cond_3

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lw1/h;->a()Lw1/h$b;

    move-result-object v14

    invoke-virtual {v14, v6}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lw1/h$b;->k(J)Lw1/h$b;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Lw1/h$b;->h(J)Lw1/h$b;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Lw1/h$b;->g(J)Lw1/h$b;

    move-result-object v6

    invoke-virtual {v6}, Lw1/h$b;->a()Lw1/h;

    move-result-object v7

    iget-object v6, v1, Landroidx/media3/datasource/cache/a;->b:Landroidx/media3/datasource/a;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroidx/media3/datasource/cache/h;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, v1, Landroidx/media3/datasource/cache/a;->o:J

    goto :goto_1

    :cond_5
    iget-wide v6, v3, Landroidx/media3/datasource/cache/h;->c:J

    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->o:J

    cmp-long v8, v10, v4

    if-eqz v8, :cond_6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lw1/h;->a()Lw1/h$b;

    move-result-object v8

    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->n:J

    invoke-virtual {v8, v10, v11}, Lw1/h$b;->h(J)Lw1/h$b;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lw1/h$b;->g(J)Lw1/h$b;

    move-result-object v6

    invoke-virtual {v6}, Lw1/h$b;->a()Lw1/h;

    move-result-object v7

    iget-object v6, v1, Landroidx/media3/datasource/cache/a;->c:Landroidx/media3/datasource/a;

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    iget-object v6, v1, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    iget-object v8, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v8, v3}, Landroidx/media3/datasource/cache/Cache;->g(Landroidx/media3/datasource/cache/h;)V

    move-object v3, v9

    :goto_2
    iget-boolean v8, v1, Landroidx/media3/datasource/cache/a;->r:Z

    if-nez v8, :cond_8

    iget-object v8, v1, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    if-ne v6, v8, :cond_8

    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->n:J

    const-wide/32 v12, 0x19000

    add-long/2addr v10, v12

    goto :goto_3

    :cond_8
    const-wide v10, 0x7fffffffffffffffL

    :goto_3
    iput-wide v10, v1, Landroidx/media3/datasource/cache/a;->t:J

    if-eqz p2, :cond_b

    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/a;->i()Z

    move-result v8

    invoke-static {v8}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v8, v1, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    if-ne v6, v8, :cond_9

    return-void

    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static {v3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/h;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/h;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v0, v3}, Landroidx/media3/datasource/cache/Cache;->g(Landroidx/media3/datasource/cache/h;)V

    :cond_a
    throw v2

    :cond_b
    :goto_4
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroidx/media3/datasource/cache/h;->b()Z

    move-result v8

    if-eqz v8, :cond_c

    iput-object v3, v1, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    :cond_c
    iput-object v6, v1, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    iput-object v7, v1, Landroidx/media3/datasource/cache/a;->k:Lw1/h;

    const-wide/16 v10, 0x0

    iput-wide v10, v1, Landroidx/media3/datasource/cache/a;->m:J

    invoke-interface {v6, v7}, Landroidx/media3/datasource/a;->a(Lw1/h;)J

    move-result-wide v10

    new-instance v3, Landroidx/media3/datasource/cache/n;

    invoke-direct {v3}, Landroidx/media3/datasource/cache/n;-><init>()V

    iget-wide v7, v7, Lw1/h;->h:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_d

    cmp-long v4, v10, v4

    if-eqz v4, :cond_d

    iput-wide v10, v1, Landroidx/media3/datasource/cache/a;->o:J

    iget-wide v4, v1, Landroidx/media3/datasource/cache/a;->n:J

    add-long/2addr v4, v10

    invoke-static {v3, v4, v5}, Landroidx/media3/datasource/cache/n;->g(Landroidx/media3/datasource/cache/n;J)Landroidx/media3/datasource/cache/n;

    :cond_d
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/a;->k()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v6}, Landroidx/media3/datasource/a;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    iget-object v0, v0, Lw1/h;->a:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v9, v1, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    :cond_e
    invoke-static {v3, v9}, Landroidx/media3/datasource/cache/n;->h(Landroidx/media3/datasource/cache/n;Landroid/net/Uri;)Landroidx/media3/datasource/cache/n;

    :cond_f
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/a;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v0, v2, v3}, Landroidx/media3/datasource/cache/Cache;->h(Ljava/lang/String;Landroidx/media3/datasource/cache/n;)V

    :cond_10
    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/datasource/cache/a;->o:J

    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/datasource/cache/n;

    invoke-direct {v0}, Landroidx/media3/datasource/cache/n;-><init>()V

    iget-wide v1, p0, Landroidx/media3/datasource/cache/a;->n:J

    invoke-static {v0, v1, v2}, Landroidx/media3/datasource/cache/n;->g(Landroidx/media3/datasource/cache/n;J)Landroidx/media3/datasource/cache/n;

    iget-object v1, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v1, p1, v0}, Landroidx/media3/datasource/cache/Cache;->h(Ljava/lang/String;Landroidx/media3/datasource/cache/n;)V

    :cond_0
    return-void
.end method

.method private q(Lw1/h;)I
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/a;->q:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/a;->h:Z

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lw1/h;->h:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public a(Lw1/h;)J
    .locals 11

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->e:Landroidx/media3/datasource/cache/g;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lw1/h;->a()Lw1/h$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw1/h$b;->f(Ljava/lang/String;)Lw1/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lw1/h$b;->a()Lw1/h;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->j:Lw1/h;

    iget-object v2, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    iget-object v3, v1, Lw1/h;->a:Landroid/net/Uri;

    invoke-static {v2, v0, v3}, Landroidx/media3/datasource/cache/a;->g(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    iget-wide v2, p1, Lw1/h;->g:J

    iput-wide v2, p0, Landroidx/media3/datasource/cache/a;->n:J

    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/a;->q(Lw1/h;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroidx/media3/datasource/cache/a;->r:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Landroidx/media3/datasource/cache/a;->n(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_1
    iget-boolean v2, p0, Landroidx/media3/datasource/cache/a;->r:Z

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    if-eqz v2, :cond_2

    iput-wide v7, p0, Landroidx/media3/datasource/cache/a;->o:J

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v2, v0}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/m;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/cache/l;->a(Landroidx/media3/datasource/cache/m;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/datasource/cache/a;->o:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_4

    iget-wide v9, p1, Lw1/h;->g:J

    sub-long/2addr v2, v9

    iput-wide v2, p0, Landroidx/media3/datasource/cache/a;->o:J

    cmp-long v0, v2, v5

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p1

    :cond_4
    :goto_2
    iget-wide v2, p1, Lw1/h;->h:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_6

    iget-wide v9, p0, Landroidx/media3/datasource/cache/a;->o:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_3
    iput-wide v2, p0, Landroidx/media3/datasource/cache/a;->o:J

    :cond_6
    iget-wide v2, p0, Landroidx/media3/datasource/cache/a;->o:J

    cmp-long v0, v2, v5

    if-gtz v0, :cond_7

    cmp-long v0, v2, v7

    if-nez v0, :cond_8

    :cond_7
    invoke-direct {p0, v1, v4}, Landroidx/media3/datasource/cache/a;->o(Lw1/h;Z)V

    :cond_8
    iget-wide v0, p1, Lw1/h;->h:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    iget-wide v0, p0, Landroidx/media3/datasource/cache/a;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    return-wide v0

    :goto_5
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/a;->h(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public c(Lw1/n;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->b:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/cache/a;->j:Lw1/h;

    iput-object v0, p0, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/datasource/cache/a;->n:J

    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->m()V

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/a;->h(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e()Landroidx/media3/datasource/cache/Cache;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    return-object v0
.end method

.method public f()Landroidx/media3/datasource/cache/g;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->e:Landroidx/media3/datasource/cache/g;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 15

    move-object v1, p0

    move/from16 v0, p3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-wide v3, v1, Landroidx/media3/datasource/cache/a;->o:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, -0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    iget-object v3, v1, Landroidx/media3/datasource/cache/a;->j:Lw1/h;

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/h;

    iget-object v7, v1, Landroidx/media3/datasource/cache/a;->k:Lw1/h;

    invoke-static {v7}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw1/h;

    :try_start_0
    iget-wide v8, v1, Landroidx/media3/datasource/cache/a;->n:J

    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->t:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Landroidx/media3/datasource/cache/a;->o(Lw1/h;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v8, v1, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    invoke-static {v8}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/datasource/a;

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-interface {v8, v9, v10, v0}, Landroidx/media3/common/j;->read([BII)I

    move-result v8

    const-wide/16 v11, -0x1

    if-eq v8, v4, :cond_4

    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v2, v1, Landroidx/media3/datasource/cache/a;->s:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/a;->s:J

    :cond_3
    iget-wide v2, v1, Landroidx/media3/datasource/cache/a;->n:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/a;->n:J

    iget-wide v2, v1, Landroidx/media3/datasource/cache/a;->m:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/a;->m:J

    iget-wide v2, v1, Landroidx/media3/datasource/cache/a;->o:J

    cmp-long v0, v2, v11

    if-eqz v0, :cond_7

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/a;->o:J

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->k()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-wide v13, v7, Lw1/h;->h:J

    cmp-long v4, v13, v11

    if-eqz v4, :cond_5

    iget-wide v11, v1, Landroidx/media3/datasource/cache/a;->m:J

    cmp-long v4, v11, v13

    if-gez v4, :cond_6

    :cond_5
    iget-object v0, v3, Lw1/h;->i:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/a;->p(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-wide v11, v1, Landroidx/media3/datasource/cache/a;->o:J

    cmp-long v4, v11, v5

    if-gtz v4, :cond_8

    const-wide/16 v4, -0x1

    cmp-long v4, v11, v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    return v8

    :cond_8
    :goto_2
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->d()V

    invoke-direct {p0, v3, v2}, Landroidx/media3/datasource/cache/a;->o(Lw1/h;Z)V

    invoke-virtual/range {p0 .. p3}, Landroidx/media3/datasource/cache/a;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_3
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/a;->h(Ljava/lang/Throwable;)V

    throw v0
.end method
