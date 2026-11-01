.class public final Landroidx/media3/container/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/x$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p4}, Landroidx/media3/container/b;->d(Ljava/lang/String;[BI)V

    iput-object p1, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/container/b;->b:[B

    iput p3, p0, Landroidx/media3/container/b;->c:I

    iput p4, p0, Landroidx/media3/container/b;->d:I

    return-void
.end method

.method private static c(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track types = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/google/common/base/g;->g(C)Lcom/google/common/base/g;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/g;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;[BI)V
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "auxiliary.tracks.map"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "auxiliary.tracks.offset"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v4, "auxiliary.tracks.length"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "auxiliary.tracks.interleaved"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_0

    :sswitch_4
    const-string v4, "com.android.capture.fps"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p2, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    goto :goto_1

    :pswitch_1
    const/16 p0, 0x4e

    if-ne p2, p0, :cond_6

    array-length p0, p1

    const/16 p1, 0x8

    if-ne p0, p1, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    goto :goto_1

    :pswitch_2
    const/16 p0, 0x4b

    if-ne p2, p0, :cond_8

    array-length p0, p1

    if-ne p0, v2, :cond_8

    aget-byte p0, p1, v1

    if-eqz p0, :cond_7

    if-ne p0, v2, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    goto :goto_1

    :pswitch_3
    const/16 p0, 0x17

    if-ne p2, p0, :cond_9

    array-length p0, p1

    if-ne p0, v0, :cond_9

    move v1, v2

    :cond_9
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7438daab -> :sswitch_4
        -0x100eb5d5 -> :sswitch_3
        0x3c4d37e4 -> :sswitch_2
        0x41766191 -> :sswitch_1
        0x7755f91e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public synthetic a(Landroidx/media3/common/v$b;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/w;->c(Landroidx/media3/common/x$a;Landroidx/media3/common/v$b;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    const-string v1, "auxiliary.tracks.map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Metadata is not an auxiliary tracks map"

    invoke-static {v0, v1}, Landroidx/media3/common/util/a;->h(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/media3/container/b;->b:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/container/b;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/container/b;

    iget-object v2, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/container/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/container/b;->b:[B

    iget-object v3, p1, Landroidx/media3/container/b;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/container/b;->c:I

    iget v3, p1, Landroidx/media3/container/b;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/container/b;->d:I

    iget p1, p1, Landroidx/media3/container/b;->d:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public synthetic getWrappedMetadataBytes()[B
    .locals 1

    invoke-static {p0}, Landroidx/media3/common/w;->a(Landroidx/media3/common/x$a;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Landroidx/media3/common/r;
    .locals 1

    invoke-static {p0}, Landroidx/media3/common/w;->b(Landroidx/media3/common/x$a;)Landroidx/media3/common/r;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/container/b;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/container/b;->d:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/media3/container/b;->d:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/common/util/j0;

    iget-object v1, p0, Landroidx/media3/container/b;->b:[B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>([B)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Landroidx/media3/container/a;->a(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->g([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->g([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    invoke-static {v0}, Landroidx/media3/common/util/a1;->H([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    const-string v1, "auxiliary.tracks.map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/media3/container/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/container/b;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    invoke-static {v0}, Landroidx/media3/common/util/a1;->u1([B)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdta: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
