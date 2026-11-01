.class public final Lcom/google/firebase/perf/v1/h$c;
.super Lcom/google/protobuf/GeneratedMessageLite$b;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/h;->d()Lcom/google/firebase/perf/v1/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/h$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/h$c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/google/firebase/perf/v1/SessionVerbosity;)Lcom/google/firebase/perf/v1/h$c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/h;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/h;->i(Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/SessionVerbosity;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/google/firebase/perf/v1/h$c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/h;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/h;->h(Lcom/google/firebase/perf/v1/h;Ljava/lang/String;)V

    return-object p0
.end method
