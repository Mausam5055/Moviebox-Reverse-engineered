.class final Lkotlinx/serialization/json/internal/d0;
.super Lkotlinx/serialization/json/internal/c;


# instance fields
.field private final f:Lkotlinx/serialization/json/b;

.field private final g:I

.field private h:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/b;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/internal/c;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/d0;->f:Lkotlinx/serialization/json/b;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/d0;->x0()Lkotlinx/serialization/json/b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/b;->size()I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/json/internal/d0;->g:I

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/serialization/json/internal/d0;->h:I

    return-void
.end method


# virtual methods
.method protected c0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;
    .locals 1

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/d0;->x0()Lkotlinx/serialization/json/b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/b;->c(I)Lkotlinx/serialization/json/h;

    move-result-object p1

    return-object p1
.end method

.method public o(Lkotlinx/serialization/descriptors/f;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lkotlinx/serialization/json/internal/d0;->h:I

    iget v0, p0, Lkotlinx/serialization/json/internal/d0;->g:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/serialization/json/internal/d0;->h:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic v0()Lkotlinx/serialization/json/h;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/d0;->x0()Lkotlinx/serialization/json/b;

    move-result-object v0

    return-object v0
.end method

.method public x0()Lkotlinx/serialization/json/b;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/d0;->f:Lkotlinx/serialization/json/b;

    return-object v0
.end method
