.class public final Lcom/google/firebase/perf/v1/h;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/h$c;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

.field private static volatile PARSER:Lcom/google/protobuf/b1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field public static final SESSION_VERBOSITY_FIELD_NUMBER:I = 0x2

.field private static final sessionVerbosity_converter_:Lcom/google/protobuf/y$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$h$a;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private sessionId_:Ljava/lang/String;

.field private sessionVerbosity_:Lcom/google/protobuf/y$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/h$a;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/h$a;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/h;->sessionVerbosity_converter_:Lcom/google/protobuf/y$h$a;

    new-instance v0, Lcom/google/firebase/perf/v1/h;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/h;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    const-class v1, Lcom/google/firebase/perf/v1/h;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/perf/v1/h;->sessionId_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/y$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/h;->sessionVerbosity_:Lcom/google/protobuf/y$g;

    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/h;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    return-object v0
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/h;->setSessionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/SessionVerbosity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/h;->j(Lcom/google/firebase/perf/v1/SessionVerbosity;)V

    return-void
.end method

.method private j(Lcom/google/firebase/perf/v1/SessionVerbosity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/h;->k()V

    iget-object v0, p0, Lcom/google/firebase/perf/v1/h;->sessionVerbosity_:Lcom/google/protobuf/y$g;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/SessionVerbosity;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/y$g;->addInt(I)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/v1/h;->sessionVerbosity_:Lcom/google/protobuf/y$g;

    invoke-interface {v0}, Lcom/google/protobuf/y$g;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/y$g;)Lcom/google/protobuf/y$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/h;->sessionVerbosity_:Lcom/google/protobuf/y$g;

    :cond_0
    return-void
.end method

.method public static o()Lcom/google/firebase/perf/v1/h$c;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/h$c;

    return-object v0
.end method

.method private setSessionId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/h;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/h;->sessionId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 p2, 0x1

    sget-object p3, Lcom/google/firebase/perf/v1/h$b;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/h;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/perf/v1/h;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/h;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/h;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    return-object p1

    :pswitch_4
    invoke-static {}, Lcom/google/firebase/perf/v1/SessionVerbosity;->internalGetVerifier()Lcom/google/protobuf/y$e;

    move-result-object p1

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "bitField0_"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "sessionId_"

    aput-object v0, p3, p2

    const-string p2, "sessionVerbosity_"

    const/4 v0, 0x2

    aput-object p2, p3, v0

    const/4 p2, 0x3

    aput-object p1, p3, p2

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u081e"

    sget-object p2, Lcom/google/firebase/perf/v1/h;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/h;

    invoke-static {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/h$c;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/h$c;-><init>(Lcom/google/firebase/perf/v1/h$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/h;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/h;-><init>()V

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

.method public l(I)Lcom/google/firebase/perf/v1/SessionVerbosity;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/h;->sessionVerbosity_:Lcom/google/protobuf/y$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/y$g;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/firebase/perf/v1/SessionVerbosity;->forNumber(I)Lcom/google/firebase/perf/v1/SessionVerbosity;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/v1/SessionVerbosity;->SESSION_VERBOSITY_NONE:Lcom/google/firebase/perf/v1/SessionVerbosity;

    :cond_0
    return-object p1
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/h;->sessionVerbosity_:Lcom/google/protobuf/y$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 3

    new-instance v0, Lcom/google/protobuf/y$h;

    iget-object v1, p0, Lcom/google/firebase/perf/v1/h;->sessionVerbosity_:Lcom/google/protobuf/y$g;

    sget-object v2, Lcom/google/firebase/perf/v1/h;->sessionVerbosity_converter_:Lcom/google/protobuf/y$h$a;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/y$h;-><init>(Ljava/util/List;Lcom/google/protobuf/y$h$a;)V

    return-object v0
.end method
