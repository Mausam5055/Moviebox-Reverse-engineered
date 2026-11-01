.class public abstract Lkotlinx/serialization/json/internal/s;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlinx/serialization/json/internal/h0;Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/internal/j;
    .locals 1

    const-string v0, "sb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/serialization/json/internal/r;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/internal/r;-><init>(Lkotlinx/serialization/json/internal/h0;Lkotlinx/serialization/json/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/j;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/internal/j;-><init>(Lkotlinx/serialization/json/internal/h0;)V

    :goto_0
    return-object v0
.end method
