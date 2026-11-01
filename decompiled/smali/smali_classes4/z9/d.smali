.class final Lz9/d;
.super Ljava/lang/Object;

# interfaces
.implements Lz9/e;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/d0;

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Lcom/google/android/exoplayer2/source/rtsp/j;

.field private d:Lg9/e0;

.field private e:I

.field private f:J

.field private g:I

.field private h:I

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    sget-object v1, Lcom/google/android/exoplayer2/util/x;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    iput-object v0, p0, Lz9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    iput-object p1, p0, Lz9/d;->c:Lcom/google/android/exoplayer2/source/rtsp/j;

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    iput-object p1, p0, Lz9/d;->a:Lcom/google/android/exoplayer2/util/d0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lz9/d;->f:J

    const/4 p1, -0x1

    iput p1, p0, Lz9/d;->g:I

    return-void
.end method

.method private static d(I)I
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e(Lcom/google/android/exoplayer2/util/d0;I)V
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v1, v1, 0xe0

    and-int/lit8 v5, v3, 0x1f

    or-int/2addr v1, v5

    and-int/lit16 v5, v3, 0x80

    if-lez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    and-int/lit8 v3, v3, 0x40

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v5, :cond_2

    iget p2, p0, Lz9/d;->h:I

    invoke-direct {p0}, Lz9/d;->i()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lz9/d;->h:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p2

    int-to-byte v0, v1

    aput-byte v0, p2, v4

    iget-object p2, p0, Lz9/d;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->M([B)V

    iget-object p1, p0, Lz9/d;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    goto :goto_2

    :cond_2
    iget v5, p0, Lz9/d;->g:I

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/rtsp/g;->b(I)I

    move-result v5

    if-eq p2, v5, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    const-string p1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RtpH264Reader"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lz9/d;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->M([B)V

    iget-object p1, p0, Lz9/d;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    :goto_2
    iget-object p1, p0, Lz9/d;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result p1

    iget-object p2, p0, Lz9/d;->d:Lg9/e0;

    iget-object v0, p0, Lz9/d;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-interface {p2, v0, p1}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget p2, p0, Lz9/d;->h:I

    add-int/2addr p2, p1

    iput p2, p0, Lz9/d;->h:I

    if-eqz v3, :cond_4

    and-int/lit8 p1, v1, 0x1f

    invoke-static {p1}, Lz9/d;->d(I)I

    move-result p1

    iput p1, p0, Lz9/d;->e:I

    :cond_4
    return-void
.end method

.method private f(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    iget v1, p0, Lz9/d;->h:I

    invoke-direct {p0}, Lz9/d;->i()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lz9/d;->h:I

    iget-object v1, p0, Lz9/d;->d:Lg9/e0;

    invoke-interface {v1, p1, v0}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget v1, p0, Lz9/d;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lz9/d;->h:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    and-int/lit8 p1, p1, 0x1f

    invoke-static {p1}, Lz9/d;->d(I)I

    move-result p1

    iput p1, p0, Lz9/d;->e:I

    return-void
.end method

.method private g(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v0

    iget v1, p0, Lz9/d;->h:I

    invoke-direct {p0}, Lz9/d;->i()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lz9/d;->h:I

    iget-object v1, p0, Lz9/d;->d:Lg9/e0;

    invoke-interface {v1, p1, v0}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget v1, p0, Lz9/d;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lz9/d;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lz9/d;->e:I

    return-void
.end method

.method private static h(JJJ)J
    .locals 6

    sub-long v0, p2, p4

    const-wide/32 v2, 0xf4240

    const-wide/32 v4, 0x15f90

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private i()I
    .locals 3

    iget-object v0, p0, Lz9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v0, p0, Lz9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    iget-object v1, p0, Lz9/d;->d:Lg9/e0;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg9/e0;

    iget-object v2, p0, Lz9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-interface {v1, v2, v0}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;JIZ)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v4

    aget-byte v4, v4, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1f

    iget-object v5, v1, Lz9/d;->d:Lg9/e0;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x18

    if-lez v4, :cond_0

    if-ge v4, v5, :cond_0

    invoke-direct/range {p0 .. p1}, Lz9/d;->f(Lcom/google/android/exoplayer2/util/d0;)V

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_1

    invoke-direct/range {p0 .. p1}, Lz9/d;->g(Lcom/google/android/exoplayer2/util/d0;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_4

    move-object/from16 v5, p1

    invoke-direct {v1, v5, v0}, Lz9/d;->e(Lcom/google/android/exoplayer2/util/d0;I)V

    :goto_0
    if-eqz p5, :cond_3

    iget-wide v3, v1, Lz9/d;->f:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    move-wide/from16 v6, p2

    if-nez v3, :cond_2

    iput-wide v6, v1, Lz9/d;->f:J

    :cond_2
    iget-wide v4, v1, Lz9/d;->i:J

    iget-wide v8, v1, Lz9/d;->f:J

    move-wide/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lz9/d;->h(JJJ)J

    move-result-wide v11

    iget-object v10, v1, Lz9/d;->d:Lg9/e0;

    iget v13, v1, Lz9/d;->e:I

    iget v14, v1, Lz9/d;->h:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lg9/e0;->d(JIIILg9/e0$a;)V

    iput v2, v1, Lz9/d;->h:I

    :cond_3
    iput v0, v1, Lz9/d;->g:I

    return-void

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "RTP H264 packetization mode [%d] not supported."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public b(JI)V
    .locals 0

    return-void
.end method

.method public c(Lg9/n;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lg9/n;->track(II)Lg9/e0;

    move-result-object p1

    iput-object p1, p0, Lz9/d;->d:Lg9/e0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg9/e0;

    iget-object p2, p0, Lz9/d;->c:Lcom/google/android/exoplayer2/source/rtsp/j;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/o1;

    invoke-interface {p1, p2}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iput-wide p1, p0, Lz9/d;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lz9/d;->h:I

    iput-wide p3, p0, Lz9/d;->i:J

    return-void
.end method
