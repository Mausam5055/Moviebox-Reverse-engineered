.class public final Lkotlinx/serialization/internal/q2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final b:Lkotlinx/serialization/internal/q2;


# instance fields
.field private final synthetic a:Lkotlinx/serialization/internal/ObjectSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/q2;

    invoke-direct {v0}, Lkotlinx/serialization/internal/q2;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/q2;->b:Lkotlinx/serialization/internal/q2;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v1, "kotlin.Unit"

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/q2;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    return-void
.end method


# virtual methods
.method public a(Le00/e;)V
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/q2;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/internal/ObjectSerializer;->deserialize(Le00/e;)Ljava/lang/Object;

    return-void
.end method

.method public b(Le00/f;Lkotlin/Unit;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/q2;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/internal/ObjectSerializer;->serialize(Le00/f;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/q2;->a(Le00/e;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/q2;->a:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {v0}, Lkotlinx/serialization/internal/ObjectSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/q2;->b(Le00/f;Lkotlin/Unit;)V

    return-void
.end method
