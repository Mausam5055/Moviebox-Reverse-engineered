.class public final Lkotlinx/serialization/internal/g2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final a:Lkotlinx/serialization/internal/g2;

.field private static final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/g2;

    invoke-direct {v0}, Lkotlinx/serialization/internal/g2;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/g2;->a:Lkotlinx/serialization/internal/g2;

    sget-object v0, Lkotlin/jvm/internal/ByteCompanionObject;->a:Lkotlin/jvm/internal/ByteCompanionObject;

    invoke-static {v0}, Ld00/a;->z(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/b;

    move-result-object v0

    const-string v1, "kotlin.UByte"

    invoke-static {v1, v0}, Lkotlinx/serialization/internal/o0;->a(Ljava/lang/String;Lkotlinx/serialization/b;)Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/g2;->b:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le00/e;)B
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/g2;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/e;->q(Lkotlinx/serialization/descriptors/f;)Le00/e;

    move-result-object p1

    invoke-interface {p1}, Le00/e;->H()B

    move-result p1

    invoke-static {p1}, Lkotlin/UByte;->b(B)B

    move-result p1

    return p1
.end method

.method public b(Le00/f;B)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/g2;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/f;->l(Lkotlinx/serialization/descriptors/f;)Le00/f;

    move-result-object p1

    invoke-interface {p1, p2}, Le00/f;->h(B)V

    return-void
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/g2;->a(Le00/e;)B

    move-result p1

    invoke-static {p1}, Lkotlin/UByte;->a(B)Lkotlin/UByte;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/g2;->b:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlin/UByte;

    invoke-virtual {p2}, Lkotlin/UByte;->g()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/g2;->b(Le00/f;B)V

    return-void
.end method
