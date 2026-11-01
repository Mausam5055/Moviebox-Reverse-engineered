.class public final Lkotlinx/serialization/internal/k;
.super Lkotlinx/serialization/internal/r1;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final c:Lkotlinx/serialization/internal/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/k;

    invoke-direct {v0}, Lkotlinx/serialization/internal/k;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/k;->c:Lkotlinx/serialization/internal/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/ByteCompanionObject;->a:Lkotlin/jvm/internal/ByteCompanionObject;

    invoke-static {v0}, Ld00/a;->z(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/r1;-><init>(Lkotlinx/serialization/b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/k;->v([B)I

    move-result p1

    return p1
.end method

.method public bridge synthetic h(Le00/c;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lkotlinx/serialization/internal/j;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/k;->x(Le00/c;ILkotlinx/serialization/internal/j;Z)V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/k;->y([B)Lkotlinx/serialization/internal/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/k;->w()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Le00/d;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/k;->z(Le00/d;[BI)V

    return-void
.end method

.method protected v([B)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    return p1
.end method

.method protected w()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected x(Le00/c;ILkotlinx/serialization/internal/j;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/r1;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Le00/c;->B(Lkotlinx/serialization/descriptors/f;I)B

    move-result p1

    invoke-virtual {p3, p1}, Lkotlinx/serialization/internal/j;->e(B)V

    return-void
.end method

.method protected y([B)Lkotlinx/serialization/internal/j;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/j;

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/j;-><init>([B)V

    return-object v0
.end method

.method protected z(Le00/d;[BI)V
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

    aget-byte v2, p2, v0

    invoke-interface {p1, v1, v0, v2}, Le00/d;->p(Lkotlinx/serialization/descriptors/f;IB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
