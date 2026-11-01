.class public final Lcom/google/firebase/perf/v1/c;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/c$b;,
        Lcom/google/firebase/perf/v1/c$c;
    }
.end annotation


# static fields
.field public static final ANDROID_APP_INFO_FIELD_NUMBER:I = 0x3

.field public static final APPLICATION_PROCESS_STATE_FIELD_NUMBER:I = 0x5

.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

.field public static final GOOGLE_APP_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field


# instance fields
.field private androidAppInfo_:Lcom/google/firebase/perf/v1/a;

.field private appInstanceId_:Ljava/lang/String;

.field private applicationProcessState_:I

.field private bitField0_:I

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

.field private googleAppId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/c;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/c;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    const-class v1, Lcom/google/firebase/perf/v1/c;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->googleAppId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/c;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    return-object v0
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->y(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/perf/v1/c;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->x(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/c;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/c;->o()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/google/firebase/perf/v1/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->w(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/google/firebase/perf/v1/c;Lcom/google/firebase/perf/v1/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->v(Lcom/google/firebase/perf/v1/a;)V

    return-void
.end method

.method public static n()Lcom/google/firebase/perf/v1/c;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    return-object v0
.end method

.method private o()Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/c;->t()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/google/protobuf/MapFieldLite;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static u()Lcom/google/firebase/perf/v1/c$b;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/c$b;

    return-object v0
.end method

.method private v(Lcom/google/firebase/perf/v1/a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/perf/v1/c;->androidAppInfo_:Lcom/google/firebase/perf/v1/a;

    iget p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/c;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method private x(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/ApplicationProcessState;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/perf/v1/c;->applicationProcessState_:I

    iget p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    return-void
.end method

.method private y(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/c;->googleAppId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 p2, 0x1

    sget-object p3, Lcom/google/firebase/perf/v1/c$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/c;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/perf/v1/c;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/c;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/c;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    return-object p1

    :pswitch_4
    invoke-static {}, Lcom/google/firebase/perf/v1/ApplicationProcessState;->internalGetVerifier()Lcom/google/protobuf/y$e;

    move-result-object p1

    const/16 p3, 0x8

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "bitField0_"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "googleAppId_"

    aput-object v0, p3, p2

    const-string p2, "appInstanceId_"

    const/4 v0, 0x2

    aput-object p2, p3, v0

    const-string p2, "androidAppInfo_"

    const/4 v0, 0x3

    aput-object p2, p3, v0

    const-string p2, "applicationProcessState_"

    const/4 v0, 0x4

    aput-object p2, p3, v0

    const/4 p2, 0x5

    aput-object p1, p3, p2

    const-string p1, "customAttributes_"

    const/4 p2, 0x6

    aput-object p1, p3, p2

    sget-object p1, Lcom/google/firebase/perf/v1/c$c;->a:Lcom/google/protobuf/m0;

    const/4 p2, 0x7

    aput-object p1, p3, p2

    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0005\u180c\u0003\u00062"

    sget-object p2, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    invoke-static {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/c$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/c$b;-><init>(Lcom/google/firebase/perf/v1/c$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/c;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/c;-><init>()V

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

.method public m()Lcom/google/firebase/perf/v1/a;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->androidAppInfo_:Lcom/google/firebase/perf/v1/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/a;->k()Lcom/google/firebase/perf/v1/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public p()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
