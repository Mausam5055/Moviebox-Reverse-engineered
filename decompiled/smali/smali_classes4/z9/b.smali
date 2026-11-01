.class final Lz9/b;
.super Ljava/lang/Object;

# interfaces
.implements Lz9/e;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/rtsp/j;

.field private final b:Lcom/google/android/exoplayer2/util/c0;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:J

.field private h:Lg9/e0;

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz9/b;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/c0;-><init>()V

    iput-object v0, p0, Lz9/b;->b:Lcom/google/android/exoplayer2/util/c0;

    iget v0, p1, Lcom/google/android/exoplayer2/source/rtsp/j;->b:I

    iput v0, p0, Lz9/b;->c:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/j;->d:Lcom/google/common/collect/ImmutableMap;

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "AAC-hbr"

    invoke-static {p1, v0}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xd

    iput p1, p0, Lz9/b;->d:I

    const/4 p1, 0x3

    iput p1, p0, Lz9/b;->e:I

    goto :goto_0

    :cond_0
    const-string v0, "AAC-lbr"

    invoke-static {p1, v0}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    iput p1, p0, Lz9/b;->d:I

    const/4 p1, 0x2

    iput p1, p0, Lz9/b;->e:I

    :goto_0
    iget p1, p0, Lz9/b;->e:I

    iget v0, p0, Lz9/b;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lz9/b;->f:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AAC mode not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d(Lg9/e0;JI)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lg9/e0;->d(JIIILg9/e0$a;)V

    return-void
.end method

.method private static e(JJJI)J
    .locals 6

    sub-long v0, p2, p4

    const-wide/32 v2, 0xf4240

    int-to-long v4, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;JIZ)V
    .locals 8

    iget-object p4, p0, Lz9/b;->h:Lg9/e0;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result p4

    iget v0, p0, Lz9/b;->f:I

    div-int v0, p4, v0

    iget-wide v1, p0, Lz9/b;->i:J

    iget-wide v5, p0, Lz9/b;->g:J

    iget v7, p0, Lz9/b;->c:I

    move-wide v3, p2

    invoke-static/range {v1 .. v7}, Lz9/b;->e(JJJI)J

    move-result-wide p2

    iget-object v1, p0, Lz9/b;->b:Lcom/google/android/exoplayer2/util/c0;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/util/c0;->m(Lcom/google/android/exoplayer2/util/d0;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p4, p0, Lz9/b;->b:Lcom/google/android/exoplayer2/util/c0;

    iget v0, p0, Lz9/b;->d:I

    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result p4

    iget-object v0, p0, Lz9/b;->b:Lcom/google/android/exoplayer2/util/c0;

    iget v1, p0, Lz9/b;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->r(I)V

    iget-object v0, p0, Lz9/b;->h:Lg9/e0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    if-eqz p5, :cond_1

    iget-object p1, p0, Lz9/b;->h:Lg9/e0;

    invoke-static {p1, p2, p3, p4}, Lz9/b;->d(Lg9/e0;JI)V

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x7

    div-int/lit8 p4, p4, 0x8

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, v0, :cond_1

    iget-object p5, p0, Lz9/b;->b:Lcom/google/android/exoplayer2/util/c0;

    iget v1, p0, Lz9/b;->d:I

    invoke-virtual {p5, v1}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result p5

    iget-object v1, p0, Lz9/b;->b:Lcom/google/android/exoplayer2/util/c0;

    iget v2, p0, Lz9/b;->e:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/c0;->r(I)V

    iget-object v1, p0, Lz9/b;->h:Lg9/e0;

    invoke-interface {v1, p1, p5}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget-object v1, p0, Lz9/b;->h:Lg9/e0;

    invoke-static {v1, p2, p3, p5}, Lz9/b;->d(Lg9/e0;JI)V

    int-to-long v2, v0

    iget p5, p0, Lz9/b;->c:I

    int-to-long v6, p5

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v1

    add-long/2addr p2, v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b(JI)V
    .locals 0

    iput-wide p1, p0, Lz9/b;->g:J

    return-void
.end method

.method public c(Lg9/n;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lg9/n;->track(II)Lg9/e0;

    move-result-object p1

    iput-object p1, p0, Lz9/b;->h:Lg9/e0;

    iget-object p2, p0, Lz9/b;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/o1;

    invoke-interface {p1, p2}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iput-wide p1, p0, Lz9/b;->g:J

    iput-wide p3, p0, Lz9/b;->i:J

    return-void
.end method
