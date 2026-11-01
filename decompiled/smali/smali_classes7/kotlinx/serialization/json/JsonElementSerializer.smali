.class public final Lkotlinx/serialization/json/JsonElementSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final a:Lkotlinx/serialization/json/JsonElementSerializer;

.field private static final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonElementSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    sget-object v0, Lkotlinx/serialization/descriptors/d$b;->a:Lkotlinx/serialization/descriptors/d$b;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/f;

    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;

    const-string v3, "kotlinx.serialization.json.JsonElement"

    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/h;[Lkotlinx/serialization/descriptors/f;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->b:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le00/e;)Lkotlinx/serialization/json/h;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->d(Le00/e;)Lkotlinx/serialization/json/g;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/json/g;->g()Lkotlinx/serialization/json/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Le00/f;Lkotlinx/serialization/json/h;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->c(Le00/f;)V

    instance-of v0, p2, Lkotlinx/serialization/json/u;

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/serialization/json/v;->a:Lkotlinx/serialization/json/v;

    invoke-interface {p1, v0, p2}, Le00/f;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lkotlinx/serialization/json/JsonObject;

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/serialization/json/t;->a:Lkotlinx/serialization/json/t;

    invoke-interface {p1, v0, p2}, Le00/f;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lkotlinx/serialization/json/b;

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/serialization/json/c;->a:Lkotlinx/serialization/json/c;

    invoke-interface {p1, v0, p2}, Le00/f;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonElementSerializer;->a(Le00/e;)Lkotlinx/serialization/json/h;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->b:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/h;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/JsonElementSerializer;->b(Le00/f;Lkotlinx/serialization/json/h;)V

    return-void
.end method
