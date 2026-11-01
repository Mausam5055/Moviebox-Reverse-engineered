.class public Landroidx/media3/decoder/SimpleDecoderOutputBuffer;
.super Landroidx/media3/decoder/h;


# instance fields
.field private final a:Landroidx/media3/decoder/h$a;

.field public b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/h$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/decoder/h;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->a:Landroidx/media3/decoder/h$a;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iput-object v1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public b(JI)Ljava/nio/ByteBuffer;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/decoder/h;->timeUs:J

    iget-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    if-ge p1, p3, :cond_1

    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/decoder/h;->clear()V

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->a:Landroidx/media3/decoder/h$a;

    invoke-interface {v0, p0}, Landroidx/media3/decoder/h$a;->a(Landroidx/media3/decoder/h;)V

    return-void
.end method
