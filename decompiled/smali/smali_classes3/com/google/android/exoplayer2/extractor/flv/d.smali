.class final Lcom/google/android/exoplayer2/extractor/flv/d;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lg9/e0;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lg9/e0;)V

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    sget-object v0, Lcom/google/android/exoplayer2/util/x;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/d0;

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/d0;

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/exoplayer2/util/d0;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c(Lcom/google/android/exoplayer2/util/d0;J)Z
    .locals 10

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->o()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->e:Z

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/a;->b(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/video/a;

    move-result-object p1

    iget v0, p1, Lcom/google/android/exoplayer2/video/a;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:I

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplayer2/video/a;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->j0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplayer2/video/a;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->Q(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplayer2/video/a;->e:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->a0(F)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/a;->a:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lg9/e0;

    invoke-interface {v0, p1}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->e:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->e:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->g:I

    if-ne v0, p2, :cond_1

    move v6, p2

    goto :goto_0

    :cond_1
    move v6, p3

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->f:Z

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    return p3

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    aput-byte p3, v0, p3

    aput-byte p3, v0, p2

    const/4 v1, 0x2

    aput-byte p3, v0, v1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    move v7, p3

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:I

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lg9/e0;

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-interface {v3, v8, v1}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    add-int/lit8 v7, v7, 0x4

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lg9/e0;

    invoke-interface {v3, p1, v2}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    add-int/2addr v7, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lg9/e0;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lg9/e0;->d(JIIILg9/e0$a;)V

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->f:Z

    return p2

    :cond_4
    return p3
.end method
