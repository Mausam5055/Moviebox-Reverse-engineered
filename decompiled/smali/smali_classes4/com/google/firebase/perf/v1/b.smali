.class public final Lcom/google/firebase/perf/v1/b;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/b$b;
    }
.end annotation


# static fields
.field public static final CLIENT_TIME_US_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/b;

.field private static volatile PARSER:Lcom/google/protobuf/b1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field

.field public static final USED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private clientTimeUs_:J

.field private usedAppJavaHeapMemoryKb_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/b;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/b;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/b;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/b;

    const-class v1, Lcom/google/firebase/perf/v1/b;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/b;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/b;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/b;

    return-object v0
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/b;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/b;->k(J)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/perf/v1/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/b;->l(I)V

    return-void
.end method

.method public static j()Lcom/google/firebase/perf/v1/b$b;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/b;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/b$b;

    return-object v0
.end method

.method private k(J)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/b;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/b;->clientTimeUs_:J

    return-void
.end method

.method private l(I)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/b;->bitField0_:I

    iput p1, p0, Lcom/google/firebase/perf/v1/b;->usedAppJavaHeapMemoryKb_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x1

    sget-object p3, Lcom/google/firebase/perf/v1/b$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/b;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/perf/v1/b;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/b;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/google/firebase/perf/v1/b;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/b;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/b;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/google/firebase/perf/v1/b;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/b;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "bitField0_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "clientTimeUs_"

    aput-object p3, p1, p2

    const-string p2, "usedAppJavaHeapMemoryKb_"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1004\u0001"

    sget-object p3, Lcom/google/firebase/perf/v1/b;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/b;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/b$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/b$b;-><init>(Lcom/google/firebase/perf/v1/b$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/b;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/b;-><init>()V

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
