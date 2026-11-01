.class abstract Landroidx/core/view/WindowInsetsCompat$n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation


# direct methods
.method static a(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x200

    if-gt v2, v3, :cond_a

    and-int v4, p0, v2

    if-eqz v4, :cond_9

    if-eq v2, v1, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x4

    if-eq v2, v4, :cond_6

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    const/16 v4, 0x10

    if-eq v2, v4, :cond_4

    const/16 v4, 0x20

    if-eq v2, v4, :cond_3

    const/16 v4, 0x40

    if-eq v2, v4, :cond_2

    const/16 v4, 0x80

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroidx/core/view/q2;->a()I

    move-result v3

    :goto_1
    or-int/2addr v0, v3

    goto :goto_2

    :cond_1
    invoke-static {}, Landroidx/core/view/p2;->a()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-static {}, Landroidx/core/view/o2;->a()I

    move-result v3

    goto :goto_1

    :cond_3
    invoke-static {}, Landroidx/core/view/n2;->a()I

    move-result v3

    goto :goto_1

    :cond_4
    invoke-static {}, Landroidx/core/view/m2;->a()I

    move-result v3

    goto :goto_1

    :cond_5
    invoke-static {}, Landroidx/core/view/a0;->a()I

    move-result v3

    goto :goto_1

    :cond_6
    invoke-static {}, Landroidx/core/view/l2;->a()I

    move-result v3

    goto :goto_1

    :cond_7
    invoke-static {}, Landroidx/core/view/k2;->a()I

    move-result v3

    goto :goto_1

    :cond_8
    invoke-static {}, Landroidx/core/view/j2;->a()I

    move-result v3

    goto :goto_1

    :cond_9
    :goto_2
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    return v0
.end method
