.class final Lkotlinx/serialization/json/m;
.super Lkotlinx/serialization/json/a;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/f;Lf00/c;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/a;-><init>(Lkotlinx/serialization/json/f;Lf00/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0}, Lkotlinx/serialization/json/m;->g()V

    return-void
.end method

.method private final g()V
    .locals 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object v0

    invoke-static {}, Lf00/d;->a()Lf00/c;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/j0;

    invoke-virtual {p0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/f;->k()Z

    move-result v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/j0;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf00/c;->a(Lf00/e;)V

    return-void
.end method
