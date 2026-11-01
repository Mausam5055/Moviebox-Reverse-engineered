.class final Lcom/google/protobuf/w0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/i1;


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/s0;

.field private final extensionSchema:Lcom/google/protobuf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/p;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final unknownFieldSchema:Lcom/google/protobuf/o1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o1;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o1;",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/s0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    invoke-virtual {p2, p3}, Lcom/google/protobuf/p;->hasExtensions(Lcom/google/protobuf/s0;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    iput-object p2, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    iput-object p3, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    return-void
.end method

.method private getUnknownFieldsSerializedSize(Lcom/google/protobuf/o1;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o1;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/o1;->getSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private mergeFromHelper(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Ljava/lang/Object;Lcom/google/protobuf/h1;Lcom/google/protobuf/o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/t$c;",
            ">(",
            "Lcom/google/protobuf/o1;",
            "Lcom/google/protobuf/p;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/h1;",
            "Lcom/google/protobuf/o;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Lcom/google/protobuf/o1;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, p3}, Lcom/google/protobuf/p;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object v8

    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/h1;->getFieldNumber()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/o1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/w0;->parseMessageSetItemOrUnknownField(Lcom/google/protobuf/h1;Lcom/google/protobuf/o;Lcom/google/protobuf/p;Lcom/google/protobuf/t;Lcom/google/protobuf/o1;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/o1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/o1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method static newSchema(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/s0;)Lcom/google/protobuf/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o1;",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/s0;",
            ")",
            "Lcom/google/protobuf/w0;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/w0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/w0;-><init>(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/s0;)V

    return-object v0
.end method

.method private parseMessageSetItemOrUnknownField(Lcom/google/protobuf/h1;Lcom/google/protobuf/o;Lcom/google/protobuf/p;Lcom/google/protobuf/t;Lcom/google/protobuf/o1;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/t$c;",
            ">(",
            "Lcom/google/protobuf/h1;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/t;",
            "Lcom/google/protobuf/o1;",
            "TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/h1;->getTag()I

    move-result v0

    sget v1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/p;->findExtensionByNumber(Lcom/google/protobuf/o;Lcom/google/protobuf/s0;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/p;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/h1;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V

    return v3

    :cond_0
    invoke-virtual {p5, p6, p1, v2}, Lcom/google/protobuf/o1;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/h1;I)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/h1;->skipField()Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/protobuf/h1;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/h1;->getTag()I

    move-result v4

    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v4, v5, :cond_5

    invoke-interface {p1}, Lcom/google/protobuf/h1;->readUInt32()I

    move-result v2

    iget-object v0, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    invoke-virtual {p3, p2, v0, v2}, Lcom/google/protobuf/p;->findExtensionByNumber(Lcom/google/protobuf/o;Lcom/google/protobuf/s0;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v4, v5, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/p;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/h1;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Lcom/google/protobuf/h1;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-interface {p1}, Lcom/google/protobuf/h1;->skipField()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-interface {p1}, Lcom/google/protobuf/h1;->getTag()I

    move-result p1

    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne p1, v4, :cond_a

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {p3, v1, v0, p2, p4}, Lcom/google/protobuf/p;->parseMessageSetItem(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p5, p6, v2, v1}, Lcom/google/protobuf/o1;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    :cond_9
    :goto_2
    return v3

    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private writeUnknownFieldsHelper(Lcom/google/protobuf/o1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o1;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/o1;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/t;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/w0;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/o1;Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/t;->getMessageSetSerializedSize()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/protobuf/t;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/t;->isInitialized()Z

    move-result p1

    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o1;->makeImmutable(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->makeImmutable(Ljava/lang/Object;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/h1;Lcom/google/protobuf/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/h1;",
            "Lcom/google/protobuf/o;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    iget-object v2, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/w0;->mergeFromHelper(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Ljava/lang/Object;Lcom/google/protobuf/h1;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/k1;->mergeUnknownFields(Lcom/google/protobuf/o1;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/k1;->mergeExtensions(Lcom/google/protobuf/p;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/e$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[BII",
            "Lcom/google/protobuf/e$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/p1;

    invoke-static {}, Lcom/google/protobuf/p1;->getDefaultInstance()Lcom/google/protobuf/p1;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/protobuf/p1;->newInstance()Lcom/google/protobuf/p1;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/p1;

    :cond_0
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$d;->ensureExtensionsAreMutable()Lcom/google/protobuf/t;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_b

    invoke-static {p2, p3, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v4

    iget p3, p5, Lcom/google/protobuf/e$b;->int1:I

    sget v3, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    iget-object v3, p5, Lcom/google/protobuf/e$b;->extensionRegistry:Lcom/google/protobuf/o;

    iget-object v5, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/google/protobuf/p;->findExtensionByNumber(Lcom/google/protobuf/o;Lcom/google/protobuf/s0;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/GeneratedMessageLite$g;

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object p3

    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object p3

    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/e;->decodeMessageField(Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I

    move-result p3

    iget-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object v3, p5, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    :goto_1
    move-object v2, v8

    goto :goto_0

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/e;->decodeUnknownField(I[BIILcom/google/protobuf/p1;Lcom/google/protobuf/e$b;)I

    move-result p3

    goto :goto_1

    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/e;->skipField(I[BIILcom/google/protobuf/e$b;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_9

    invoke-static {p2, v4, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v4

    iget v6, p5, Lcom/google/protobuf/e$b;->int1:I

    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v8

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object v6

    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/e;->decodeMessageField(Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I

    move-result v4

    iget-object v6, v2, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object v7, p5, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    invoke-static {p2, v4, p5}, Lcom/google/protobuf/e;->decodeBytes([BILcom/google/protobuf/e$b;)I

    move-result v4

    iget-object v3, p5, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    invoke-static {p2, v4, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v4

    iget p3, p5, Lcom/google/protobuf/e$b;->int1:I

    iget-object v2, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    iget-object v6, p5, Lcom/google/protobuf/e$b;->extensionRegistry:Lcom/google/protobuf/o;

    iget-object v7, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    invoke-virtual {v2, v6, v7, p3}, Lcom/google/protobuf/p;->findExtensionByNumber(Lcom/google/protobuf/o;Lcom/google/protobuf/s0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/GeneratedMessageLite$g;

    goto :goto_2

    :cond_7
    :goto_3
    sget v7, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne v6, v7, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/e;->skipField(I[BIILcom/google/protobuf/e$b;)I

    move-result v4

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    invoke-static {p3, v5}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p3

    invoke-virtual {v1, p3, v3}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    :cond_a
    move p3, v4

    goto/16 :goto_0

    :cond_b
    if-ne p3, p4, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    instance-of v1, v0, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/s0;->newBuilderForType()Lcom/google/protobuf/s0$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/s0$a;->buildPartial()Lcom/google/protobuf/s0;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/t;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/t$c;

    invoke-interface {v2}, Lcom/google/protobuf/t$c;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/t$c;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/t$c;->isPacked()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/protobuf/f0$b;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/protobuf/t$c;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/f0$b;

    invoke-virtual {v1}, Lcom/google/protobuf/f0$b;->getField()Lcom/google/protobuf/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g0;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/protobuf/t$c;->getNumber()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/w0;->writeUnknownFieldsHelper(Lcom/google/protobuf/o1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method
