.class Lkotlin/uuid/b;
.super Lkotlin/uuid/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/uuid/a;-><init>()V

    return-void
.end method

.method public static final d(J[BIII)V
    .locals 4

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    rsub-int/lit8 p4, p4, 0x7

    rsub-int/lit8 p5, p5, 0x8

    if-gt p5, p4, :cond_0

    :goto_0
    shl-int/lit8 v0, p4, 0x3

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Lkotlin/text/HexExtensionsKt;->a()[I

    move-result-object v1

    aget v0, v1, v0

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 p3, p3, 0x2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    if-eq p4, p5, :cond_0

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final e([BIJ)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_0

    shl-int/lit8 v1, v0, 0x3

    add-int/lit8 v2, p1, 0x1

    shr-long v3, p2, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v0, v0, -0x1

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method
