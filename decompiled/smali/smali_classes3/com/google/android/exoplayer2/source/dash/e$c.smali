.class public final Lcom/google/android/exoplayer2/source/dash/e$c;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/a0;

.field private final b:Lcom/google/android/exoplayer2/p1;

.field private final c:Lcom/google/android/exoplayer2/metadata/d;

.field private d:J

.field final synthetic e:Lcom/google/android/exoplayer2/source/dash/e;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/e;Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/a0;->l(Lcom/google/android/exoplayer2/upstream/b;)Lcom/google/android/exoplayer2/source/a0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    new-instance p1, Lcom/google/android/exoplayer2/p1;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/p1;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->b:Lcom/google/android/exoplayer2/p1;

    new-instance p1, Lcom/google/android/exoplayer2/metadata/d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    return-void
.end method

.method private g()Lcom/google/android/exoplayer2/metadata/d;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->b:Lcom/google/android/exoplayer2/p1;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/google/android/exoplayer2/source/a0;->S(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lcom/google/android/exoplayer2/metadata/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private k(JJ)V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/dash/e$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/e$a;-><init>(JJ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/e;->d(Lcom/google/android/exoplayer2/source/dash/e;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/dash/e;->d(Lcom/google/android/exoplayer2/source/dash/e;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private l()V
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/a0;->K(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/e$c;->g()Lcom/google/android/exoplayer2/metadata/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/dash/e;->a(Lcom/google/android/exoplayer2/source/dash/e;)Lcom/google/android/exoplayer2/metadata/emsg/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/metadata/g;->a(Lcom/google/android/exoplayer2/metadata/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    iget-object v1, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/source/dash/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/source/dash/e$c;->m(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->s()V

    return-void
.end method

.method private m(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V
    .locals 4

    invoke-static {p3}, Lcom/google/android/exoplayer2/source/dash/e;->c(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/e$c;->k(JJ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/g;IZI)I
    .locals 0

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/a0;->b(Lcom/google/android/exoplayer2/upstream/g;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/upstream/g;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lg9/d0;->a(Lg9/e0;Lcom/google/android/exoplayer2/upstream/g;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/util/d0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg9/d0;->b(Lg9/e0;Lcom/google/android/exoplayer2/util/d0;I)V

    return-void
.end method

.method public d(JIIILg9/e0$a;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/a0;->d(JIIILg9/e0$a;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/e$c;->l()V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/o1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/a0;->e(Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/util/d0;II)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/source/a0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    return-void
.end method

.method public h(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/e;->j(J)Z

    move-result p1

    return p1
.end method

.method public i(Lv9/f;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lv9/f;->h:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p1, Lv9/f;->h:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/e;->m(Lv9/f;)V

    return-void
.end method

.method public j(Lv9/f;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lv9/f;->g:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/e;->n(Z)Z

    move-result p1

    return p1
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->T()V

    return-void
.end method
