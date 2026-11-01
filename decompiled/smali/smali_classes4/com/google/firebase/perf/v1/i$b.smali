.class public final Lcom/google/firebase/perf/v1/i$b;
.super Lcom/google/protobuf/GeneratedMessageLite$b;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->d()Lcom/google/firebase/perf/v1/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/i$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/i;->n(Lcom/google/firebase/perf/v1/i;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public i(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/i;->k(Lcom/google/firebase/perf/v1/i;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public j(Lcom/google/firebase/perf/v1/h;)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/i;->m(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/h;)V

    return-object p0
.end method

.method public k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/i;->j(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/i;)V

    return-object p0
.end method

.method public l(Ljava/util/Map;)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/i;->i(Lcom/google/firebase/perf/v1/i;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public m(Ljava/util/Map;)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/i;->l(Lcom/google/firebase/perf/v1/i;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public n(Ljava/lang/String;J)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/i;->i(Lcom/google/firebase/perf/v1/i;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/i;->l(Lcom/google/firebase/perf/v1/i;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(J)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/i;->o(Lcom/google/firebase/perf/v1/i;J)V

    return-object p0
.end method

.method public q(J)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/i;->p(Lcom/google/firebase/perf/v1/i;J)V

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/i;->h(Lcom/google/firebase/perf/v1/i;Ljava/lang/String;)V

    return-object p0
.end method
