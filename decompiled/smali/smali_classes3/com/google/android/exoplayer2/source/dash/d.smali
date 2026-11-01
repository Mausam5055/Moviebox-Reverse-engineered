.class final Lcom/google/android/exoplayer2/source/dash/d;
.super Ljava/lang/Object;

# interfaces
.implements Lt9/s;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/o1;

.field private final b:Lcom/google/android/exoplayer2/metadata/emsg/b;

.field private c:[J

.field private d:Z

.field private e:Lx9/f;

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lx9/f;Lcom/google/android/exoplayer2/o1;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/d;->a:Lcom/google/android/exoplayer2/o1;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->e:Lx9/f;

    new-instance p2, Lcom/google/android/exoplayer2/metadata/emsg/b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/metadata/emsg/b;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/d;->b:Lcom/google/android/exoplayer2/metadata/emsg/b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->h:J

    iget-object p2, p1, Lx9/f;->b:[J

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/d;->c:[J

    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/source/dash/d;->d(Lx9/f;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->e:Lx9/f;

    invoke-virtual {v0}, Lx9/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->c:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/util/p0;->e([JJZZ)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->g:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/dash/d;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/d;->c:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->h:J

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 6

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->g:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/d;->c:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x4

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/dash/d;->d:Z

    if-nez v5, :cond_1

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/decoder/a;->k(I)V

    return v3

    :cond_1
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/dash/d;->f:Z

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p1, -0x3

    return p1

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_4

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->g:I

    :cond_4
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->b:Lcom/google/android/exoplayer2/metadata/emsg/b;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/d;->e:Lx9/f;

    iget-object p3, p3, Lx9/f;->a:[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/metadata/emsg/b;->a(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object p1

    array-length p3, p1

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    iget-object p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->c:[J

    aget-wide v0, p1, v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/a;->k(I)V

    return v3

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/d;->a:Lcom/google/android/exoplayer2/o1;

    iput-object p2, p1, Lcom/google/android/exoplayer2/p1;->b:Lcom/google/android/exoplayer2/o1;

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/d;->f:Z

    const/4 p1, -0x5

    return p1
.end method

.method public d(Lx9/f;Z)V
    .locals 8

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/d;->c:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/dash/d;->d:Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->e:Lx9/f;

    iget-object p1, p1, Lx9/f;->b:[J

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->c:[J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/d;->h:J

    cmp-long p2, v6, v1

    if-eqz p2, :cond_1

    invoke-virtual {p0, v6, v7}, Lcom/google/android/exoplayer2/source/dash/d;->b(J)V

    goto :goto_1

    :cond_1
    cmp-long p2, v4, v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-static {p1, v4, v5, p2, p2}, Lcom/google/android/exoplayer2/util/p0;->e([JJZZ)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->g:I

    :cond_2
    :goto_1
    return-void
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    return-void
.end method

.method public skipData(J)I
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->g:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/d;->c:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/util/p0;->e([JJZZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/source/dash/d;->g:I

    sub-int p2, p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->g:I

    return p2
.end method
