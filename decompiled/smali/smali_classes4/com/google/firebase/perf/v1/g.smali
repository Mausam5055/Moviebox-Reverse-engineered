.class public final Lcom/google/firebase/perf/v1/g;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lwc/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/g$b;
    }
.end annotation


# static fields
.field public static final APPLICATION_INFO_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

.field public static final GAUGE_METRIC_FIELD_NUMBER:I = 0x4

.field public static final NETWORK_REQUEST_METRIC_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/b1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field

.field public static final TRACE_METRIC_FIELD_NUMBER:I = 0x2

.field public static final TRANSPORT_INFO_FIELD_NUMBER:I = 0x5


# instance fields
.field private applicationInfo_:Lcom/google/firebase/perf/v1/c;

.field private bitField0_:I

.field private gaugeMetric_:Lcom/google/firebase/perf/v1/f;

.field private networkRequestMetric_:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

.field private traceMetric_:Lcom/google/firebase/perf/v1/i;

.field private transportInfo_:Lcom/google/firebase/perf/v1/TransportInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/g;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/g;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    const-class v1, Lcom/google/firebase/perf/v1/g;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/g;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    return-object v0
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/g;->o(Lcom/google/firebase/perf/v1/c;)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/g;->p(Lcom/google/firebase/perf/v1/f;)V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/g;->r(Lcom/google/firebase/perf/v1/i;)V

    return-void
.end method

.method static synthetic k(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/g;->q(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-void
.end method

.method public static n()Lcom/google/firebase/perf/v1/g$b;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/g$b;

    return-object v0
.end method

.method private o(Lcom/google/firebase/perf/v1/c;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/perf/v1/g;->applicationInfo_:Lcom/google/firebase/perf/v1/c;

    iget p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    return-void
.end method

.method private p(Lcom/google/firebase/perf/v1/f;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/perf/v1/g;->gaugeMetric_:Lcom/google/firebase/perf/v1/f;

    iget p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    return-void
.end method

.method private q(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/perf/v1/g;->networkRequestMetric_:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    iget p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    return-void
.end method

.method private r(Lcom/google/firebase/perf/v1/i;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/perf/v1/g;->traceMetric_:Lcom/google/firebase/perf/v1/i;

    iget p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->networkRequestMetric_:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->y()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x1

    sget-object p3, Lcom/google/firebase/perf/v1/g$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/g;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/perf/v1/g;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/g;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/g;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "bitField0_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "applicationInfo_"

    aput-object p3, p1, p2

    const-string p2, "traceMetric_"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "networkRequestMetric_"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "gaugeMetric_"

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-string p2, "transportInfo_"

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004"

    sget-object p3, Lcom/google/firebase/perf/v1/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/g;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/g$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/g$b;-><init>(Lcom/google/firebase/perf/v1/g$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/g;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/g;-><init>()V

    return-object p1

    nop

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

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/google/firebase/perf/v1/i;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->traceMetric_:Lcom/google/firebase/perf/v1/i;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->A()Lcom/google/firebase/perf/v1/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public g()Lcom/google/firebase/perf/v1/f;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->gaugeMetric_:Lcom/google/firebase/perf/v1/f;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/f;->r()Lcom/google/firebase/perf/v1/f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public l()Lcom/google/firebase/perf/v1/c;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/g;->applicationInfo_:Lcom/google/firebase/perf/v1/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/c;->n()Lcom/google/firebase/perf/v1/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/perf/v1/g;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
