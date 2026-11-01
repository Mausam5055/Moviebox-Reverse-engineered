.class final Lkotlinx/serialization/json/internal/y;
.super Lkotlinx/serialization/json/internal/c;


# instance fields
.field private final f:Lkotlinx/serialization/json/u;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/u;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/internal/c;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/y;->f:Lkotlinx/serialization/json/u;

    const-string p1, "primitive"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->Z(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primitive"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/y;->x0()Lkotlinx/serialization/json/u;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This input can only handle primitives with \'primitive\' tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Lkotlinx/serialization/descriptors/f;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic v0()Lkotlinx/serialization/json/h;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/y;->x0()Lkotlinx/serialization/json/u;

    move-result-object v0

    return-object v0
.end method

.method public x0()Lkotlinx/serialization/json/u;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/y;->f:Lkotlinx/serialization/json/u;

    return-object v0
.end method
