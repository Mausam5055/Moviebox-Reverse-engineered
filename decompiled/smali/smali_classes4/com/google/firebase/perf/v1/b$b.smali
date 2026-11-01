.class public final Lcom/google/firebase/perf/v1/b$b;
.super Lcom/google/protobuf/GeneratedMessageLite$b;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/b;->d()Lcom/google/firebase/perf/v1/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/b$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(J)Lcom/google/firebase/perf/v1/b$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/b;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/b;->h(Lcom/google/firebase/perf/v1/b;J)V

    return-object p0
.end method

.method public i(I)Lcom/google/firebase/perf/v1/b$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/b;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/b;->i(Lcom/google/firebase/perf/v1/b;I)V

    return-object p0
.end method
