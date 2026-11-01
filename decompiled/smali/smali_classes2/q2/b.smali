.class final Lq2/b;
.super Ll2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Ll2/b0;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lq2/a;

    invoke-direct {v1, v0}, Lq2/a;-><init>(Ll2/b0;)V

    new-instance v2, Lq2/b$b;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lq2/b$b;-><init>(Ll2/b0;ILq2/b$a;)V

    invoke-virtual/range {p1 .. p1}, Ll2/b0;->f()J

    move-result-wide v3

    iget-wide v7, v0, Ll2/b0;->j:J

    invoke-virtual/range {p1 .. p1}, Ll2/b0;->d()J

    move-result-wide v13

    const/4 v5, 0x6

    iget v0, v0, Ll2/b0;->c:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v0 .. v15}, Ll2/e;-><init>(Ll2/e$d;Ll2/e$f;JJJJJJI)V

    return-void
.end method
