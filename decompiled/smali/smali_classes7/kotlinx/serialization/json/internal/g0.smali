.class final Lkotlinx/serialization/json/internal/g0;
.super Lkotlinx/serialization/json/internal/c0;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nodeConsumer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/c0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/g0;->h:Z

    return-void
.end method


# virtual methods
.method public v0()Lkotlinx/serialization/json/h;
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c0;->x0()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lkotlinx/serialization/json/internal/g0;->h:Z

    if-eqz p1, :cond_3

    instance-of p1, p2, Lkotlinx/serialization/json/u;

    if-eqz p1, :cond_0

    check-cast p2, Lkotlinx/serialization/json/u;

    invoke-virtual {p2}, Lkotlinx/serialization/json/u;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/g0;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/g0;->h:Z

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lkotlinx/serialization/json/JsonObject;

    if-nez p1, :cond_2

    instance-of p1, p2, Lkotlinx/serialization/json/b;

    if-eqz p1, :cond_1

    sget-object p1, Lkotlinx/serialization/json/c;->a:Lkotlinx/serialization/json/c;

    invoke-virtual {p1}, Lkotlinx/serialization/json/c;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/json/internal/w;->d(Lkotlinx/serialization/descriptors/f;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    sget-object p1, Lkotlinx/serialization/json/t;->a:Lkotlinx/serialization/json/t;

    invoke-virtual {p1}, Lkotlinx/serialization/json/t;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/json/internal/w;->d(Lkotlinx/serialization/descriptors/f;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c0;->x0()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/g0;->g:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "tag"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/g0;->h:Z

    :goto_0
    return-void
.end method
