.class public Lcom/google/android/exoplayer2/audio/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/x$a;
    }
.end annotation


# instance fields
.field protected final b:I

.field protected final c:I

.field protected final d:I

.field protected final e:I

.field protected final f:I

.field public final g:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/audio/x$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/x$a;->a(Lcom/google/android/exoplayer2/audio/x$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->b:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/x$a;->b(Lcom/google/android/exoplayer2/audio/x$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->c:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/x$a;->c(Lcom/google/android/exoplayer2/audio/x$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->d:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/x$a;->d(Lcom/google/android/exoplayer2/audio/x$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->e:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/x$a;->e(Lcom/google/android/exoplayer2/audio/x$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->f:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/x$a;->f(Lcom/google/android/exoplayer2/audio/x$a;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/x;->g:I

    return-void
.end method

.method protected static b(III)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    int-to-long p0, p2

    mul-long/2addr v0, p0

    const-wide/32 p0, 0xf4240

    div-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result p0

    return p0
.end method

.method protected static d(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    const p0, 0x52080

    return p0

    :pswitch_2
    const p0, 0x3e800

    return p0

    :pswitch_3
    const/16 p0, 0x1f40

    return p0

    :pswitch_4
    const p0, 0x2ebae4

    return p0

    :pswitch_5
    const/16 p0, 0x1b58

    return p0

    :pswitch_6
    const/16 p0, 0x3e80

    return p0

    :pswitch_7
    const p0, 0x186a0

    return p0

    :pswitch_8
    const p0, 0x9c40

    return p0

    :pswitch_9
    const p0, 0x225510

    return p0

    :pswitch_a
    const p0, 0x2ee00

    return p0

    :pswitch_b
    const p0, 0xbb800

    return p0

    :pswitch_c
    const p0, 0x13880

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public a(IIIIID)I
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/x;->c(IIIII)I

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p2, p6

    double-to-int p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p4

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p4

    mul-int/2addr p1, p4

    return p1
.end method

.method protected c(IIIII)I
    .locals 0

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/x;->f(I)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/x;->e(I)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p1, p5, p4}, Lcom/google/android/exoplayer2/audio/x;->g(III)I

    move-result p1

    return p1
.end method

.method protected e(I)I
    .locals 4

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/x;->d(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->f:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result p1

    return p1
.end method

.method protected f(I)I
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->e:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/x;->g:I

    mul-int/2addr v0, v1

    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/x;->d(I)I

    move-result p1

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result p1

    return p1
.end method

.method protected g(III)I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->d:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->b:I

    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/audio/x;->b(III)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/x;->c:I

    invoke-static {v1, p2, p3}, Lcom/google/android/exoplayer2/audio/x;->b(III)I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/google/android/exoplayer2/util/p0;->q(III)I

    move-result p1

    return p1
.end method
