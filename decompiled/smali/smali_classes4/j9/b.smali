.class final Lj9/b;
.super Lg9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj9/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lg9/v;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj9/a;

    invoke-direct {v1, v0}, Lj9/a;-><init>(Lg9/v;)V

    new-instance v2, Lj9/b$b;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lj9/b$b;-><init>(Lg9/v;ILj9/b$a;)V

    invoke-virtual/range {p1 .. p1}, Lg9/v;->f()J

    move-result-wide v3

    iget-wide v7, v0, Lg9/v;->j:J

    invoke-virtual/range {p1 .. p1}, Lg9/v;->d()J

    move-result-wide v13

    const/4 v5, 0x6

    iget v0, v0, Lg9/v;->c:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v0 .. v15}, Lg9/a;-><init>(Lg9/a$d;Lg9/a$f;JJJJJJI)V

    return-void
.end method
