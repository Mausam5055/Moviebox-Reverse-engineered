.class public final Lkotlinx/serialization/internal/i2;
.super Lkotlinx/serialization/internal/r1;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final c:Lkotlinx/serialization/internal/i2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/i2;

    invoke-direct {v0}, Lkotlinx/serialization/internal/i2;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/i2;->c:Lkotlinx/serialization/internal/i2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/UInt;->b:Lkotlin/UInt$Companion;

    invoke-static {v0}, Ld00/a;->u(Lkotlin/UInt$Companion;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/r1;-><init>(Lkotlinx/serialization/b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/UIntArray;

    invoke-virtual {p1}, Lkotlin/UIntArray;->u()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/i2;->v([I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic h(Le00/c;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lkotlinx/serialization/internal/h2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/i2;->x(Le00/c;ILkotlinx/serialization/internal/h2;Z)V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/UIntArray;

    invoke-virtual {p1}, Lkotlin/UIntArray;->u()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/i2;->y([I)Lkotlinx/serialization/internal/h2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/i2;->w()[I

    move-result-object v0

    invoke-static {v0}, Lkotlin/UIntArray;->a([I)Lkotlin/UIntArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Le00/d;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lkotlin/UIntArray;

    invoke-virtual {p2}, Lkotlin/UIntArray;->u()[I

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/i2;->z(Le00/d;[II)V

    return-void
.end method

.method protected v([I)I
    .locals 1

    const-string v0, "$this$collectionSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/UIntArray;->o([I)I

    move-result p1

    return p1
.end method

.method protected w()[I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/UIntArray;->c(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected x(Le00/c;ILkotlinx/serialization/internal/h2;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/r1;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Le00/c;->r(Lkotlinx/serialization/descriptors/f;I)Le00/e;

    move-result-object p1

    invoke-interface {p1}, Le00/e;->h()I

    move-result p1

    invoke-static {p1}, Lkotlin/UInt;->b(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lkotlinx/serialization/internal/h2;->e(I)V

    return-void
.end method

.method protected y([I)Lkotlinx/serialization/internal/h2;
    .locals 2

    const-string v0, "$this$toBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/h2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlinx/serialization/internal/h2;-><init>([ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method protected z(Le00/d;[II)V
    .locals 3

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/r1;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Le00/d;->f(Lkotlinx/serialization/descriptors/f;I)Le00/f;

    move-result-object v1

    invoke-static {p2, v0}, Lkotlin/UIntArray;->m([II)I

    move-result v2

    invoke-interface {v1, v2}, Le00/f;->B(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
