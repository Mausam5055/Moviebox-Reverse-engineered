.class final Landroidx/media3/exoplayer/video/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroidx/media3/container/ObuParser$d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroidx/media3/container/ObuParser$c;Z)Z
    .locals 4

    iget v0, p1, Landroidx/media3/container/ObuParser$c;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    return v3

    :cond_1
    const/4 p2, 0x6

    if-eq v0, p2, :cond_2

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/video/a;->a:Landroidx/media3/container/ObuParser$d;

    if-eqz p2, :cond_4

    invoke-static {p2, p1}, Landroidx/media3/container/ObuParser$b;->b(Landroidx/media3/container/ObuParser$d;Landroidx/media3/container/ObuParser$c;)Landroidx/media3/container/ObuParser$b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/media3/container/ObuParser$b;->a()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    return v2

    :cond_4
    return v3

    :cond_5
    :goto_1
    return v2
.end method

.method private e(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/ObuParser$c;

    iget v1, v1, Landroidx/media3/container/ObuParser$c;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/ObuParser$c;

    invoke-static {v1}, Landroidx/media3/container/ObuParser$d;->a(Landroidx/media3/container/ObuParser$c;)Landroidx/media3/container/ObuParser$d;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/video/a;->a:Landroidx/media3/container/ObuParser$d;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1}, Landroidx/media3/container/ObuParser;->e(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/a;->e(Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/a;->a:Landroidx/media3/container/ObuParser$d;

    return-void
.end method

.method public d(Ljava/nio/ByteBuffer;Z)I
    .locals 6

    invoke-static {p1}, Landroidx/media3/container/ObuParser;->e(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/a;->e(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/ObuParser$c;

    invoke-direct {p0, v4, p2}, Landroidx/media3/exoplayer/video/a;->a(Landroidx/media3/container/ObuParser$c;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/ObuParser$c;

    iget v4, v4, Landroidx/media3/container/ObuParser$c;->a:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/ObuParser$c;

    iget v4, v4, Landroidx/media3/container/ObuParser$c;->a:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-gt v3, v2, :cond_5

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x8

    if-lt p2, v2, :cond_3

    goto :goto_1

    :cond_3
    if-ltz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/container/ObuParser$c;

    iget-object p1, p1, Landroidx/media3/container/ObuParser$c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    return p1

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    return p1
.end method
