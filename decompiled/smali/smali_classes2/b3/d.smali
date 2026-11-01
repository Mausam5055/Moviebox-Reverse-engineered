.class public final Lb3/d;
.super Lb3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/d$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/List;

.field public final i:Z

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:I


# direct methods
.method private constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lb3/b;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lb3/d;->a:J

    move v1, p3

    iput-boolean v1, v0, Lb3/d;->b:Z

    move v1, p4

    iput-boolean v1, v0, Lb3/d;->c:Z

    move v1, p5

    iput-boolean v1, v0, Lb3/d;->d:Z

    move v1, p6

    iput-boolean v1, v0, Lb3/d;->e:Z

    move-wide v1, p7

    iput-wide v1, v0, Lb3/d;->f:J

    move-wide v1, p9

    iput-wide v1, v0, Lb3/d;->g:J

    invoke-static {p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lb3/d;->h:Ljava/util/List;

    move v1, p12

    iput-boolean v1, v0, Lb3/d;->i:Z

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lb3/d;->j:J

    move/from16 v1, p15

    iput v1, v0, Lb3/d;->k:I

    move/from16 v1, p16

    iput v1, v0, Lb3/d;->l:I

    move/from16 v1, p17

    iput v1, v0, Lb3/d;->m:I

    return-void
.end method

.method static b(Landroidx/media3/common/util/j0;JLandroidx/media3/common/util/p0;)Lb3/d;
    .locals 27

    move-object/from16 v0, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    and-int/lit8 v11, v9, 0x40

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    and-int/lit8 v12, v9, 0x20

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v11, :cond_5

    if-nez v9, :cond_5

    invoke-static/range {p0 .. p2}, Lb3/g;->c(Landroidx/media3/common/util/j0;J)J

    move-result-wide v13

    goto :goto_5

    :cond_5
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-nez v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v18

    if-nez v9, :cond_6

    invoke-static/range {p0 .. p2}, Lb3/g;->c(Landroidx/media3/common/util/j0;J)J

    move-result-wide v19

    move-wide/from16 v7, v19

    goto :goto_7

    :cond_6
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    :goto_7
    new-instance v5, Lb3/d$b;

    invoke-virtual {v0, v7, v8}, Landroidx/media3/common/util/p0;->b(J)J

    move-result-wide v21

    const/16 v23, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v19, v7

    invoke-direct/range {v17 .. v23}, Lb3/d$b;-><init>(IJJLb3/d$a;)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    move-object v1, v15

    :cond_8
    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v7, 0x80

    and-long/2addr v7, v4

    const-wide/16 v17, 0x0

    cmp-long v7, v7, v17

    if-eqz v7, :cond_9

    const/16 v16, 0x1

    goto :goto_8

    :cond_9
    const/16 v16, 0x0

    :goto_8
    const-wide/16 v7, 0x1

    and-long/2addr v4, v7

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v7

    or-long/2addr v4, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    const-wide/16 v7, 0x5a

    div-long v7, v4, v7

    move/from16 v5, v16

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v15

    move/from16 v16, v4

    move/from16 v24, v11

    move/from16 v17, v12

    move/from16 v18, v15

    move-object v12, v1

    move-wide/from16 v25, v13

    move v13, v5

    move-wide v14, v7

    move v7, v9

    move v5, v10

    move-wide/from16 v8, v25

    goto :goto_a

    :cond_b
    move-object v12, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    :goto_a
    new-instance v19, Lb3/d;

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v9}, Landroidx/media3/common/util/p0;->b(J)J

    move-result-wide v10

    move v4, v6

    move/from16 v6, v24

    invoke-direct/range {v1 .. v18}, Lb3/d;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    return-object v19
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCTE-35 SpliceInsertCommand { programSplicePts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb3/d;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", programSplicePlaybackPositionUs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb3/d;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
