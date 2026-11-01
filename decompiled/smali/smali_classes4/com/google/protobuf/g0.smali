.class public Lcom/google/protobuf/g0;
.super Ljava/lang/Object;


# static fields
.field private static final EMPTY_REGISTRY:Lcom/google/protobuf/o;


# instance fields
.field private delayedBytes:Lcom/google/protobuf/ByteString;

.field private extensionRegistry:Lcom/google/protobuf/o;

.field private volatile memoizedBytes:Lcom/google/protobuf/ByteString;

.field protected volatile value:Lcom/google/protobuf/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/o;->getEmptyRegistry()Lcom/google/protobuf/o;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/g0;->EMPTY_REGISTRY:Lcom/google/protobuf/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/o;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/google/protobuf/g0;->checkArguments(Lcom/google/protobuf/o;Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    iput-object p2, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private static checkArguments(Lcom/google/protobuf/o;Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ByteString"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ExtensionRegistry"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/g0;
    .locals 1

    new-instance v0, Lcom/google/protobuf/g0;

    invoke-direct {v0}, Lcom/google/protobuf/g0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/g0;->setValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    return-object v0
.end method

.method private static mergeValueAndBytes(Lcom/google/protobuf/s0;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/s0;->toBuilder()Lcom/google/protobuf/s0$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/s0$a;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/s0$a;->build()Lcom/google/protobuf/s0;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    iput-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public containsDefaultInstance()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected ensureInitialized(Lcom/google/protobuf/s0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/protobuf/s0;->getParserForType()Lcom/google/protobuf/b1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/b1;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/s0;

    iput-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    iget-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/g0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/g0;

    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    iget-object v1, p1, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/g0;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/protobuf/s0;->getDefaultInstanceForType()Lcom/google/protobuf/s0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/g0;->getValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/protobuf/s0;->getDefaultInstanceForType()Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->getValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    invoke-interface {v0}, Lcom/google/protobuf/s0;->getSerializedSize()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->ensureInitialized(Lcom/google/protobuf/s0;)V

    iget-object p1, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public merge(Lcom/google/protobuf/g0;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/protobuf/g0;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/g0;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->set(Lcom/google/protobuf/g0;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    iput-object v0, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    iget-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    iget-object v1, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/g0;->mergeValueAndBytes(Lcom/google/protobuf/s0;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->setValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    iget-object v1, p1, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/g0;->mergeValueAndBytes(Lcom/google/protobuf/s0;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->setValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    invoke-interface {v0}, Lcom/google/protobuf/s0;->toBuilder()Lcom/google/protobuf/s0$a;

    move-result-object v0

    iget-object p1, p1, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/s0$a;->mergeFrom(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/s0$a;->build()Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->setValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;

    return-void
.end method

.method public mergeFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/i;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0;->setByteString(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/i;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    iget-object p2, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0;->setByteString(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    invoke-interface {v0}, Lcom/google/protobuf/s0;->toBuilder()Lcom/google/protobuf/s0$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/s0$a;->mergeFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/s0$a;->build()Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->setValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public set(Lcom/google/protobuf/g0;)V
    .locals 1

    iget-object v0, p1, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    iget-object v0, p1, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    iput-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    iget-object v0, p1, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    :cond_0
    return-void
.end method

.method public setByteString(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)V
    .locals 0

    invoke-static {p2, p1}, Lcom/google/protobuf/g0;->checkArguments(Lcom/google/protobuf/o;Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    iput-object p2, p0, Lcom/google/protobuf/g0;->extensionRegistry:Lcom/google/protobuf/o;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    iput-object p1, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public setValue(Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    return-object v0
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    invoke-interface {v0}, Lcom/google/protobuf/s0;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeTo(Lcom/google/protobuf/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g0;->memoizedBytes:Lcom/google/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/g0;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/g0;->value:Lcom/google/protobuf/s0;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method
