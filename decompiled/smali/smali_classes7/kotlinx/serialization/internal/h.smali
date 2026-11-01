.class public final Lkotlinx/serialization/internal/h;
.super Lkotlinx/serialization/internal/r1;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final c:Lkotlinx/serialization/internal/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/h;

    invoke-direct {v0}, Lkotlinx/serialization/internal/h;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/h;->c:Lkotlinx/serialization/internal/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/BooleanCompanionObject;->a:Lkotlin/jvm/internal/BooleanCompanionObject;

    invoke-static {v0}, Ld00/a;->y(Lkotlin/jvm/internal/BooleanCompanionObject;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/r1;-><init>(Lkotlinx/serialization/b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/h;->v([Z)I

    move-result p1

    return p1
.end method

.method public bridge synthetic h(Le00/c;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lkotlinx/serialization/internal/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/h;->x(Le00/c;ILkotlinx/serialization/internal/g;Z)V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/h;->y([Z)Lkotlinx/serialization/internal/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/h;->w()[Z

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Le00/d;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/h;->z(Le00/d;[ZI)V

    return-void
.end method

.method protected v([Z)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    return p1
.end method

.method protected w()[Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    return-object v0
.end method

.method protected x(Le00/c;ILkotlinx/serialization/internal/g;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/r1;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Le00/c;->C(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    invoke-virtual {p3, p1}, Lkotlinx/serialization/internal/g;->e(Z)V

    return-void
.end method

.method protected y([Z)Lkotlinx/serialization/internal/g;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/g;

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/g;-><init>([Z)V

    return-object v0
.end method

.method protected z(Le00/d;[ZI)V
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

    aget-boolean v2, p2, v0

    invoke-interface {p1, v1, v0, v2}, Le00/d;->x(Lkotlinx/serialization/descriptors/f;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
