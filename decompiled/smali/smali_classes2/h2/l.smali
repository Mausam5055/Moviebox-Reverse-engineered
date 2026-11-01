.class public final Lh2/l;
.super Lh2/e;


# instance fields
.field private final j:Lh2/f;

.field private k:Lh2/f$b;

.field private l:Ll2/h;

.field private m:J

.field private volatile n:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a;Lw1/h;Landroidx/media3/common/r;ILjava/lang/Object;Lh2/f;)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lh2/e;-><init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    iput-object v1, v0, Lh2/l;->j:Lh2/f;

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh2/l;->n:Z

    return-void
.end method

.method public e(Lh2/f$b;)V
    .locals 0

    iput-object p1, p0, Lh2/l;->k:Lh2/f$b;

    return-void
.end method

.method public load()V
    .locals 8

    iget-wide v0, p0, Lh2/l;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v1, p0, Lh2/l;->j:Lh2/f;

    iget-object v2, p0, Lh2/l;->k:Lh2/f$b;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface/range {v1 .. v6}, Lh2/f;->d(Lh2/f$b;JJ)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lh2/e;->b:Lw1/h;

    iget-wide v1, p0, Lh2/l;->m:J

    invoke-virtual {v0, v1, v2}, Lw1/h;->e(J)Lw1/h;

    move-result-object v0

    new-instance v7, Ll2/j;

    iget-object v2, p0, Lh2/e;->i:Lw1/l;

    iget-wide v3, v0, Lw1/h;->g:J

    invoke-virtual {v2, v0}, Lw1/l;->a(Lw1/h;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ll2/j;-><init>(Landroidx/media3/common/j;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lh2/l;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lh2/l;->j:Lh2/f;

    invoke-interface {v0, v7}, Lh2/f;->a(Ll2/s;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v7}, Ll2/s;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lh2/e;->b:Lw1/h;

    iget-wide v2, v2, Lw1/h;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lh2/l;->m:J

    iget-object v0, p0, Lh2/l;->j:Lh2/f;

    invoke-interface {v0}, Lh2/f;->b()Ll2/h;

    move-result-object v0

    iput-object v0, p0, Lh2/l;->l:Ll2/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lh2/e;->i:Lw1/l;

    invoke-static {v0}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-interface {v7}, Ll2/s;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lh2/e;->b:Lw1/h;

    iget-wide v3, v3, Lw1/h;->g:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lh2/l;->m:J

    iget-object v1, p0, Lh2/l;->j:Lh2/f;

    invoke-interface {v1}, Lh2/f;->b()Ll2/h;

    move-result-object v1

    iput-object v1, p0, Lh2/l;->l:Ll2/h;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    iget-object v1, p0, Lh2/e;->i:Lw1/l;

    invoke-static {v1}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    throw v0
.end method
