.class public abstract Lkotlinx/serialization/json/internal/m0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lkotlin/UInt;->b:Lkotlin/UInt$Companion;

    invoke-static {v0}, Ld00/a;->u(Lkotlin/UInt$Companion;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    sget-object v1, Lkotlin/ULong;->b:Lkotlin/ULong$Companion;

    invoke-static {v1}, Ld00/a;->v(Lkotlin/ULong$Companion;)Lkotlinx/serialization/b;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    sget-object v2, Lkotlin/UByte;->b:Lkotlin/UByte$Companion;

    invoke-static {v2}, Ld00/a;->t(Lkotlin/UByte$Companion;)Lkotlinx/serialization/b;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v2

    sget-object v3, Lkotlin/UShort;->b:Lkotlin/UShort$Companion;

    invoke-static {v3}, Ld00/a;->w(Lkotlin/UShort$Companion;)Lkotlinx/serialization/b;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Lkotlinx/serialization/descriptors/f;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/SetsKt;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/internal/m0;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Lkotlinx/serialization/descriptors/f;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/f;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/serialization/json/internal/m0;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
