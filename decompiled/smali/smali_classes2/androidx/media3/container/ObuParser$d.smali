.class public final Landroidx/media3/container/ObuParser$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:I


# direct methods
.method private constructor <init>(Landroidx/media3/container/ObuParser$c;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/media3/container/ObuParser$c;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v0, p1, Landroidx/media3/container/ObuParser$c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iget-object p1, p1, Landroidx/media3/container/ObuParser$c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p1, Landroidx/media3/common/util/i0;

    invoke-direct {p1, v0}, Landroidx/media3/common/util/i0;-><init>([B)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/container/ObuParser$d;->a:Z

    invoke-static {v3}, Landroidx/media3/container/ObuParser;->a(Z)V

    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroidx/media3/container/ObuParser$d;->b(Landroidx/media3/common/util/i0;)V

    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/container/ObuParser$d;->b:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/container/ObuParser$d;->b:Z

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v5

    move v6, v1

    :goto_2
    if-gt v6, v5, :cond_5

    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v7

    const/4 v8, 0x7

    if-le v7, v8, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->q()V

    :cond_3
    iget-boolean v7, p0, Landroidx/media3/container/ObuParser$d;->b:Z

    invoke-static {v7}, Landroidx/media3/container/ObuParser;->a(Z)V

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v3

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/container/ObuParser$d;->c:Z

    invoke-static {v3}, Landroidx/media3/container/ObuParser;->a(Z)V

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_6
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$d;->d:Z

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/media3/container/ObuParser$d;->d:Z

    :goto_3
    iget-boolean v4, p0, Landroidx/media3/container/ObuParser$d;->d:Z

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    if-eqz v4, :cond_8

    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$d;->e:Z

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/media3/container/ObuParser$d;->e:Z

    goto :goto_4

    :cond_9
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$d;->e:Z

    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/container/ObuParser$d;->f:I

    goto :goto_5

    :cond_a
    iput v1, p0, Landroidx/media3/container/ObuParser$d;->f:I

    :goto_5
    return-void
.end method

.method public static a(Landroidx/media3/container/ObuParser$c;)Landroidx/media3/container/ObuParser$d;
    .locals 1

    :try_start_0
    new-instance v0, Landroidx/media3/container/ObuParser$d;

    invoke-direct {v0, p0}, Landroidx/media3/container/ObuParser$d;-><init>(Landroidx/media3/container/ObuParser$c;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroidx/media3/common/util/i0;)V
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/media3/container/ObuParser;->b(Landroidx/media3/common/util/i0;)V

    :cond_0
    return-void
.end method
