.class public final Lcom/google/firebase/perf/v1/e;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/e$b;
    }
.end annotation


# static fields
.field public static final CPU_CLOCK_RATE_KHZ_FIELD_NUMBER:I = 0x2

.field public static final CPU_PROCESSOR_COUNT_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

.field public static final DEVICE_RAM_SIZE_KB_FIELD_NUMBER:I = 0x3

.field public static final MAX_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x4

.field public static final MAX_ENCOURAGED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/b1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field

.field public static final PROCESS_NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private cpuClockRateKhz_:I

.field private cpuProcessorCount_:I

.field private deviceRamSizeKb_:I

.field private maxAppJavaHeapMemoryKb_:I

.field private maxEncouragedAppJavaHeapMemoryKb_:I

.field private processName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/e;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/e;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    const-class v1, Lcom/google/firebase/perf/v1/e;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/perf/v1/e;->processName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/e;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    return-object v0
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/e;->o(I)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/perf/v1/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/e;->p(I)V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/e;->n(I)V

    return-void
.end method

.method public static k()Lcom/google/firebase/perf/v1/e;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    return-object v0
.end method

.method public static m()Lcom/google/firebase/perf/v1/e$b;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/e$b;

    return-object v0
.end method

.method private n(I)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    iput p1, p0, Lcom/google/firebase/perf/v1/e;->deviceRamSizeKb_:I

    return-void
.end method

.method private o(I)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    iput p1, p0, Lcom/google/firebase/perf/v1/e;->maxAppJavaHeapMemoryKb_:I

    return-void
.end method

.method private p(I)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    iput p1, p0, Lcom/google/firebase/perf/v1/e;->maxEncouragedAppJavaHeapMemoryKb_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x1

    sget-object p3, Lcom/google/firebase/perf/v1/e$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/e;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/perf/v1/e;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/e;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/e;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "bitField0_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "processName_"

    aput-object p3, p1, p2

    const-string p2, "cpuClockRateKhz_"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "deviceRamSizeKb_"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "maxAppJavaHeapMemoryKb_"

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-string p2, "maxEncouragedAppJavaHeapMemoryKb_"

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-string p2, "cpuProcessorCount_"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1004\u0001\u0003\u1004\u0003\u0004\u1004\u0004\u0005\u1004\u0005\u0006\u1004\u0002"

    sget-object p3, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/e$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/e$b;-><init>(Lcom/google/firebase/perf/v1/e$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/e;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/e;-><init>()V

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

.method public l()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
