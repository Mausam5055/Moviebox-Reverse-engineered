.class public final Lcom/google/firebase/perf/v1/c$b;
.super Lcom/google/protobuf/GeneratedMessageLite$b;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/c;->d()Lcom/google/firebase/perf/v1/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->q()Z

    move-result v0

    return v0
.end method

.method public j(Ljava/util/Map;)Lcom/google/firebase/perf/v1/c$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/c;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/c;->j(Lcom/google/firebase/perf/v1/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public k(Lcom/google/firebase/perf/v1/a$b;)Lcom/google/firebase/perf/v1/c$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/c;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/a;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/c;->l(Lcom/google/firebase/perf/v1/c;Lcom/google/firebase/perf/v1/a;)V

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/google/firebase/perf/v1/c$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/c;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/c;->k(Lcom/google/firebase/perf/v1/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public m(Lcom/google/firebase/perf/v1/ApplicationProcessState;)Lcom/google/firebase/perf/v1/c$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/c;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/c;->i(Lcom/google/firebase/perf/v1/c;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/google/firebase/perf/v1/c$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/c;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/c;->h(Lcom/google/firebase/perf/v1/c;Ljava/lang/String;)V

    return-object p0
.end method
