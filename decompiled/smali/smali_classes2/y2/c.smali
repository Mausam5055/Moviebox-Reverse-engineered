.class public final Ly2/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/x$a;


# instance fields
.field public final a:[B

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/c;->a:[B

    iput-object p2, p0, Ly2/c;->b:Ljava/lang/String;

    iput-object p3, p0, Ly2/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/v$b;)V
    .locals 1

    iget-object v0, p0, Ly2/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->p0(Ljava/lang/CharSequence;)Landroidx/media3/common/v$b;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ly2/c;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ly2/c;

    iget-object v0, p0, Ly2/c;->a:[B

    iget-object p1, p1, Ly2/c;->a:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
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
    .locals 1

    iget-object v0, p0, Ly2/c;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ly2/c;->b:Ljava/lang/String;

    iget-object v1, p0, Ly2/c;->c:Ljava/lang/String;

    iget-object v2, p0, Ly2/c;->a:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\""

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
