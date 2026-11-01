.class public abstract Lu2/c;
.super Ljava/lang/Object;

# interfaces
.implements Lu2/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lu2/b;)Landroidx/media3/common/x;
    .locals 2

    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    invoke-virtual {p0, p1, v0}, Lu2/c;->b(Lu2/b;Ljava/nio/ByteBuffer;)Landroidx/media3/common/x;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Lu2/b;Ljava/nio/ByteBuffer;)Landroidx/media3/common/x;
.end method
