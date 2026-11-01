.class public abstract Li3/j;
.super Landroidx/media3/decoder/SimpleDecoder;

# interfaces
.implements Li3/l;


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Li3/o;

    new-array v0, v0, [Li3/p;

    invoke-direct {p0, v1, v0}, Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/h;)V

    iput-object p1, p0, Li3/j;->o:Ljava/lang/String;

    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->s(I)V

    return-void
.end method

.method static synthetic t(Li3/j;Landroidx/media3/decoder/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->p(Landroidx/media3/decoder/h;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic e()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 1

    invoke-virtual {p0}, Li3/j;->u()Li3/o;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic f()Landroidx/media3/decoder/h;
    .locals 1

    invoke-virtual {p0}, Li3/j;->v()Li3/p;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic g(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 0

    invoke-virtual {p0, p1}, Li3/j;->w(Ljava/lang/Throwable;)Landroidx/media3/extractor/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li3/j;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic h(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/h;Z)Landroidx/media3/decoder/DecoderException;
    .locals 0

    check-cast p1, Li3/o;

    check-cast p2, Li3/p;

    invoke-virtual {p0, p1, p2, p3}, Li3/j;->x(Li3/o;Li3/p;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method

.method protected final u()Li3/o;
    .locals 1

    new-instance v0, Li3/o;

    invoke-direct {v0}, Li3/o;-><init>()V

    return-object v0
.end method

.method protected final v()Li3/p;
    .locals 1

    new-instance v0, Li3/j$a;

    invoke-direct {v0, p0}, Li3/j$a;-><init>(Li3/j;)V

    return-object v0
.end method

.method protected final w(Ljava/lang/Throwable;)Landroidx/media3/extractor/text/SubtitleDecoderException;
    .locals 2

    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected final x(Li3/o;Li3/p;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;
    .locals 8

    :try_start_0
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Li3/j;->y([BIZ)Li3/k;

    move-result-object v5

    iget-wide v3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iget-wide v6, p1, Li3/o;->i:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Li3/p;->a(JLi3/k;J)V

    const/4 p1, 0x0

    iput-boolean p1, p2, Landroidx/media3/decoder/h;->shouldBeSkipped:Z
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method protected abstract y([BIZ)Li3/k;
.end method
