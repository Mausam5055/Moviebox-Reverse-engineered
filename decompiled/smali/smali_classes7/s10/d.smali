.class public Ls10/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([CI)I
    .locals 3

    array-length v0, p0

    :goto_0
    if-eq p1, v0, :cond_2

    aget-char v1, p0, p1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    return p1

    :cond_1
    invoke-static {p0, p1, v1}, Lorg/mvel2/util/m;->c([CIC)I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method
