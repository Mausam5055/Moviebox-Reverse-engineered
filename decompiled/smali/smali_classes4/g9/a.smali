.class public abstract Lg9/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg9/a$a;,
        Lg9/a$e;,
        Lg9/a$c;,
        Lg9/a$d;,
        Lg9/a$b;,
        Lg9/a$f;
    }
.end annotation


# instance fields
.field protected final a:Lg9/a$a;

.field protected final b:Lg9/a$f;

.field protected c:Lg9/a$c;

.field private final d:I


# direct methods
.method protected constructor <init>(Lg9/a$d;Lg9/a$f;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lg9/a;->b:Lg9/a$f;

    move/from16 v1, p15

    iput v1, v0, Lg9/a;->d:I

    new-instance v15, Lg9/a$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lg9/a$a;-><init>(Lg9/a$d;JJJJJJ)V

    iput-object v15, v0, Lg9/a;->a:Lg9/a$a;

    return-void
.end method


# virtual methods
.method protected a(J)Lg9/a$c;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lg9/a$c;

    iget-object v1, v0, Lg9/a;->a:Lg9/a$a;

    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Lg9/a$a;->g(J)J

    move-result-wide v4

    iget-object v1, v0, Lg9/a;->a:Lg9/a$a;

    invoke-static {v1}, Lg9/a$a;->b(Lg9/a$a;)J

    move-result-wide v6

    iget-object v1, v0, Lg9/a;->a:Lg9/a$a;

    invoke-static {v1}, Lg9/a$a;->c(Lg9/a$a;)J

    move-result-wide v8

    iget-object v1, v0, Lg9/a;->a:Lg9/a$a;

    invoke-static {v1}, Lg9/a$a;->d(Lg9/a$a;)J

    move-result-wide v10

    iget-object v1, v0, Lg9/a;->a:Lg9/a$a;

    invoke-static {v1}, Lg9/a$a;->e(Lg9/a$a;)J

    move-result-wide v12

    iget-object v1, v0, Lg9/a;->a:Lg9/a$a;

    invoke-static {v1}, Lg9/a$a;->f(Lg9/a$a;)J

    move-result-wide v14

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lg9/a$c;-><init>(JJJJJJJ)V

    return-object v16
.end method

.method public final b()Lg9/b0;
    .locals 1

    iget-object v0, p0, Lg9/a;->a:Lg9/a$a;

    return-object v0
.end method

.method public c(Lg9/m;Lg9/a0;)I
    .locals 9

    :goto_0
    iget-object v0, p0, Lg9/a;->c:Lg9/a$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/a$c;

    invoke-static {v0}, Lg9/a$c;->b(Lg9/a$c;)J

    move-result-wide v1

    invoke-static {v0}, Lg9/a$c;->c(Lg9/a$c;)J

    move-result-wide v3

    invoke-static {v0}, Lg9/a$c;->d(Lg9/a$c;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    iget v7, p0, Lg9/a;->d:I

    int-to-long v7, v7

    cmp-long v3, v3, v7

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    invoke-virtual {p0, v4, v1, v2}, Lg9/a;->e(ZJ)V

    invoke-virtual {p0, p1, v1, v2, p2}, Lg9/a;->g(Lg9/m;JLg9/a0;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1, v5, v6}, Lg9/a;->i(Lg9/m;J)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v5, v6, p2}, Lg9/a;->g(Lg9/m;JLg9/a0;)I

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    iget-object v1, p0, Lg9/a;->b:Lg9/a$f;

    invoke-static {v0}, Lg9/a$c;->e(Lg9/a$c;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lg9/a$f;->b(Lg9/m;J)Lg9/a$e;

    move-result-object v1

    invoke-static {v1}, Lg9/a$e;->a(Lg9/a$e;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_5

    const/4 v3, -0x2

    if-eq v2, v3, :cond_4

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    invoke-static {v1}, Lg9/a$e;->c(Lg9/a$e;)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lg9/a;->i(Lg9/m;J)Z

    const/4 v0, 0x1

    invoke-static {v1}, Lg9/a$e;->c(Lg9/a$e;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lg9/a;->e(ZJ)V

    invoke-static {v1}, Lg9/a$e;->c(Lg9/a$e;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lg9/a;->g(Lg9/m;JLg9/a0;)I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v1}, Lg9/a$e;->b(Lg9/a$e;)J

    move-result-wide v2

    invoke-static {v1}, Lg9/a$e;->c(Lg9/a$e;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lg9/a$c;->f(Lg9/a$c;JJ)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lg9/a$e;->b(Lg9/a$e;)J

    move-result-wide v2

    invoke-static {v1}, Lg9/a$e;->c(Lg9/a$e;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lg9/a$c;->g(Lg9/a$c;JJ)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v4, v5, v6}, Lg9/a;->e(ZJ)V

    invoke-virtual {p0, p1, v5, v6, p2}, Lg9/a;->g(Lg9/m;JLg9/a0;)I

    move-result p1

    return p1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lg9/a;->c:Lg9/a$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final e(ZJ)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lg9/a;->c:Lg9/a$c;

    iget-object v0, p0, Lg9/a;->b:Lg9/a$f;

    invoke-interface {v0}, Lg9/a$f;->a()V

    invoke-virtual {p0, p1, p2, p3}, Lg9/a;->f(ZJ)V

    return-void
.end method

.method protected f(ZJ)V
    .locals 0

    return-void
.end method

.method protected final g(Lg9/m;JLg9/a0;)I
    .locals 2

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-wide p2, p4, Lg9/a0;->a:J

    const/4 p1, 0x1

    return p1
.end method

.method public final h(J)V
    .locals 2

    iget-object v0, p0, Lg9/a;->c:Lg9/a$c;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lg9/a$c;->a(Lg9/a$c;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg9/a;->a(J)Lg9/a$c;

    move-result-object p1

    iput-object p1, p0, Lg9/a;->c:Lg9/a$c;

    return-void
.end method

.method protected final i(Lg9/m;J)Z
    .locals 2

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lg9/m;->skipFully(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
