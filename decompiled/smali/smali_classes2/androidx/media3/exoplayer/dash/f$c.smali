.class public final Landroidx/media3/exoplayer/dash/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/source/e0;

.field private final b:Landroidx/media3/exoplayer/s2;

.field private final c:Lu2/b;

.field private d:J

.field final synthetic e:Landroidx/media3/exoplayer/dash/f;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/dash/f;Landroidx/media3/exoplayer/upstream/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/f$c;->e:Landroidx/media3/exoplayer/dash/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroidx/media3/exoplayer/source/e0;->m(Landroidx/media3/exoplayer/upstream/b;)Landroidx/media3/exoplayer/source/e0;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/f$c;->a:Landroidx/media3/exoplayer/source/e0;

    new-instance p1, Landroidx/media3/exoplayer/s2;

    invoke-direct {p1}, Landroidx/media3/exoplayer/s2;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/f$c;->b:Landroidx/media3/exoplayer/s2;

    new-instance p1, Lu2/b;

    invoke-direct {p1}, Lu2/b;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/f$c;->c:Lu2/b;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/f$c;->d:J

    return-void
.end method

.method private h()Lu2/b;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->c:Lu2/b;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->a:Landroidx/media3/exoplayer/source/e0;

    iget-object v1, p0, Landroidx/media3/exoplayer/dash/f$c;->b:Landroidx/media3/exoplayer/s2;

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/f$c;->c:Lu2/b;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroidx/media3/exoplayer/source/e0;->V(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->c:Lu2/b;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->c:Lu2/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private l(JJ)V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/dash/f$a;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/f$a;-><init>(JJ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/dash/f$c;->e:Landroidx/media3/exoplayer/dash/f;

    invoke-static {p1}, Landroidx/media3/exoplayer/dash/f;->d(Landroidx/media3/exoplayer/dash/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/dash/f$c;->e:Landroidx/media3/exoplayer/dash/f;

    invoke-static {p2}, Landroidx/media3/exoplayer/dash/f;->d(Landroidx/media3/exoplayer/dash/f;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private m()V
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->a:Landroidx/media3/exoplayer/source/e0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/e0;->N(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/f$c;->h()Lu2/b;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, v0, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iget-object v4, p0, Landroidx/media3/exoplayer/dash/f$c;->e:Landroidx/media3/exoplayer/dash/f;

    invoke-static {v4}, Landroidx/media3/exoplayer/dash/f;->a(Landroidx/media3/exoplayer/dash/f;)Lw2/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lu2/c;->a(Lu2/b;)Landroidx/media3/common/x;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v0

    check-cast v0, Lw2/a;

    iget-object v1, v0, Lw2/a;->a:Ljava/lang/String;

    iget-object v4, v0, Lw2/a;->b:Ljava/lang/String;

    invoke-static {v1, v4}, Landroidx/media3/exoplayer/dash/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2, v3, v0}, Landroidx/media3/exoplayer/dash/f$c;->n(JLw2/a;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->a:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->t()V

    return-void
.end method

.method private n(JLw2/a;)V
    .locals 4

    invoke-static {p3}, Landroidx/media3/exoplayer/dash/f;->c(Lw2/a;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/dash/f$c;->l(JJ)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;II)V
    .locals 0

    iget-object p3, p0, Landroidx/media3/exoplayer/dash/f$c;->a:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p3, p1, p2}, Landroidx/media3/exoplayer/source/e0;->b(Landroidx/media3/common/util/j0;I)V

    return-void
.end method

.method public synthetic b(Landroidx/media3/common/util/j0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ll2/r0;->c(Ll2/s0;Landroidx/media3/common/util/j0;I)V

    return-void
.end method

.method public c(Landroidx/media3/common/r;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->a:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/e0;->c(Landroidx/media3/common/r;)V

    return-void
.end method

.method public d(JIIILl2/s0$a;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->a:Landroidx/media3/exoplayer/source/e0;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/source/e0;->d(JIIILl2/s0$a;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/f$c;->m()V

    return-void
.end method

.method public synthetic e(Landroidx/media3/common/j;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ll2/r0;->b(Ll2/s0;Landroidx/media3/common/j;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic f(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Ll2/r0;->a(Ll2/s0;J)V

    return-void
.end method

.method public g(Landroidx/media3/common/j;IZI)I
    .locals 0

    iget-object p4, p0, Landroidx/media3/exoplayer/dash/f$c;->a:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/media3/exoplayer/source/e0;->e(Landroidx/media3/common/j;IZ)I

    move-result p1

    return p1
.end method

.method public i(J)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->e:Landroidx/media3/exoplayer/dash/f;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/dash/f;->j(J)Z

    move-result p1

    return p1
.end method

.method public j(Lh2/e;)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/f$c;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lh2/e;->h:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p1, Lh2/e;->h:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/dash/f$c;->d:J

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->e:Landroidx/media3/exoplayer/dash/f;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/f;->m(Lh2/e;)V

    return-void
.end method

.method public k(Lh2/e;)Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/f$c;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lh2/e;->g:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->e:Landroidx/media3/exoplayer/dash/f;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/f;->n(Z)Z

    move-result p1

    return p1
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/f$c;->a:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->W()V

    return-void
.end method
