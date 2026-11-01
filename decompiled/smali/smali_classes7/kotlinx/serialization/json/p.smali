.class final Lkotlinx/serialization/json/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final a:Lkotlinx/serialization/json/p;

.field private static final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/p;

    invoke-direct {v0}, Lkotlinx/serialization/json/p;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/p;->a:Lkotlinx/serialization/json/p;

    const-string v0, "kotlinx.serialization.json.JsonLiteral"

    sget-object v1, Lkotlinx/serialization/descriptors/e$i;->a:Lkotlinx/serialization/descriptors/e$i;

    invoke-static {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/e;)Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/p;->b:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le00/e;)Lkotlinx/serialization/json/o;
    .locals 2

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->d(Le00/e;)Lkotlinx/serialization/json/g;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/json/g;->g()Lkotlinx/serialization/json/h;

    move-result-object p1

    instance-of v0, p1, Lkotlinx/serialization/json/o;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/o;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected JSON element, expected JsonLiteral, had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1, v0, p1}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1
.end method

.method public b(Le00/f;Lkotlinx/serialization/json/o;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->c(Le00/f;)V

    invoke-virtual {p2}, Lkotlinx/serialization/json/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lkotlinx/serialization/json/o;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le00/f;->G(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lkotlinx/serialization/json/j;->n(Lkotlinx/serialization/json/u;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le00/f;->m(J)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lkotlinx/serialization/json/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/UStringsKt;->h(Ljava/lang/String;)Lkotlin/ULong;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlin/ULong;->h()J

    move-result-wide v0

    sget-object p2, Lkotlin/ULong;->b:Lkotlin/ULong$Companion;

    invoke-static {p2}, Ld00/a;->v(Lkotlin/ULong$Companion;)Lkotlinx/serialization/b;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p2

    invoke-interface {p1, p2}, Le00/f;->l(Lkotlinx/serialization/descriptors/f;)Le00/f;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Le00/f;->m(J)V

    return-void

    :cond_2
    invoke-static {p2}, Lkotlinx/serialization/json/j;->h(Lkotlinx/serialization/json/u;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le00/f;->g(D)V

    return-void

    :cond_3
    invoke-static {p2}, Lkotlinx/serialization/json/j;->e(Lkotlinx/serialization/json/u;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Le00/f;->r(Z)V

    return-void

    :cond_4
    invoke-virtual {p2}, Lkotlinx/serialization/json/o;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le00/f;->G(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/p;->a(Le00/e;)Lkotlinx/serialization/json/o;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/p;->b:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/o;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/p;->b(Le00/f;Lkotlinx/serialization/json/o;)V

    return-void
.end method
