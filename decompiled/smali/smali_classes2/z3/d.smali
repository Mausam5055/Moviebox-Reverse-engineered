.class public abstract synthetic Lz3/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lz3/e;I)Z
    .locals 2

    invoke-interface {p0, p1}, Lz3/e;->getLong(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
