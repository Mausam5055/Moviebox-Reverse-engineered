.class public final Lkotlinx/serialization/json/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/c$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/json/c;

.field private static final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/c;

    invoke-direct {v0}, Lkotlinx/serialization/json/c;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/c;->a:Lkotlinx/serialization/json/c;

    sget-object v0, Lkotlinx/serialization/json/c$a;->b:Lkotlinx/serialization/json/c$a;

    sput-object v0, Lkotlinx/serialization/json/c;->b:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le00/e;)Lkotlinx/serialization/json/b;
    .locals 2

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->b(Le00/e;)V

    new-instance v0, Lkotlinx/serialization/json/b;

    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {v1}, Ld00/a;->h(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlinx/serialization/a;->deserialize(Le00/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lkotlinx/serialization/json/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public b(Le00/f;Lkotlinx/serialization/json/b;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->c(Le00/f;)V

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {v0}, Ld00/a;->h(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/g;->serialize(Le00/f;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/c;->a(Le00/e;)Lkotlinx/serialization/json/b;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/c;->b:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/c;->b(Le00/f;Lkotlinx/serialization/json/b;)V

    return-void
.end method
