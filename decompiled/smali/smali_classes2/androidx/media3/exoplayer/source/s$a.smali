.class public Landroidx/media3/exoplayer/source/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/s$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/exoplayer/source/r$b;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/source/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    iput-object p3, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/s$a;->l(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/s;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/source/s$a;->p(Lg2/i;Lg2/j;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/s;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;ILandroidx/media3/exoplayer/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/s$a;->q(Lg2/i;Lg2/j;ILandroidx/media3/exoplayer/source/s;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/source/r$b;Lg2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/s$a;->r(Landroidx/media3/exoplayer/source/r$b;Lg2/j;Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/source/s$a;Lg2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/s$a;->m(Lg2/j;Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/s$a;->o(Lg2/i;Lg2/j;Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/s$a;->n(Lg2/i;Lg2/j;Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method

.method private static synthetic l(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/media3/common/util/m;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic m(Lg2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p2, v0, v1, p1}, Landroidx/media3/exoplayer/source/s;->E(ILandroidx/media3/exoplayer/source/r$b;Lg2/j;)V

    return-void
.end method

.method private synthetic n(Lg2/i;Lg2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p3, v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/s;->l(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;)V

    return-void
.end method

.method private synthetic o(Lg2/i;Lg2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p3, v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/s;->C(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;)V

    return-void
.end method

.method private synthetic p(Lg2/i;Lg2/j;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/s;)V
    .locals 7

    iget v1, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    iget-object v2, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    move-object v0, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/source/s;->y(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V

    return-void
.end method

.method private synthetic q(Lg2/i;Lg2/j;ILandroidx/media3/exoplayer/source/s;)V
    .locals 6

    iget v1, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    iget-object v2, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    move-object v0, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/source/s;->F(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;I)V

    return-void
.end method

.method private synthetic r(Landroidx/media3/exoplayer/source/r$b;Lg2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    invoke-interface {p3, v0, p1, p2}, Landroidx/media3/exoplayer/source/s;->D(ILandroidx/media3/exoplayer/source/r$b;Lg2/j;)V

    return-void
.end method


# virtual methods
.method public A(Lg2/i;Lg2/j;Ljava/io/IOException;Z)V
    .locals 7

    new-instance v6, Lg2/o;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lg2/o;-><init>(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V

    invoke-virtual {p0, v6}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    return-void
.end method

.method public B(Lg2/i;II)V
    .locals 12

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v11, p3

    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/source/s$a;->C(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public C(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJI)V
    .locals 11

    new-instance v10, Lg2/j;

    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v6

    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v8

    move-object v0, v10

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p11

    invoke-virtual {p0, p1, v10, v2}, Landroidx/media3/exoplayer/source/s$a;->D(Lg2/i;Lg2/j;I)V

    return-void
.end method

.method public D(Lg2/i;Lg2/j;I)V
    .locals 1

    new-instance v0, Lg2/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lg2/m;-><init>(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    return-void
.end method

.method public E(Landroidx/media3/exoplayer/source/s;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/s$a$a;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/s$a$a;->b:Landroidx/media3/exoplayer/source/s;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public F(IJJ)V
    .locals 11

    new-instance v10, Lg2/j;

    invoke-static {p2, p3}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v6

    invoke-static/range {p4 .. p5}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v10

    move v2, p1

    invoke-direct/range {v0 .. v9}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    move-object v0, p0

    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/source/s$a;->G(Lg2/j;)V

    return-void
.end method

.method public G(Lg2/j;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/r$b;

    new-instance v1, Lg2/s;

    invoke-direct {v1, p0, v0, p1}, Lg2/s;-><init>(Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/source/r$b;Lg2/j;)V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    return-void
.end method

.method public H(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/source/s$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V

    return-object v0
.end method

.method public h(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V
    .locals 2

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media3/exoplayer/source/s$a$a;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/source/s$a$a;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Landroidx/media3/common/util/m;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/s$a$a;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/s$a$a;->b:Landroidx/media3/exoplayer/source/s;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lg2/q;

    invoke-direct {v3, p1, v2}, Lg2/q;-><init>(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(ILandroidx/media3/common/r;ILjava/lang/Object;J)V
    .locals 11

    new-instance v10, Lg2/j;

    invoke-static/range {p5 .. p6}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    move-object v0, p0

    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/source/s$a;->k(Lg2/j;)V

    return-void
.end method

.method public k(Lg2/j;)V
    .locals 1

    new-instance v0, Lg2/r;

    invoke-direct {v0, p0, p1}, Lg2/r;-><init>(Landroidx/media3/exoplayer/source/s$a;Lg2/j;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    return-void
.end method

.method public s(Lg2/i;I)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/s$a;->t(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public t(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V
    .locals 11

    new-instance v10, Lg2/j;

    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v6

    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v8

    move-object v0, v10

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/s$a;->u(Lg2/i;Lg2/j;)V

    return-void
.end method

.method public u(Lg2/i;Lg2/j;)V
    .locals 1

    new-instance v0, Lg2/p;

    invoke-direct {v0, p0, p1, p2}, Lg2/p;-><init>(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    return-void
.end method

.method public v(Lg2/i;I)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/s$a;->w(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public w(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V
    .locals 11

    new-instance v10, Lg2/j;

    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v6

    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v8

    move-object v0, v10

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/s$a;->x(Lg2/i;Lg2/j;)V

    return-void
.end method

.method public x(Lg2/i;Lg2/j;)V
    .locals 1

    new-instance v0, Lg2/n;

    invoke-direct {v0, p0, p1, p2}, Lg2/n;-><init>(Landroidx/media3/exoplayer/source/s$a;Lg2/i;Lg2/j;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    return-void
.end method

.method public y(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 11

    new-instance v10, Lg2/j;

    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v6

    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v8

    move-object v0, v10

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    invoke-virtual {p0, p1, v10, v2, v3}, Landroidx/media3/exoplayer/source/s$a;->A(Lg2/i;Lg2/j;Ljava/io/IOException;Z)V

    return-void
.end method

.method public z(Lg2/i;ILjava/io/IOException;Z)V
    .locals 13

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/source/s$a;->y(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-void
.end method
