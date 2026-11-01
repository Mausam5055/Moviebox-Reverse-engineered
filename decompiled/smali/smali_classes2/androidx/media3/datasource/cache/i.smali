.class public final Landroidx/media3/datasource/cache/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/i$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/cache/a;

.field private final b:Landroidx/media3/datasource/cache/Cache;

.field private final c:Lw1/h;

.field private final d:Ljava/lang/String;

.field private final e:[B

.field private final f:Landroidx/media3/datasource/cache/i$a;

.field private g:J

.field private h:J

.field private i:J

.field private volatile j:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/a;Lw1/h;[BLandroidx/media3/datasource/cache/i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/i;->a:Landroidx/media3/datasource/cache/a;

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/a;->e()Landroidx/media3/datasource/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/cache/i;->b:Landroidx/media3/datasource/cache/Cache;

    iput-object p2, p0, Landroidx/media3/datasource/cache/i;->c:Lw1/h;

    if-nez p3, :cond_0

    const/high16 p3, 0x20000

    new-array p3, p3, [B

    :cond_0
    iput-object p3, p0, Landroidx/media3/datasource/cache/i;->e:[B

    iput-object p4, p0, Landroidx/media3/datasource/cache/i;->f:Landroidx/media3/datasource/cache/i$a;

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/a;->f()Landroidx/media3/datasource/cache/g;

    move-result-object p1

    invoke-interface {p1, p2}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cache/i;->d:Ljava/lang/String;

    iget-wide p1, p2, Lw1/h;->g:J

    iput-wide p1, p0, Landroidx/media3/datasource/cache/i;->g:J

    return-void
.end method

.method private c()J
    .locals 5

    iget-wide v0, p0, Landroidx/media3/datasource/cache/i;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/datasource/cache/i;->c:Lw1/h;

    iget-wide v2, v2, Lw1/h;->g:J

    sub-long v2, v0, v2

    :goto_0
    return-wide v2
.end method

.method private d(J)V
    .locals 9

    iget-wide v0, p0, Landroidx/media3/datasource/cache/i;->i:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/datasource/cache/i;->i:J

    iget-object v2, p0, Landroidx/media3/datasource/cache/i;->f:Landroidx/media3/datasource/cache/i$a;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroidx/media3/datasource/cache/i;->c()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/datasource/cache/i;->i:J

    move-wide v7, p1

    invoke-interface/range {v2 .. v8}, Landroidx/media3/datasource/cache/i$a;->a(JJJ)V

    :cond_0
    return-void
.end method

.method private e(J)V
    .locals 8

    iget-wide v0, p0, Landroidx/media3/datasource/cache/i;->h:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Landroidx/media3/datasource/cache/i;->h:J

    iget-object v1, p0, Landroidx/media3/datasource/cache/i;->f:Landroidx/media3/datasource/cache/i$a;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/media3/datasource/cache/i;->c()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/datasource/cache/i;->i:J

    const-wide/16 v6, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media3/datasource/cache/i$a;->a(JJJ)V

    :cond_1
    return-void
.end method

.method private f(JJ)J
    .locals 6

    add-long v0, p1, p3

    iget-wide v2, p0, Landroidx/media3/datasource/cache/i;->h:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    cmp-long v0, p3, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    cmp-long v5, p3, v3

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroidx/media3/datasource/cache/i;->c:Lw1/h;

    invoke-virtual {v5}, Lw1/h;->a()Lw1/h$b;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lw1/h$b;->h(J)Lw1/h$b;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Lw1/h$b;->g(J)Lw1/h$b;

    move-result-object p3

    invoke-virtual {p3}, Lw1/h$b;->a()Lw1/h;

    move-result-object p3

    :try_start_0
    iget-object p4, p0, Landroidx/media3/datasource/cache/i;->a:Landroidx/media3/datasource/cache/a;

    invoke-virtual {p4, p3}, Landroidx/media3/datasource/cache/a;->a(Lw1/h;)J

    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p3, p0, Landroidx/media3/datasource/cache/i;->a:Landroidx/media3/datasource/cache/a;

    invoke-static {p3}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    :cond_2
    move v1, v2

    move-wide p3, v3

    :goto_2
    if-nez v1, :cond_3

    invoke-direct {p0}, Landroidx/media3/datasource/cache/i;->g()V

    iget-object p3, p0, Landroidx/media3/datasource/cache/i;->c:Lw1/h;

    invoke-virtual {p3}, Lw1/h;->a()Lw1/h$b;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lw1/h$b;->h(J)Lw1/h$b;

    move-result-object p3

    invoke-virtual {p3, v3, v4}, Lw1/h$b;->g(J)Lw1/h$b;

    move-result-object p3

    invoke-virtual {p3}, Lw1/h$b;->a()Lw1/h;

    move-result-object p3

    :try_start_1
    iget-object p4, p0, Landroidx/media3/datasource/cache/i;->a:Landroidx/media3/datasource/cache/a;

    invoke-virtual {p4, p3}, Landroidx/media3/datasource/cache/a;->a(Lw1/h;)J

    move-result-wide p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    iget-object p2, p0, Landroidx/media3/datasource/cache/i;->a:Landroidx/media3/datasource/cache/a;

    invoke-static {p2}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    throw p1

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    cmp-long v1, p3, v3

    if-eqz v1, :cond_4

    add-long/2addr p3, p1

    :try_start_2
    invoke-direct {p0, p3, p4}, Landroidx/media3/datasource/cache/i;->e(J)V

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_6

    :cond_4
    :goto_4
    move p3, v2

    move p4, p3

    :cond_5
    :goto_5
    const/4 v1, -0x1

    if-eq p3, v1, :cond_6

    invoke-direct {p0}, Landroidx/media3/datasource/cache/i;->g()V

    iget-object p3, p0, Landroidx/media3/datasource/cache/i;->a:Landroidx/media3/datasource/cache/a;

    iget-object v3, p0, Landroidx/media3/datasource/cache/i;->e:[B

    array-length v4, v3

    invoke-virtual {p3, v3, v2, v4}, Landroidx/media3/datasource/cache/a;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_5

    int-to-long v3, p3

    invoke-direct {p0, v3, v4}, Landroidx/media3/datasource/cache/i;->d(J)V

    add-int/2addr p4, p3

    goto :goto_5

    :cond_6
    if-eqz v0, :cond_7

    int-to-long v0, p4

    add-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Landroidx/media3/datasource/cache/i;->e(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :goto_6
    iget-object p2, p0, Landroidx/media3/datasource/cache/i;->a:Landroidx/media3/datasource/cache/a;

    invoke-static {p2}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    throw p1

    :cond_7
    :goto_7
    iget-object p1, p0, Landroidx/media3/datasource/cache/i;->a:Landroidx/media3/datasource/cache/a;

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/a;->close()V

    int-to-long p1, p4

    return-wide p1
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/i;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 13

    invoke-direct {p0}, Landroidx/media3/datasource/cache/i;->g()V

    iget-object v0, p0, Landroidx/media3/datasource/cache/i;->b:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/datasource/cache/i;->d:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/datasource/cache/i;->c:Lw1/h;

    iget-wide v3, v2, Lw1/h;->g:J

    iget-wide v5, v2, Lw1/h;->h:J

    move-wide v2, v3

    move-wide v4, v5

    invoke-interface/range {v0 .. v5}, Landroidx/media3/datasource/cache/Cache;->a(Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/datasource/cache/i;->i:J

    iget-object v0, p0, Landroidx/media3/datasource/cache/i;->c:Lw1/h;

    iget-wide v1, v0, Lw1/h;->h:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lw1/h;->g:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Landroidx/media3/datasource/cache/i;->h:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/i;->b:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/datasource/cache/i;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/m;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/cache/l;->a(Landroidx/media3/datasource/cache/m;)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    move-wide v0, v3

    :cond_1
    iput-wide v0, p0, Landroidx/media3/datasource/cache/i;->h:J

    :goto_0
    iget-object v5, p0, Landroidx/media3/datasource/cache/i;->f:Landroidx/media3/datasource/cache/i$a;

    if-eqz v5, :cond_2

    invoke-direct {p0}, Landroidx/media3/datasource/cache/i;->c()J

    move-result-wide v6

    iget-wide v8, p0, Landroidx/media3/datasource/cache/i;->i:J

    const-wide/16 v10, 0x0

    invoke-interface/range {v5 .. v11}, Landroidx/media3/datasource/cache/i$a;->a(JJJ)V

    :cond_2
    :goto_1
    iget-wide v0, p0, Landroidx/media3/datasource/cache/i;->h:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_4

    iget-wide v5, p0, Landroidx/media3/datasource/cache/i;->g:J

    cmp-long v0, v5, v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/media3/datasource/cache/i;->g()V

    iget-wide v0, p0, Landroidx/media3/datasource/cache/i;->h:J

    cmp-long v2, v0, v3

    const-wide v5, 0x7fffffffffffffffL

    if-nez v2, :cond_5

    move-wide v11, v5

    goto :goto_3

    :cond_5
    iget-wide v7, p0, Landroidx/media3/datasource/cache/i;->g:J

    sub-long/2addr v0, v7

    move-wide v11, v0

    :goto_3
    iget-object v7, p0, Landroidx/media3/datasource/cache/i;->b:Landroidx/media3/datasource/cache/Cache;

    iget-object v8, p0, Landroidx/media3/datasource/cache/i;->d:Ljava/lang/String;

    iget-wide v9, p0, Landroidx/media3/datasource/cache/i;->g:J

    invoke-interface/range {v7 .. v12}, Landroidx/media3/datasource/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-lez v2, :cond_6

    iget-wide v5, p0, Landroidx/media3/datasource/cache/i;->g:J

    add-long/2addr v5, v0

    iput-wide v5, p0, Landroidx/media3/datasource/cache/i;->g:J

    goto :goto_1

    :cond_6
    neg-long v0, v0

    cmp-long v2, v0, v5

    if-nez v2, :cond_7

    move-wide v0, v3

    :cond_7
    iget-wide v5, p0, Landroidx/media3/datasource/cache/i;->g:J

    invoke-direct {p0, v5, v6, v0, v1}, Landroidx/media3/datasource/cache/i;->f(JJ)J

    move-result-wide v0

    add-long/2addr v5, v0

    iput-wide v5, p0, Landroidx/media3/datasource/cache/i;->g:J

    goto :goto_1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/cache/i;->j:Z

    return-void
.end method
