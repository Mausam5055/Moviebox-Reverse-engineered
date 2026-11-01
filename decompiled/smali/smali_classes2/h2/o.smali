.class public final Lh2/o;
.super Lh2/a;


# instance fields
.field private final o:I

.field private final p:Landroidx/media3/common/r;

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a;Lw1/h;Landroidx/media3/common/r;ILjava/lang/Object;JJJILandroidx/media3/common/r;)V
    .locals 16

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    invoke-direct/range {v0 .. v15}, Lh2/a;-><init>(Landroidx/media3/datasource/a;Lw1/h;Landroidx/media3/common/r;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p12

    iput v1, v0, Lh2/o;->o:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lh2/o;->p:Landroidx/media3/common/r;

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lh2/o;->r:Z

    return v0
.end method

.method public load()V
    .locals 11

    invoke-virtual {p0}, Lh2/a;->h()Lh2/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lh2/c;->b(J)V

    iget v1, p0, Lh2/o;->o:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lh2/c;->track(II)Ll2/s0;

    move-result-object v3

    iget-object v0, p0, Lh2/o;->p:Landroidx/media3/common/r;

    invoke-interface {v3, v0}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    :try_start_0
    iget-object v0, p0, Lh2/e;->b:Lw1/h;

    iget-wide v4, p0, Lh2/o;->q:J

    invoke-virtual {v0, v4, v5}, Lw1/h;->e(J)Lw1/h;

    move-result-object v0

    iget-object v1, p0, Lh2/e;->i:Lw1/l;

    invoke-virtual {v1, v0}, Lw1/l;->a(Lw1/h;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lh2/o;->q:J

    add-long/2addr v0, v4

    :cond_0
    move-wide v8, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :goto_0
    new-instance v0, Ll2/j;

    iget-object v5, p0, Lh2/e;->i:Lw1/l;

    iget-wide v6, p0, Lh2/o;->q:J

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Ll2/j;-><init>(Landroidx/media3/common/j;JJ)V

    :goto_1
    const/4 v1, -0x1

    const/4 v10, 0x1

    if-eq v2, v1, :cond_1

    iget-wide v4, p0, Lh2/o;->q:J

    int-to-long v1, v2

    add-long/2addr v4, v1

    iput-wide v4, p0, Lh2/o;->q:J

    const v1, 0x7fffffff

    invoke-interface {v3, v0, v1, v10}, Ll2/s0;->e(Landroidx/media3/common/j;IZ)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lh2/o;->q:J

    long-to-int v7, v0

    iget-wide v4, p0, Lh2/e;->g:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Ll2/s0;->d(JIIILl2/s0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lh2/e;->i:Lw1/l;

    invoke-static {v0}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    iput-boolean v10, p0, Lh2/o;->r:Z

    return-void

    :goto_2
    iget-object v1, p0, Lh2/e;->i:Lw1/l;

    invoke-static {v1}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    throw v0
.end method
