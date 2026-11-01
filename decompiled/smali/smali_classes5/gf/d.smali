.class public abstract Lgf/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    const v0, 0x8000

    invoke-static {p0, v0}, Lgf/d;->b(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/InputStream;I)[B
    .locals 3

    if-gtz p1, :cond_0

    const p1, 0x8000

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 p1, 0x2000

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
