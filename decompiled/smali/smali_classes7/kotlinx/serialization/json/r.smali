.class public final Lkotlinx/serialization/json/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final a:Lkotlinx/serialization/json/r;

.field private static final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlinx/serialization/json/r;

    invoke-direct {v0}, Lkotlinx/serialization/json/r;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/r;->a:Lkotlinx/serialization/json/r;

    sget-object v2, Lkotlinx/serialization/descriptors/h$b;->a:Lkotlinx/serialization/descriptors/h$b;

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlinx/serialization/descriptors/f;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "kotlinx.serialization.json.JsonNull"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->d(Ljava/lang/String;Lkotlinx/serialization/descriptors/h;[Lkotlinx/serialization/descriptors/f;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/r;->b:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le00/e;)Lkotlinx/serialization/json/JsonNull;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->b(Le00/e;)V

    invoke-interface {p1}, Le00/e;->D()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Le00/e;->j()Ljava/lang/Void;

    sget-object p1, Lkotlinx/serialization/json/JsonNull;->c:Lkotlinx/serialization/json/JsonNull;

    return-object p1

    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonDecodingException;

    const-string v0, "Expected \'null\' literal"

    invoke-direct {p1, v0}, Lkotlinx/serialization/json/internal/JsonDecodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Le00/f;Lkotlinx/serialization/json/JsonNull;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->c(Le00/f;)V

    invoke-interface {p1}, Le00/f;->o()V

    return-void
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/r;->a(Le00/e;)Lkotlinx/serialization/json/JsonNull;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/r;->b:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/JsonNull;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/r;->b(Le00/f;Lkotlinx/serialization/json/JsonNull;)V

    return-void
.end method
