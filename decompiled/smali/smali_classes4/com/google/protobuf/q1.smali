.class Lcom/google/protobuf/q1;
.super Lcom/google/protobuf/o1;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/o1;-><init>()V

    return-void
.end method


# virtual methods
.method addFixed32(Lcom/google/protobuf/p1;II)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic addFixed32(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/q1;->addFixed32(Lcom/google/protobuf/p1;II)V

    return-void
.end method

.method addFixed64(Lcom/google/protobuf/p1;IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic addFixed64(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/q1;->addFixed64(Lcom/google/protobuf/p1;IJ)V

    return-void
.end method

.method addGroup(Lcom/google/protobuf/p1;ILcom/google/protobuf/p1;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/p1;

    check-cast p3, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/q1;->addGroup(Lcom/google/protobuf/p1;ILcom/google/protobuf/p1;)V

    return-void
.end method

.method addLengthDelimited(Lcom/google/protobuf/p1;ILcom/google/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/q1;->addLengthDelimited(Lcom/google/protobuf/p1;ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method addVarint(Lcom/google/protobuf/p1;IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    return-void
.end method

.method bridge synthetic addVarint(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/q1;->addVarint(Lcom/google/protobuf/p1;IJ)V

    return-void
.end method

.method getBuilderFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/p1;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q1;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/p1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/p1;->getDefaultInstance()Lcom/google/protobuf/p1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/p1;->newInstance()Lcom/google/protobuf/p1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/q1;->setToMessage(Ljava/lang/Object;Lcom/google/protobuf/p1;)V

    :cond_0
    return-object v0
.end method

.method bridge synthetic getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q1;->getBuilderFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/p1;

    move-result-object p1

    return-object p1
.end method

.method getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/p1;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/p1;

    return-object p1
.end method

.method bridge synthetic getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q1;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/p1;

    move-result-object p1

    return-object p1
.end method

.method getSerializedSize(Lcom/google/protobuf/p1;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/p1;->getSerializedSize()I

    move-result p1

    return p1
.end method

.method bridge synthetic getSerializedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q1;->getSerializedSize(Lcom/google/protobuf/p1;)I

    move-result p1

    return p1
.end method

.method getSerializedSizeAsMessageSet(Lcom/google/protobuf/p1;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/p1;->getSerializedSizeAsMessageSet()I

    move-result p1

    return p1
.end method

.method bridge synthetic getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q1;->getSerializedSizeAsMessageSet(Lcom/google/protobuf/p1;)I

    move-result p1

    return p1
.end method

.method makeImmutable(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q1;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/p1;->makeImmutable()V

    return-void
.end method

.method merge(Lcom/google/protobuf/p1;Lcom/google/protobuf/p1;)Lcom/google/protobuf/p1;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/p1;->getDefaultInstance()Lcom/google/protobuf/p1;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/p1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/p1;->getDefaultInstance()Lcom/google/protobuf/p1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/google/protobuf/p1;->mutableCopyOf(Lcom/google/protobuf/p1;Lcom/google/protobuf/p1;)Lcom/google/protobuf/p1;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/p1;->mergeFrom(Lcom/google/protobuf/p1;)Lcom/google/protobuf/p1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/protobuf/p1;

    check-cast p2, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q1;->merge(Lcom/google/protobuf/p1;Lcom/google/protobuf/p1;)Lcom/google/protobuf/p1;

    move-result-object p1

    return-object p1
.end method

.method newBuilder()Lcom/google/protobuf/p1;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/p1;->newInstance()Lcom/google/protobuf/p1;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic newBuilder()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/q1;->newBuilder()Lcom/google/protobuf/p1;

    move-result-object v0

    return-object v0
.end method

.method setBuilderToMessage(Ljava/lang/Object;Lcom/google/protobuf/p1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q1;->setToMessage(Ljava/lang/Object;Lcom/google/protobuf/p1;)V

    return-void
.end method

.method bridge synthetic setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q1;->setBuilderToMessage(Ljava/lang/Object;Lcom/google/protobuf/p1;)V

    return-void
.end method

.method setToMessage(Ljava/lang/Object;Lcom/google/protobuf/p1;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/p1;

    return-void
.end method

.method bridge synthetic setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q1;->setToMessage(Ljava/lang/Object;Lcom/google/protobuf/p1;)V

    return-void
.end method

.method shouldDiscardUnknownFields(Lcom/google/protobuf/h1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method toImmutable(Lcom/google/protobuf/p1;)Lcom/google/protobuf/p1;
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/p1;->makeImmutable()V

    return-object p1
.end method

.method bridge synthetic toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q1;->toImmutable(Lcom/google/protobuf/p1;)Lcom/google/protobuf/p1;

    move-result-object p1

    return-object p1
.end method

.method writeAsMessageSetTo(Lcom/google/protobuf/p1;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/p1;->writeAsMessageSetTo(Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q1;->writeAsMessageSetTo(Lcom/google/protobuf/p1;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method writeTo(Lcom/google/protobuf/p1;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/p1;->writeTo(Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/p1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/q1;->writeTo(Lcom/google/protobuf/p1;Lcom/google/protobuf/Writer;)V

    return-void
.end method
