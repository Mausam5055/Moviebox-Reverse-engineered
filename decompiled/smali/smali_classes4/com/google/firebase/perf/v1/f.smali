.class public final Lcom/google/firebase/perf/v1/f;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/f$b;
    }
.end annotation


# static fields
.field public static final ANDROID_MEMORY_READINGS_FIELD_NUMBER:I = 0x4

.field public static final CPU_METRIC_READINGS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/f;

.field public static final GAUGE_METADATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/b1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private androidMemoryReadings_:Lcom/google/protobuf/y$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$j;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private cpuMetricReadings_:Lcom/google/protobuf/y$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$j;"
        }
    .end annotation
.end field

.field private gaugeMetadata_:Lcom/google/firebase/perf/v1/e;

.field private sessionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/f;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/f;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/f;

    const-class v1, Lcom/google/firebase/perf/v1/f;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/perf/v1/f;->sessionId_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/f;->cpuMetricReadings_:Lcom/google/protobuf/y$j;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/f;->androidMemoryReadings_:Lcom/google/protobuf/y$j;

    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/f;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/f;

    return-object v0
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/f;->setSessionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/f;->l(Lcom/google/firebase/perf/v1/b;)V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/f;->w(Lcom/google/firebase/perf/v1/e;)V

    return-void
.end method

.method static synthetic k(Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/f;->m(Lcom/google/firebase/perf/v1/d;)V

    return-void
.end method

.method private l(Lcom/google/firebase/perf/v1/b;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/f;->n()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/f;->androidMemoryReadings_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private m(Lcom/google/firebase/perf/v1/d;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/f;->o()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/f;->cpuMetricReadings_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/v1/f;->androidMemoryReadings_:Lcom/google/protobuf/y$j;

    invoke-interface {v0}, Lcom/google/protobuf/y$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/y$j;)Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/f;->androidMemoryReadings_:Lcom/google/protobuf/y$j;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/v1/f;->cpuMetricReadings_:Lcom/google/protobuf/y$j;

    invoke-interface {v0}, Lcom/google/protobuf/y$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/y$j;)Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/f;->cpuMetricReadings_:Lcom/google/protobuf/y$j;

    :cond_0
    return-void
.end method

.method public static r()Lcom/google/firebase/perf/v1/f;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/f;

    return-object v0
.end method

.method private setSessionId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/f;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/f;->sessionId_:Ljava/lang/String;

    return-void
.end method

.method public static v()Lcom/google/firebase/perf/v1/f$b;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/f$b;

    return-object v0
.end method

.method private w(Lcom/google/firebase/perf/v1/e;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/perf/v1/f;->gaugeMetadata_:Lcom/google/firebase/perf/v1/e;

    iget p1, p0, Lcom/google/firebase/perf/v1/f;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/v1/f;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x1

    sget-object p3, Lcom/google/firebase/perf/v1/f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/f;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/perf/v1/f;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/f;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/google/firebase/perf/v1/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/f;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/f;->PARSER:Lcom/google/protobuf/b1;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/f;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "bitField0_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "sessionId_"

    aput-object p3, p1, p2

    const-string p2, "cpuMetricReadings_"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-class p2, Lcom/google/firebase/perf/v1/d;

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "gaugeMetadata_"

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-string p2, "androidMemoryReadings_"

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-class p2, Lcom/google/firebase/perf/v1/b;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u001b"

    sget-object p3, Lcom/google/firebase/perf/v1/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/f;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/f$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/f$b;-><init>(Lcom/google/firebase/perf/v1/f$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/f;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/f;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/f;->androidMemoryReadings_:Lcom/google/protobuf/y$j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/f;->cpuMetricReadings_:Lcom/google/protobuf/y$j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public s()Lcom/google/firebase/perf/v1/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/f;->gaugeMetadata_:Lcom/google/firebase/perf/v1/e;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/e;->k()Lcom/google/firebase/perf/v1/e;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public t()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/f;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/perf/v1/f;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
