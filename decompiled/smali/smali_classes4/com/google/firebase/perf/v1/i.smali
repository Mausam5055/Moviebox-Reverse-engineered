.class public final Lcom/google/firebase/perf/v1/i;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/i$b;,
        Lcom/google/firebase/perf/v1/i$c;,
        Lcom/google/firebase/perf/v1/i$d;
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x4

.field public static final COUNTERS_FIELD_NUMBER:I = 0x6

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/i;

.field public static final DURATION_US_FIELD_NUMBER:I = 0x5

.field public static final IS_AUTO_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/b1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0x9

.field public static final SUBTRACES_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

.field private counters_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private customAttributes_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs_:J

.field private isAuto_:Z

.field private name_:Ljava/lang/String;

.field private perfSessions_:Lcom/google/protobuf/y$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$j;"
        }
    .end annotation
.end field

.field private subtraces_:Lcom/google/protobuf/y$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$j;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/i;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/i;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/i;

    const-class v1, Lcom/google/firebase/perf/v1/i;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/i;->counters_:Lcom/google/protobuf/MapFieldLite;

    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/i;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/perf/v1/i;->name_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/i;->subtraces_:Lcom/google/protobuf/y$j;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/i;->perfSessions_:Lcom/google/protobuf/y$j;

    return-void
.end method

.method public static A()Lcom/google/firebase/perf/v1/i;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/i;

    return-object v0
.end method

.method private C()Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->K()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private D()Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->L()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private I()Lcom/google/protobuf/MapFieldLite;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->counters_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private J()Lcom/google/protobuf/MapFieldLite;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private K()Lcom/google/protobuf/MapFieldLite;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->counters_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->counters_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/i;->counters_:Lcom/google/protobuf/MapFieldLite;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->counters_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private L()Lcom/google/protobuf/MapFieldLite;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/i;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static M()Lcom/google/firebase/perf/v1/i$b;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/i;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/i$b;

    return-object v0
.end method

.method private N(J)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/i;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/v1/i;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/i;->clientStartTimeUs_:J

    return-void
.end method

.method private O(J)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/i;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/perf/v1/i;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/i;->durationUs_:J

    return-void
.end method

.method private P(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/i;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/i;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/i;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/i;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/i;

    return-object v0
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/i;->P(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/perf/v1/i;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->C()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/i;->t(Lcom/google/firebase/perf/v1/i;)V

    return-void
.end method

.method static synthetic k(Lcom/google/firebase/perf/v1/i;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/i;->r(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic l(Lcom/google/firebase/perf/v1/i;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->D()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/i;->s(Lcom/google/firebase/perf/v1/h;)V

    return-void
.end method

.method static synthetic n(Lcom/google/firebase/perf/v1/i;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/i;->q(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic o(Lcom/google/firebase/perf/v1/i;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/i;->N(J)V

    return-void
.end method

.method static synthetic p(Lcom/google/firebase/perf/v1/i;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/i;->O(J)V

    return-void
.end method

.method private q(Ljava/lang/Iterable;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->v()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->perfSessions_:Lcom/google/protobuf/y$j;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private r(Ljava/lang/Iterable;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->w()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->subtraces_:Lcom/google/protobuf/y$j;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private s(Lcom/google/firebase/perf/v1/h;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->v()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->perfSessions_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private t(Lcom/google/firebase/perf/v1/i;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->w()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->subtraces_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->perfSessions_:Lcom/google/protobuf/y$j;

    invoke-interface {v0}, Lcom/google/protobuf/y$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/y$j;)Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/i;->perfSessions_:Lcom/google/protobuf/y$j;

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->subtraces_:Lcom/google/protobuf/y$j;

    invoke-interface {v0}, Lcom/google/protobuf/y$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/y$j;)Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/i;->subtraces_:Lcom/google/protobuf/y$j;

    :cond_0
    return-void
.end method


# virtual methods
.method public B()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/perf/v1/i;->durationUs_:J

    return-wide v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->perfSessions_:Lcom/google/protobuf/y$j;

    return-object v0
.end method

.method public G()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/i;->subtraces_:Lcom/google/protobuf/y$j;

    return-object v0
.end method

.method public H()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x1

    sget-object p3, Lcom/google/firebase/perf/v1/i$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/i;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/perf/v1/i;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/i;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/google/firebase/perf/v1/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/i;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/i;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/google/firebase/perf/v1/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/i;

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "bitField0_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "name_"

    aput-object p3, p1, p2

    const-string p2, "isAuto_"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "clientStartTimeUs_"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "durationUs_"

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-string p2, "counters_"

    const/4 p3, 0x5

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/firebase/perf/v1/i$c;->a:Lcom/google/protobuf/m0;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "subtraces_"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-class p2, Lcom/google/firebase/perf/v1/i;

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "customAttributes_"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/firebase/perf/v1/i$d;->a:Lcom/google/protobuf/m0;

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "perfSessions_"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-class p2, Lcom/google/firebase/perf/v1/h;

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0002\u0002\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0004\u1002\u0002\u0005\u1002\u0003\u00062\u0007\u001b\u00082\t\u001b"

    sget-object p3, Lcom/google/firebase/perf/v1/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/i;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/i$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/i$b;-><init>(Lcom/google/firebase/perf/v1/i$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/i;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/i;-><init>()V

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

.method public u(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->J()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public x()I
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->I()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method

.method public y()Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->I()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i;->J()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
