.class public abstract Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/j;
.super Ljava/lang/Object;


# direct methods
.method public static final a(II)I
    .locals 0

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static final b()Lt/f;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/h;->b:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/h$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/h$a;->a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/h;

    move-result-object v0

    return-object v0
.end method

.method public static final c(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static final d(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    and-int/lit8 p0, p0, -0x20

    return p0
.end method
