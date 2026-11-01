.class public Lcom/google/android/exoplayer2/source/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/p$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/o$b;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/p$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/p$a;->d:J

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->o(Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/p$a;->n(Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->l(Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/source/o$b;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->p(Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/source/o$b;Lt9/i;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/p$a;->k(Lcom/google/android/exoplayer2/source/p;Lt9/i;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->m(Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V

    return-void
.end method

.method private h(J)J
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p$a;->d:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method private synthetic k(Lcom/google/android/exoplayer2/source/p;Lt9/i;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/source/p;->w(ILcom/google/android/exoplayer2/source/o$b;Lt9/i;)V

    return-void
.end method

.method private synthetic l(Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->u(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V

    return-void
.end method

.method private synthetic m(Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->z(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V

    return-void
.end method

.method private synthetic n(Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V
    .locals 7

    iget v1, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/p;->x(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V

    return-void
.end method

.method private synthetic o(Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->p(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V

    return-void
.end method

.method private synthetic p(Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/source/o$b;Lt9/i;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/source/p;->l(ILcom/google/android/exoplayer2/source/o$b;Lt9/i;)V

    return-void
.end method


# virtual methods
.method public A(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lt9/i;

    move-wide/from16 v1, p7

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    move-object v1, p1

    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/p$a;->B(Lt9/h;Lt9/i;)V

    return-void
.end method

.method public B(Lt9/h;Lt9/i;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lt9/o;

    invoke-direct {v3, p0, v2, p1, p2}, Lt9/o;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public C(Lcom/google/android/exoplayer2/source/p;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public D(IJJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lt9/i;

    move-wide v1, p2

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p4

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move v3, p1

    invoke-direct/range {v1 .. v10}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/p$a;->E(Lt9/i;)V

    return-void
.end method

.method public E(Lt9/i;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/o$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/p$a$a;

    iget-object v3, v2, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    new-instance v4, Lt9/p;

    invoke-direct {v4, p0, v3, v0, p1}, Lt9/p;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/source/o$b;Lt9/i;)V

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F(ILcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;
    .locals 7

    new-instance v6, Lcom/google/android/exoplayer2/source/p$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/p$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;J)V

    return-object v6
.end method

.method public g(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/source/p$a$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/source/p$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/o1;ILjava/lang/Object;J)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lt9/i;

    move-wide/from16 v1, p5

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/p$a;->j(Lt9/i;)V

    return-void
.end method

.method public j(Lt9/i;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lt9/q;

    invoke-direct {v3, p0, v2, p1}, Lt9/q;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/i;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lt9/h;I)V
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

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/p$a;->r(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public r(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lt9/i;

    move-wide/from16 v1, p7

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    move-object v1, p1

    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/p$a;->s(Lt9/h;Lt9/i;)V

    return-void
.end method

.method public s(Lt9/h;Lt9/i;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lt9/n;

    invoke-direct {v3, p0, v2, p1, p2}, Lt9/n;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Lt9/h;I)V
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

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/p$a;->u(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public u(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lt9/i;

    move-wide/from16 v1, p7

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    move-object v1, p1

    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/p$a;->v(Lt9/h;Lt9/i;)V

    return-void
.end method

.method public v(Lt9/h;Lt9/i;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lt9/l;

    invoke-direct {v3, p0, v2, p1, p2}, Lt9/l;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lt9/i;

    move-wide/from16 v1, p7

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->h(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    invoke-virtual {p0, p1, v11, v2, v3}, Lcom/google/android/exoplayer2/source/p$a;->y(Lt9/h;Lt9/i;Ljava/io/IOException;Z)V

    return-void
.end method

.method public x(Lt9/h;ILjava/io/IOException;Z)V
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

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/p$a;->w(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-void
.end method

.method public y(Lt9/h;Lt9/i;Ljava/io/IOException;Z)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lt9/m;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lt9/m;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z(Lt9/h;I)V
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

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/p$a;->A(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return-void
.end method
