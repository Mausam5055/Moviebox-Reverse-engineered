.class public abstract Lba/h;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

# interfaces
.implements Lba/j;


# instance fields
.field private final n:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lba/m;

    new-array v0, v0, [Lba/n;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/f;)V

    iput-object p1, p0, Lba/h;->n:Ljava/lang/String;

    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->q(I)V

    return-void
.end method

.method static synthetic r(Lba/h;Lcom/google/android/exoplayer2/decoder/f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->n(Lcom/google/android/exoplayer2/decoder/f;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic c()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    invoke-virtual {p0}, Lba/h;->s()Lba/m;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Lcom/google/android/exoplayer2/decoder/f;
    .locals 1

    invoke-virtual {p0}, Lba/h;->t()Lba/n;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    invoke-virtual {p0, p1}, Lba/h;->u(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic f(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/f;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    check-cast p1, Lba/m;

    check-cast p2, Lba/n;

    invoke-virtual {p0, p1, p2, p3}, Lba/h;->w(Lba/m;Lba/n;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected final s()Lba/m;
    .locals 1

    new-instance v0, Lba/m;

    invoke-direct {v0}, Lba/m;-><init>()V

    return-object v0
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method

.method protected final t()Lba/n;
    .locals 1

    new-instance v0, Lba/h$a;

    invoke-direct {v0, p0}, Lba/h$a;-><init>(Lba/h;)V

    return-object v0
.end method

.method protected final u(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected abstract v([BIZ)Lba/i;
.end method

.method protected final w(Lba/m;Lba/n;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 8

    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lba/h;->v([BIZ)Lba/i;

    move-result-object v5

    iget-wide v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v6, p1, Lba/m;->i:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lba/n;->m(JLba/i;J)V

    const/high16 p1, -0x80000000

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/a;->d(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method
