.class public abstract Landroidx/media3/container/ObuParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/ObuParser$c;,
        Landroidx/media3/container/ObuParser$NotYetImplementedException;,
        Landroidx/media3/container/ObuParser$b;,
        Landroidx/media3/container/ObuParser$d;
    }
.end annotation


# direct methods
.method static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/container/ObuParser;->f(Z)V

    return-void
.end method

.method static synthetic b(Landroidx/media3/common/util/i0;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/container/ObuParser;->d(Landroidx/media3/common/util/i0;)V

    return-void
.end method

.method private static c(Ljava/nio/ByteBuffer;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    mul-int/lit8 v4, v0, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private static d(Landroidx/media3/common/util/i0;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static e(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0xf

    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/media3/container/ObuParser;->c(Ljava/nio/ByteBuffer;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v4, Landroidx/media3/container/ObuParser$c;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Landroidx/media3/container/ObuParser$c;-><init>(ILjava/nio/ByteBuffer;Landroidx/media3/container/ObuParser$a;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static f(Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroidx/media3/container/ObuParser$NotYetImplementedException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/container/ObuParser$NotYetImplementedException;-><init>(Landroidx/media3/container/ObuParser$a;)V

    throw p0
.end method
