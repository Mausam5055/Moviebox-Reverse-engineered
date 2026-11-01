.class public final Lcom/google/firebase/perf/v1/d$b;
.super Lcom/google/protobuf/GeneratedMessageLite$b;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/d;->d()Lcom/google/firebase/perf/v1/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/d$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(J)Lcom/google/firebase/perf/v1/d$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/d;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/d;->h(Lcom/google/firebase/perf/v1/d;J)V

    return-object p0
.end method

.method public i(J)Lcom/google/firebase/perf/v1/d$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/d;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/d;->j(Lcom/google/firebase/perf/v1/d;J)V

    return-object p0
.end method

.method public j(J)Lcom/google/firebase/perf/v1/d$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/d;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/d;->i(Lcom/google/firebase/perf/v1/d;J)V

    return-object p0
.end method
