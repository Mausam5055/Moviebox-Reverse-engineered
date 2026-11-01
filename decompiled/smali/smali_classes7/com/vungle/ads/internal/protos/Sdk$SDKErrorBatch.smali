.class public final Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/vungle/ads/internal/protos/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite;",
        "Lcom/vungle/ads/internal/protos/c;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

.field public static final ERRORS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field


# instance fields
.field private errors_:Lcom/google/protobuf/y$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$j;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-direct {v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    const-class v1, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    return-void
.end method

.method static synthetic access$000()Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;ILcom/vungle/ads/internal/protos/Sdk$SDKError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->setErrors(ILcom/vungle/ads/internal/protos/Sdk$SDKError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;Lcom/vungle/ads/internal/protos/Sdk$SDKError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->addErrors(Lcom/vungle/ads/internal/protos/Sdk$SDKError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;ILcom/vungle/ads/internal/protos/Sdk$SDKError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->addErrors(ILcom/vungle/ads/internal/protos/Sdk$SDKError;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->addAllErrors(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->clearErrors()V

    return-void
.end method

.method static synthetic access$600(Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->removeErrors(I)V

    return-void
.end method

.method private addAllErrors(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKError;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->ensureErrorsIsMutable()V

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addErrors(ILcom/vungle/ads/internal/protos/Sdk$SDKError;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->ensureErrorsIsMutable()V

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addErrors(Lcom/vungle/ads/internal/protos/Sdk$SDKError;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->ensureErrorsIsMutable()V

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearErrors()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    return-void
.end method

.method private ensureErrorsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    invoke-interface {v0}, Lcom/google/protobuf/y$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/y$j;)Lcom/google/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object v0
.end method

.method public static newBuilder()Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$a;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$a;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/i;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/o;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/o;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/o;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/o;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/b1;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/b1;

    move-result-object v0

    return-object v0
.end method

.method private removeErrors(I)V
    .locals 1

    invoke-direct {p0}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->ensureErrorsIsMutable()V

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setErrors(ILcom/vungle/ads/internal/protos/Sdk$SDKError;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->ensureErrorsIsMutable()V

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x1

    sget-object p3, Lcom/vungle/ads/internal/protos/a;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_1

    const-class p2, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->PARSER:Lcom/google/protobuf/b1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "errors_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-class p3, Lcom/vungle/ads/internal/protos/Sdk$SDKError;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->DEFAULT_INSTANCE:Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$a;

    invoke-direct {p1, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$a;-><init>(Lcom/vungle/ads/internal/protos/a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    invoke-direct {p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;-><init>()V

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

.method public getErrors(I)Lcom/vungle/ads/internal/protos/Sdk$SDKError;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/protos/Sdk$SDKError;

    return-object p1
.end method

.method public getErrorsCount()I
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getErrorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    return-object v0
.end method

.method public getErrorsOrBuilder(I)Lcom/vungle/ads/internal/protos/d;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/protos/d;

    return-object p1
.end method

.method public getErrorsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/vungle/ads/internal/protos/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->errors_:Lcom/google/protobuf/y$j;

    return-object v0
.end method
