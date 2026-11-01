.class public final Lq9/v;
.super Ljava/lang/Object;

# interfaces
.implements Lq9/b0;


# instance fields
.field private a:Lcom/google/android/exoplayer2/o1;

.field private b:Lcom/google/android/exoplayer2/util/l0;

.field private c:Lg9/e0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    iput-object p1, p0, Lq9/v;->a:Lcom/google/android/exoplayer2/o1;

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lq9/v;->b:Lcom/google/android/exoplayer2/util/l0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lq9/v;->c:Lg9/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 8

    invoke-direct {p0}, Lq9/v;->c()V

    iget-object v0, p0, Lq9/v;->b:Lcom/google/android/exoplayer2/util/l0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l0;->d()J

    move-result-wide v2

    iget-object v0, p0, Lq9/v;->b:Lcom/google/android/exoplayer2/util/l0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l0;->e()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lq9/v;->a:Lcom/google/android/exoplayer2/o1;

    iget-wide v5, v4, Lcom/google/android/exoplayer2/o1;->p:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/o1$b;->i0(J)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    iput-object v0, p0, Lq9/v;->a:Lcom/google/android/exoplayer2/o1;

    iget-object v1, p0, Lq9/v;->c:Lg9/e0;

    invoke-interface {v1, v0}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v5

    iget-object v0, p0, Lq9/v;->c:Lg9/e0;

    invoke-interface {v0, p1, v5}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget-object v1, p0, Lq9/v;->c:Lg9/e0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lg9/e0;->d(JIIILg9/e0$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/l0;Lg9/n;Lq9/i0$d;)V
    .locals 0

    iput-object p1, p0, Lq9/v;->b:Lcom/google/android/exoplayer2/util/l0;

    invoke-virtual {p3}, Lq9/i0$d;->a()V

    invoke-virtual {p3}, Lq9/i0$d;->c()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lg9/n;->track(II)Lg9/e0;

    move-result-object p1

    iput-object p1, p0, Lq9/v;->c:Lg9/e0;

    iget-object p2, p0, Lq9/v;->a:Lcom/google/android/exoplayer2/o1;

    invoke-interface {p1, p2}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method
