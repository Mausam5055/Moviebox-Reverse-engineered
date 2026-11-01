.class public abstract Lcom/google/protobuf/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/b1;


# static fields
.field private static final EMPTY_REGISTRY:Lcom/google/protobuf/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/o;->getEmptyRegistry()Lcom/google/protobuf/o;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkMessageInitialized(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/s0;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/protobuf/s0;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/b;->newUninitializedMessageException(Lcom/google/protobuf/s0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/s0;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private newUninitializedMessageException(Lcom/google/protobuf/s0;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/s0;",
            ")",
            "Lcom/google/protobuf/UninitializedMessageException;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/a;

    invoke-virtual {p1}, Lcom/google/protobuf/a;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/s0;)V

    return-object v0
.end method


# virtual methods
.method public parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/b;->checkMessageInitialized(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/b;->checkMessageInitialized(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/google/protobuf/i;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i;",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/s0;

    invoke-direct {p0, p1}, Lcom/google/protobuf/b;->checkMessageInitialized(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/b;->checkMessageInitialized(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/i;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/s0;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/i;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p2}, Lcom/google/protobuf/b;->checkMessageInitialized(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/s0;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public parseFrom([B)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parseFrom([BLcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BII)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/b;->parseFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/b;->parsePartialFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/b;->checkMessageInitialized(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BLcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/protobuf/b;->parseFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/google/protobuf/i;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parseFrom(Lcom/google/protobuf/i;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parseFrom([B)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BII)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/b;->parseFrom([BII)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BIILcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/b;->parseFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BLcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parseFrom([BLcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/i;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/google/protobuf/a$a$a;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/a$a$a;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/b;->parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/s0;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/i;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/s0;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public parsePartialFrom(Lcom/google/protobuf/i;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/s0;

    return-object p1
.end method

.method public parsePartialFrom(Ljava/io/InputStream;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/i;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/s0;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/i;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/s0;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public parsePartialFrom([B)Lcom/google/protobuf/s0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    array-length v0, p1

    sget-object v1, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/protobuf/b;->parsePartialFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom([BII)Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/b;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/b;->parsePartialFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/i;->newInstance([BII)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/s0;

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p1, p3}, Lcom/google/protobuf/i;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/s0;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public parsePartialFrom([BLcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/o;",
            ")",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/protobuf/b;->parsePartialFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/i;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parsePartialFrom(Lcom/google/protobuf/i;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public abstract synthetic parsePartialFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parsePartialFrom(Ljava/io/InputStream;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->parsePartialFrom([B)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BII)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/b;->parsePartialFrom([BII)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BIILcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/b;->parsePartialFrom([BIILcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BLcom/google/protobuf/o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->parsePartialFrom([BLcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    return-object p1
.end method
