.class public final Lkotlinx/serialization/internal/b0;
.super Lkotlinx/serialization/internal/r1;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final c:Lkotlinx/serialization/internal/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/b0;

    invoke-direct {v0}, Lkotlinx/serialization/internal/b0;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/b0;->c:Lkotlinx/serialization/internal/b0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->a:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-static {v0}, Ld00/a;->B(Lkotlin/jvm/internal/DoubleCompanionObject;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/r1;-><init>(Lkotlinx/serialization/b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/b0;->v([D)I

    move-result p1

    return p1
.end method

.method public bridge synthetic h(Le00/c;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lkotlinx/serialization/internal/a0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/b0;->x(Le00/c;ILkotlinx/serialization/internal/a0;Z)V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/b0;->y([D)Lkotlinx/serialization/internal/a0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/b0;->w()[D

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Le00/d;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, [D

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/b0;->z(Le00/d;[DI)V

    return-void
.end method

.method protected v([D)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    return p1
.end method

.method protected w()[D
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [D

    return-object v0
.end method

.method protected x(Le00/c;ILkotlinx/serialization/internal/a0;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/r1;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Le00/c;->F(Lkotlinx/serialization/descriptors/f;I)D

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lkotlinx/serialization/internal/a0;->e(D)V

    return-void
.end method

.method protected y([D)Lkotlinx/serialization/internal/a0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/a0;

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/a0;-><init>([D)V

    return-object v0
.end method

.method protected z(Le00/d;[DI)V
    .locals 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/r1;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    aget-wide v2, p2, v0

    invoke-interface {p1, v1, v0, v2, v3}, Le00/d;->E(Lkotlinx/serialization/descriptors/f;ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
