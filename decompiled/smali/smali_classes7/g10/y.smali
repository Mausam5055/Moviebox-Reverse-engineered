.class public abstract Lg10/y;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lg10/y;BB)B
    .locals 4

    invoke-virtual {p0}, Lg10/y;->f()[I

    move-result-object v0

    invoke-virtual {p0}, Lg10/y;->e()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {p0}, Lg10/y;->a()[I

    move-result-object v2

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    shr-int/2addr v2, p1

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0}, Lg10/y;->e()I

    move-result v1

    mul-int/2addr p2, v1

    invoke-virtual {p0}, Lg10/y;->a()[I

    move-result-object p0

    aget p0, p0, v3

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0xf

    add-int/2addr p2, p0

    and-int/lit8 p0, p2, 0x7

    shl-int/lit8 p0, p0, 0x2

    shr-int p0, v0, p0

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method public abstract a()[I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract d()Z
.end method

.method public abstract e()I
.end method

.method public abstract f()[I
.end method
