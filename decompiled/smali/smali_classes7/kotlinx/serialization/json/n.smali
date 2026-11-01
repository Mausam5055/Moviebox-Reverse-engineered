.class public abstract Lkotlinx/serialization/json/n;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/a;
    .locals 1

    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/d;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/d;-><init>(Lkotlinx/serialization/json/a;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/d;->a()Lkotlinx/serialization/json/f;

    move-result-object p0

    new-instance p1, Lkotlinx/serialization/json/m;

    invoke-virtual {v0}, Lkotlinx/serialization/json/d;->b()Lf00/c;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lkotlinx/serialization/json/m;-><init>(Lkotlinx/serialization/json/f;Lf00/c;)V

    return-object p1
.end method

.method public static synthetic b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p0, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/serialization/json/n;->a(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/a;

    move-result-object p0

    return-object p0
.end method
