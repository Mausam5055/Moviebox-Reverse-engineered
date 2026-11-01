.class final Landroidx/media3/exoplayer/source/g0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/g0$b;,
        Landroidx/media3/exoplayer/source/g0$c;
    }
.end annotation


# instance fields
.field private final a:Lw1/h;

.field private final b:Landroidx/media3/datasource/a$a;

.field private final c:Lw1/n;

.field private final d:Landroidx/media3/exoplayer/upstream/m;

.field private final e:Landroidx/media3/exoplayer/source/s$a;

.field private final f:Lg2/z;

.field private final g:Ljava/util/ArrayList;

.field private final h:J

.field final i:Landroidx/media3/exoplayer/upstream/Loader;

.field final j:Landroidx/media3/common/r;

.field final k:Z

.field l:Z

.field m:[B

.field n:I


# direct methods
.method public constructor <init>(Lw1/h;Landroidx/media3/datasource/a$a;Lw1/n;Landroidx/media3/common/r;JLandroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;ZLandroidx/media3/exoplayer/util/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/g0;->a:Lw1/h;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/g0;->b:Landroidx/media3/datasource/a$a;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/g0;->c:Lw1/n;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/g0;->h:J

    iput-object p7, p0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    iput-object p8, p0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    iput-boolean p9, p0, Landroidx/media3/exoplayer/source/g0;->k:Z

    new-instance p1, Lg2/z;

    new-instance p2, Landroidx/media3/common/f0;

    const/4 p3, 0x1

    new-array p5, p3, [Landroidx/media3/common/r;

    const/4 p6, 0x0

    aput-object p4, p5, p6

    invoke-direct {p2, p5}, Landroidx/media3/common/f0;-><init>([Landroidx/media3/common/r;)V

    new-array p3, p3, [Landroidx/media3/common/f0;

    aput-object p2, p3, p6

    invoke-direct {p1, p3}, Lg2/z;-><init>([Landroidx/media3/common/f0;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/g0;->f:Lg2/z;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    if-eqz p10, :cond_0

    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    invoke-direct {p1, p10}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/c;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    return-void
.end method

.method static synthetic c(Landroidx/media3/exoplayer/source/g0;)Landroidx/media3/exoplayer/source/s$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 3

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/g0;->l:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/g0;->b:Landroidx/media3/datasource/a$a;

    invoke-interface {p1}, Landroidx/media3/datasource/a$a;->createDataSource()Landroidx/media3/datasource/a;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->c:Lw1/n;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/source/g0$c;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/g0;->a:Lw1/h;

    invoke-direct {v0, v1, p1}, Landroidx/media3/exoplayer/source/g0$c;-><init>(Lw1/h;Landroidx/media3/datasource/a;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    move-result v1

    invoke-virtual {p1, v0, p0, v1}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J

    return v2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 0

    return-wide p1
.end method

.method public d(Landroidx/media3/exoplayer/source/g0$c;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    move-result-object v2

    new-instance v15, Lg2/i;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    iget-object v6, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    invoke-virtual {v2}, Lw1/l;->e()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lw1/l;->f()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lw1/l;->d()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v3, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    iget-object v3, v0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->t(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    return-void
.end method

.method public e([Lj2/z;[Z[Lg2/u;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v0

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    aput-object v2, p3, v0

    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/media3/exoplayer/source/g0$b;

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/source/g0$b;-><init>(Landroidx/media3/exoplayer/source/g0;Landroidx/media3/exoplayer/source/g0$a;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public f(Landroidx/media3/exoplayer/source/g0$c;JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    move-result-object v2

    invoke-virtual {v2}, Lw1/l;->d()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroidx/media3/exoplayer/source/g0;->n:I

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->b(Landroidx/media3/exoplayer/source/g0$c;)[B

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Landroidx/media3/exoplayer/source/g0;->m:[B

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/g0;->l:Z

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    move-result-object v2

    new-instance v15, Lg2/i;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    iget-object v6, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    invoke-virtual {v2}, Lw1/l;->e()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lw1/l;->f()Ljava/util/Map;

    move-result-object v8

    iget v2, v0, Landroidx/media3/exoplayer/source/g0;->n:I

    int-to-long v13, v2

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v3, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    iget-object v3, v0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    iget-object v7, v0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->w(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/q$a;->c(Landroidx/media3/exoplayer/source/q;)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/g0;->l:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/g0;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public getTrackGroups()Lg2/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->f:Lg2/z;

    return-object v0
.end method

.method public h(Landroidx/media3/exoplayer/source/g0$c;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    move/from16 v2, p7

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    move-result-object v3

    new-instance v4, Lg2/i;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    iget-object v7, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    invoke-virtual {v3}, Lw1/l;->e()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual {v3}, Lw1/l;->f()Ljava/util/Map;

    move-result-object v19

    invoke-virtual {v3}, Lw1/l;->d()J

    move-result-wide v24

    move-object v14, v4

    move-wide v15, v5

    move-object/from16 v17, v7

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    invoke-direct/range {v14 .. v25}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v3, Lg2/j;

    iget-object v5, v0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    iget-wide v6, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    invoke-static {v6, v7}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v34

    const/16 v27, 0x1

    const/16 v28, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v35}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    iget-object v5, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    new-instance v6, Landroidx/media3/exoplayer/upstream/m$c;

    invoke-direct {v6, v4, v3, v13, v2}, Landroidx/media3/exoplayer/upstream/m$c;-><init>(Lg2/i;Lg2/j;Ljava/io/IOException;I)V

    invoke-interface {v5, v6}, Landroidx/media3/exoplayer/upstream/m;->c(Landroidx/media3/exoplayer/upstream/m$c;)J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    iget-object v9, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    invoke-interface {v9, v8}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    move-result v9

    if-lt v2, v9, :cond_0

    goto :goto_0

    :cond_0
    move v2, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v8

    :goto_1
    iget-boolean v9, v0, Landroidx/media3/exoplayer/source/g0;->k:Z

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    const-string v2, "SingleSampleMediaPeriod"

    const-string v3, "Loading failed, treating as end-of-stream."

    invoke-static {v2, v3, v13}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v8, v0, Landroidx/media3/exoplayer/source/g0;->l:Z

    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    :goto_2
    move-object v15, v2

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v7, v5, v6}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object v2

    goto :goto_2

    :cond_3
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->g:Landroidx/media3/exoplayer/upstream/Loader$c;

    goto :goto_2

    :goto_3
    invoke-virtual {v15}, Landroidx/media3/exoplayer/upstream/Loader$c;->c()Z

    move-result v16

    xor-int/lit8 v14, v16, 0x1

    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    iget-object v6, v0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    const-wide/16 v9, 0x0

    iget-wide v11, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/16 v17, 0x0

    move-object v3, v4

    move v4, v5

    move v5, v7

    move v7, v8

    move-object/from16 v8, v17

    move-object/from16 v13, p6

    invoke-virtual/range {v2 .. v14}, Landroidx/media3/exoplayer/source/s$a;->y(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_4

    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v3, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    :cond_4
    return-object v15
.end method

.method public i(Landroidx/media3/exoplayer/source/g0$c;JJI)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    move-result-object v2

    if-nez p6, :cond_0

    new-instance v2, Lg2/i;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    iget-object v6, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    move-object v3, v2

    move-wide/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lg2/i;-><init>(JLw1/h;J)V

    move-object/from16 v20, v2

    goto :goto_0

    :cond_0
    new-instance v3, Lg2/i;

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    iget-object v10, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    invoke-virtual {v2}, Lw1/l;->e()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2}, Lw1/l;->f()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v2}, Lw1/l;->d()J

    move-result-wide v17

    move-object v7, v3

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-direct/range {v7 .. v18}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object/from16 v20, v3

    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    const-wide/16 v26, 0x0

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    const/16 v21, 0x1

    const/16 v22, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v1

    move-object/from16 v23, v2

    move-wide/from16 v28, v3

    move/from16 v30, p6

    invoke-virtual/range {v19 .. v30}, Landroidx/media3/exoplayer/source/s$a;->C(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->k()V

    return-void
.end method

.method public bridge synthetic k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/g0$c;

    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/source/g0;->h(Landroidx/media3/exoplayer/source/g0$c;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    return-void
.end method

.method public bridge synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/g0$c;

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/source/g0;->i(Landroidx/media3/exoplayer/source/g0$c;JJI)V

    return-void
.end method

.method public bridge synthetic p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/g0$c;

    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/source/g0;->f(Landroidx/media3/exoplayer/source/g0$c;JJ)V

    return-void
.end method

.method public bridge synthetic q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/g0$c;

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/source/g0;->d(Landroidx/media3/exoplayer/source/g0$c;JJZ)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public seekToUs(J)J
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/g0$b;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/g0$b;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method
