.class public abstract Lcom/google/common/primitives/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(J)B
    .locals 4

    const/16 v0, 0x8

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "out of range: %s"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/m;->h(ZLjava/lang/String;J)V

    long-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public static b(BB)I
    .locals 0

    invoke-static {p0}, Lcom/google/common/primitives/e;->c(B)I

    move-result p0

    invoke-static {p1}, Lcom/google/common/primitives/e;->c(B)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static c(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
