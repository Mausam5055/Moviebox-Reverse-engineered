.class public final Lkotlinx/serialization/internal/l2;
.super Lkotlinx/serialization/internal/r1;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final c:Lkotlinx/serialization/internal/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/l2;

    invoke-direct {v0}, Lkotlinx/serialization/internal/l2;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/l2;->c:Lkotlinx/serialization/internal/l2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/ULong;->b:Lkotlin/ULong$Companion;

    invoke-static {v0}, Ld00/a;->v(Lkotlin/ULong$Companion;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/r1;-><init>(Lkotlinx/serialization/b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/ULongArray;

    invoke-virtual {p1}, Lkotlin/ULongArray;->u()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/l2;->v([J)I

    move-result p1

    return p1
.end method

.method public bridge synthetic h(Le00/c;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lkotlinx/serialization/internal/k2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/l2;->x(Le00/c;ILkotlinx/serialization/internal/k2;Z)V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/ULongArray;

    invoke-virtual {p1}, Lkotlin/ULongArray;->u()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/l2;->y([J)Lkotlinx/serialization/internal/k2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/l2;->w()[J

    move-result-object v0

    invoke-static {v0}, Lkotlin/ULongArray;->a([J)Lkotlin/ULongArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Le00/d;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lkotlin/ULongArray;

    invoke-virtual {p2}, Lkotlin/ULongArray;->u()[J

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/l2;->z(Le00/d;[JI)V

    return-void
.end method

.method protected v([J)I
    .locals 1

    const-string v0, "$this$collectionSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ULongArray;->o([J)I

    move-result p1

    return p1
.end method

.method protected w()[J
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/ULongArray;->c(I)[J

    move-result-object v0

    return-object v0
.end method

.method protected x(Le00/c;ILkotlinx/serialization/internal/k2;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/r1;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Le00/c;->r(Lkotlinx/serialization/descriptors/f;I)Le00/e;

    move-result-object p1

    invoke-interface {p1}, Le00/e;->l()J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/ULong;->b(J)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lkotlinx/serialization/internal/k2;->e(J)V

    return-void
.end method

.method protected y([J)Lkotlinx/serialization/internal/k2;
    .locals 2

    const-string v0, "$this$toBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/k2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlinx/serialization/internal/k2;-><init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method protected z(Le00/d;[JI)V
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

    invoke-interface {p1, v1, v0}, Le00/d;->f(Lkotlinx/serialization/descriptors/f;I)Le00/f;

    move-result-object v1

    invoke-static {p2, v0}, Lkotlin/ULongArray;->m([JI)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Le00/f;->m(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
