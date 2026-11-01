.class public abstract Lkotlinx/serialization/internal/o0;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;Lkotlinx/serialization/b;)Lkotlinx/serialization/descriptors/f;
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primitiveSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/n0;

    new-instance v1, Lkotlinx/serialization/internal/o0$a;

    invoke-direct {v1, p1}, Lkotlinx/serialization/internal/o0$a;-><init>(Lkotlinx/serialization/b;)V

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/internal/n0;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;)V

    return-object v0
.end method
