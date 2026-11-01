.class final Lcom/google/protobuf/q;
.super Lcom/google/protobuf/p;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/p;-><init>()V

    return-void
.end method


# virtual methods
.method extensionNumber(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result p1

    return p1
.end method

.method findExtensionByNumber(Lcom/google/protobuf/o;Lcom/google/protobuf/s0;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/o;->findLiteExtensionByNumber(Lcom/google/protobuf/s0;I)Lcom/google/protobuf/GeneratedMessageLite$g;

    move-result-object p1

    return-object p1
.end method

.method getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$d;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    return-object p1
.end method

.method getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$d;->ensureExtensionsAreMutable()Lcom/google/protobuf/t;

    move-result-object p1

    return-object p1
.end method

.method hasExtensions(Lcom/google/protobuf/s0;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/protobuf/GeneratedMessageLite$d;

    return p1
.end method

.method makeImmutable(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/q;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/t;->makeImmutable()V

    return-void
.end method

.method parseExtension(Ljava/lang/Object;Lcom/google/protobuf/h1;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;Ljava/lang/Object;Lcom/google/protobuf/o1;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/h1;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/t;",
            "TUB;",
            "Lcom/google/protobuf/o1;",
            ")TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p3, Lcom/google/protobuf/GeneratedMessageLite$g;

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getNumber()I

    move-result v1

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p4, Lcom/google/protobuf/q$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Type cannot be packed: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readEnumList(Ljava/util/List;)V

    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$f;->getEnumType()Lcom/google/protobuf/y$d;

    move-result-object v3

    move-object v0, p1

    move-object v2, p4

    move-object v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/k1;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/y$d;Ljava/lang/Object;Lcom/google/protobuf/o1;)Ljava/lang/Object;

    move-result-object p6

    goto/16 :goto_0

    :pswitch_1
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readSInt32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readSFixed64List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readSFixed32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_5
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readUInt32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readBoolList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_7
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readFixed32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_8
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readFixed64List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_9
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readInt32List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_a
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readUInt64List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_b
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readInt64List(Ljava/util/List;)V

    goto :goto_0

    :pswitch_c
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readFloatList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_d
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p4}, Lcom/google/protobuf/h1;->readDoubleList(Ljava/util/List;)V

    :goto_0
    iget-object p1, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5, p1, p4}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v0, v2, :cond_2

    invoke-interface {p2}, Lcom/google/protobuf/h1;->readInt32()I

    move-result p2

    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$f;->getEnumType()Lcom/google/protobuf/y$d;

    move-result-object p4

    invoke-interface {p4, p2}, Lcom/google/protobuf/y$d;->findValueByNumber(I)Lcom/google/protobuf/y$c;

    move-result-object p4

    if-nez p4, :cond_1

    invoke-static {p1, v1, p2, p6, p7}, Lcom/google/protobuf/k1;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/o1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_1

    :cond_2
    sget-object p1, Lcom/google/protobuf/q$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p7

    aget p1, p1, p7

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->isRepeated()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5, p1}, Lcom/google/protobuf/t;->getField(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object p1

    instance-of p7, p1, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz p7, :cond_4

    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object p7

    invoke-virtual {p7, p1}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/i1;

    move-result-object p7

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p7}, Lcom/google/protobuf/i1;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p7, v0, p1}, Lcom/google/protobuf/i1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5, p1, v0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    move-object p1, v0

    :cond_3
    invoke-interface {p2, p1, p7, p4}, Lcom/google/protobuf/h1;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/i1;Lcom/google/protobuf/o;)V

    return-object p6

    :cond_4
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lcom/google/protobuf/h1;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->isRepeated()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5, p1}, Lcom/google/protobuf/t;->getField(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object p1

    instance-of p7, p1, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz p7, :cond_6

    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object p7

    invoke-virtual {p7, p1}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/i1;

    move-result-object p7

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p7}, Lcom/google/protobuf/i1;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p7, v0, p1}, Lcom/google/protobuf/i1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5, p1, v0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    move-object p1, v0

    :cond_5
    invoke-interface {p2, p1, p7, p4}, Lcom/google/protobuf/h1;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/i1;Lcom/google/protobuf/o;)V

    return-object p6

    :cond_6
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lcom/google/protobuf/h1;->readGroup(Ljava/lang/Class;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_10
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_11
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_14
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_15
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_16
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_17
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_18
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :pswitch_19
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_1a
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_1b
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_1c
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_1d
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_1e
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :pswitch_1f
    invoke-interface {p2}, Lcom/google/protobuf/h1;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_1
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->isRepeated()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5, p2, p1}, Lcom/google/protobuf/t;->addRepeatedField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    sget-object p2, Lcom/google/protobuf/q$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p2, p2, p4

    const/16 p4, 0x11

    if-eq p2, p4, :cond_8

    const/16 p4, 0x12

    if-eq p2, p4, :cond_8

    goto :goto_2

    :cond_8
    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5, p2}, Lcom/google/protobuf/t;->getField(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-static {p2, p1}, Lcom/google/protobuf/y;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_9
    :goto_2
    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5, p2, p1}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    :goto_3
    return-object p6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/h1;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/h1;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/t;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$g;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lcom/google/protobuf/h1;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p2, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p4, p2, p1}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    return-void
.end method

.method parseMessageSetItem(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/t;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$g;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/s0;->newBuilderForType()Lcom/google/protobuf/s0$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/i;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lcom/google/protobuf/s0$a;->mergeFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0$a;

    iget-object p2, p2, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-interface {v0}, Lcom/google/protobuf/s0$a;->buildPartial()Lcom/google/protobuf/s0;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/i;->checkLastTagWas(I)V

    return-void
.end method

.method serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Writer;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/q$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object v1

    invoke-static {v0, p2, p1, v1}, Lcom/google/protobuf/k1;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/i1;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object v1

    invoke-static {v0, p2, p1, v1}, Lcom/google/protobuf/k1;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/i1;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p2, p1}, Lcom/google/protobuf/k1;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p2, p1}, Lcom/google/protobuf/k1;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lcom/google/protobuf/k1;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/google/protobuf/q$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/i1;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/i1;)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_0

    :pswitch_1e
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_0

    :pswitch_1f
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_0

    :pswitch_20
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_0

    :pswitch_21
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_0

    :pswitch_22
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_0

    :pswitch_23
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method setExtensions(Ljava/lang/Object;Lcom/google/protobuf/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/t;",
            ")V"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$d;

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    return-void
.end method
