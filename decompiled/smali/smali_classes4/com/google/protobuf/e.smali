.class final Lcom/google/protobuf/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/e$b;
    }
.end annotation


# static fields
.field static final DEFAULT_RECURSION_LIMIT:I = 0x64

.field private static volatile recursionLimit:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkRecursionLimit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget v0, Lcom/google/protobuf/e;->recursionLimit:I

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodeBoolList(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/f;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/e$b;->long1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p4, v0}, Lcom/google/protobuf/f;->addBoolean(Z)V

    :goto_1
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v5, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-wide v5, p5, Lcom/google/protobuf/e$b;->long1:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p4, v0}, Lcom/google/protobuf/f;->addBoolean(Z)V

    goto :goto_1

    :cond_3
    :goto_3
    return p2
.end method

.method static decodeBytes([BILcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v0, p2, Lcom/google/protobuf/e$b;->int1:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p0, p2, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    iput-object p0, p2, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodeBytesList(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    if-ltz v0, :cond_7

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_6

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    if-ltz v0, :cond_4

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_3

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodeDouble([BI)D
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/e;->decodeFixed64([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static decodeDoubleList(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/l;

    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeDouble([BI)D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/l;->addDouble(D)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Lcom/google/protobuf/e;->decodeDouble([BI)D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/protobuf/l;->addDouble(D)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static decodeExtension(I[BIILcom/google/protobuf/GeneratedMessageLite$d;Lcom/google/protobuf/GeneratedMessageLite$g;Lcom/google/protobuf/o1;Lcom/google/protobuf/e$b;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/GeneratedMessageLite$d;",
            "Lcom/google/protobuf/GeneratedMessageLite$g;",
            "Lcom/google/protobuf/o1;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p4, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    ushr-int/lit8 v2, p0, 0x3

    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/protobuf/e$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Type cannot be packed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/google/protobuf/w;

    invoke-direct {p0}, Lcom/google/protobuf/w;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedVarint32List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$f;->getEnumType()Lcom/google/protobuf/y$d;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p4

    move-object v3, p0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/k1;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/y$d;Ljava/lang/Object;Lcom/google/protobuf/o1;)Ljava/lang/Object;

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    new-instance p0, Lcom/google/protobuf/k0;

    invoke-direct {p0}, Lcom/google/protobuf/k0;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedSInt64List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    new-instance p0, Lcom/google/protobuf/w;

    invoke-direct {p0}, Lcom/google/protobuf/w;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedSInt32List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    new-instance p0, Lcom/google/protobuf/f;

    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedBoolList([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4
    new-instance p0, Lcom/google/protobuf/w;

    invoke-direct {p0}, Lcom/google/protobuf/w;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedFixed32List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    new-instance p0, Lcom/google/protobuf/k0;

    invoke-direct {p0}, Lcom/google/protobuf/k0;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedFixed64List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_6
    new-instance p0, Lcom/google/protobuf/w;

    invoke-direct {p0}, Lcom/google/protobuf/w;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedVarint32List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_7
    new-instance p0, Lcom/google/protobuf/k0;

    invoke-direct {p0}, Lcom/google/protobuf/k0;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedVarint64List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_8
    new-instance p0, Lcom/google/protobuf/u;

    invoke-direct {p0}, Lcom/google/protobuf/u;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedFloatList([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_9
    new-instance p0, Lcom/google/protobuf/l;

    invoke-direct {p0}, Lcom/google/protobuf/l;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/e;->decodePackedDoubleList([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p0

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v3, 0x0

    if-ne p0, v1, :cond_2

    invoke-static {p1, p2, p7}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getEnumType()Lcom/google/protobuf/y$d;

    move-result-object p0

    iget p1, p7, Lcom/google/protobuf/e$b;->int1:I

    invoke-interface {p0, p1}, Lcom/google/protobuf/y$d;->findValueByNumber(I)Lcom/google/protobuf/y$c;

    move-result-object p0

    if-nez p0, :cond_1

    iget p0, p7, Lcom/google/protobuf/e$b;->int1:I

    invoke-static {p4, v2, p0, v3, p6}, Lcom/google/protobuf/k1;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/o1;)Ljava/lang/Object;

    return p2

    :cond_1
    iget p0, p7, Lcom/google/protobuf/e$b;->int1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_5

    :cond_2
    sget-object p0, Lcom/google/protobuf/e$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p0, p0, p4

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_a
    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object p0

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object v2

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v2, p1, p2, p3, p7}, Lcom/google/protobuf/e;->decodeMessageField(Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I

    move-result p0

    iget-object p1, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object p2, p7, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/t;->addRepeatedField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->getField(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-interface {v2}, Lcom/google/protobuf/i1;->newInstance()Ljava/lang/Object;

    move-result-object p0

    iget-object p4, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p4, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    :cond_4
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/e;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_b
    shl-int/lit8 p0, v2, 0x3

    or-int/lit8 v6, p0, 0x4

    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object p0

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object v2

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_5

    move-object v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, v6

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/e;->decodeGroupField(Lcom/google/protobuf/i1;[BIIILcom/google/protobuf/e$b;)I

    move-result p0

    iget-object p1, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object p2, p7, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/t;->addRepeatedField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->getField(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_6

    invoke-interface {v2}, Lcom/google/protobuf/i1;->newInstance()Ljava/lang/Object;

    move-result-object p0

    iget-object p4, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p4, p0}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    :cond_6
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/e;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/i1;[BIIILcom/google/protobuf/e$b;)I

    move-result p0

    :goto_1
    return p0

    :pswitch_c
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/e;->decodeString([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-object v3, p7, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_d
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/e;->decodeBytes([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-object v3, p7, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_f
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-wide p0, p7, Lcom/google/protobuf/e$b;->long1:J

    invoke-static {p0, p1}, Lcom/google/protobuf/i;->decodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_5

    :pswitch_10
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget p0, p7, Lcom/google/protobuf/e$b;->int1:I

    invoke-static {p0}, Lcom/google/protobuf/i;->decodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :pswitch_11
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-wide p0, p7, Lcom/google/protobuf/e$b;->long1:J

    const-wide/16 p3, 0x0

    cmp-long p0, p0, p3

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_2

    :cond_7
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_5

    :pswitch_12
    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeFixed32([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    add-int/lit8 p2, p2, 0x4

    goto :goto_5

    :pswitch_13
    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeFixed64([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_4
    add-int/lit8 p2, p2, 0x8

    goto :goto_5

    :pswitch_14
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget p0, p7, Lcom/google/protobuf/e$b;->int1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :pswitch_15
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-wide p0, p7, Lcom/google/protobuf/e$b;->long1:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_5

    :pswitch_16
    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeFloat([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    :pswitch_17
    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeDouble([BI)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_4

    :goto_5
    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p0, v3}, Lcom/google/protobuf/t;->addRepeatedField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p0, v3}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    :goto_6
    move p1, p2

    :goto_7
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method static decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/google/protobuf/s0;Lcom/google/protobuf/o1;Lcom/google/protobuf/e$b;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/s0;",
            "Lcom/google/protobuf/o1;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    move-object/from16 v8, p7

    iget-object v1, v8, Lcom/google/protobuf/e$b;->extensionRegistry:Lcom/google/protobuf/o;

    move-object v2, p5

    invoke-virtual {v1, p5, v0}, Lcom/google/protobuf/o;->findLiteExtensionByNumber(Lcom/google/protobuf/s0;I)Lcom/google/protobuf/GeneratedMessageLite$g;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {p4}, Lcom/google/protobuf/v0;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/p1;

    move-result-object v5

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v6, p7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/e;->decodeUnknownField(I[BIILcom/google/protobuf/p1;Lcom/google/protobuf/e$b;)I

    move-result v0

    return v0

    :cond_0
    move-object v5, p4

    check-cast v5, Lcom/google/protobuf/GeneratedMessageLite$d;

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$d;->ensureExtensionsAreMutable()Lcom/google/protobuf/t;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/google/protobuf/e;->decodeExtension(I[BIILcom/google/protobuf/GeneratedMessageLite$d;Lcom/google/protobuf/GeneratedMessageLite$g;Lcom/google/protobuf/o1;Lcom/google/protobuf/e$b;)I

    move-result v0

    return v0
.end method

.method static decodeFixed32([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static decodeFixed32List(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/w;

    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/w;->addInt(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Lcom/google/protobuf/e;->decodeFixed32([BI)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/protobuf/w;->addInt(I)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static decodeFixed64([BI)J
    .locals 7

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static decodeFixed64List(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/k0;

    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/k0;->addLong(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Lcom/google/protobuf/e;->decodeFixed64([BI)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/protobuf/k0;->addLong(J)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static decodeFloat([BI)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/e;->decodeFixed32([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static decodeFloatList(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/u;

    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeFloat([BI)F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/u;->addFloat(F)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Lcom/google/protobuf/e;->decodeFloat([BI)F

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/protobuf/u;->addFloat(F)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static decodeGroupField(Lcom/google/protobuf/i1;[BIIILcom/google/protobuf/e$b;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/i1;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/e;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/i1;[BIIILcom/google/protobuf/e$b;)I

    move-result p1

    invoke-interface {p0, v7}, Lcom/google/protobuf/i1;->makeImmutable(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    return p1
.end method

.method static decodeGroupList(Lcom/google/protobuf/i1;I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i1;",
            "I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/e;->decodeGroupField(Lcom/google/protobuf/i1;[BIIILcom/google/protobuf/e$b;)I

    move-result p3

    iget-object v1, p6, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v3

    iget v1, p6, Lcom/google/protobuf/e$b;->int1:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/e;->decodeGroupField(Lcom/google/protobuf/i1;[BIIILcom/google/protobuf/e$b;)I

    move-result p3

    iget-object v1, p6, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method static decodeMessageField(Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/i1;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/e;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I

    move-result p1

    invoke-interface {p0, v6}, Lcom/google/protobuf/i1;->makeImmutable(Ljava/lang/Object;)V

    iput-object v6, p4, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    return p1
.end method

.method static decodeMessageList(Lcom/google/protobuf/i1;I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i1;",
            "I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/protobuf/e;->decodeMessageField(Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I

    move-result p3

    iget-object v0, p6, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p6, Lcom/google/protobuf/e$b;->int1:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/protobuf/e;->decodeMessageField(Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I

    move-result p3

    iget-object v0, p6, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method static decodePackedBoolList([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/f;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/protobuf/e$b;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/google/protobuf/f;->addBoolean(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodePackedDoubleList([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/l;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget p3, p3, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Lcom/google/protobuf/e;->decodeDouble([BI)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/l;->addDouble(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodePackedFixed32List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/w;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget p3, p3, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Lcom/google/protobuf/e;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/w;->addInt(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodePackedFixed64List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/k0;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget p3, p3, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Lcom/google/protobuf/e;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/k0;->addLong(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodePackedFloatList([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/u;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget p3, p3, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Lcom/google/protobuf/e;->decodeFloat([BI)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/u;->addFloat(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodePackedSInt32List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/w;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v1, p3, Lcom/google/protobuf/e$b;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/i;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/protobuf/w;->addInt(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodePackedSInt64List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/k0;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/protobuf/e$b;->long1:J

    invoke-static {v1, v2}, Lcom/google/protobuf/i;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/k0;->addLong(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodePackedVarint32List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/w;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v1, p3, Lcom/google/protobuf/e$b;->int1:I

    invoke-virtual {p2, v1}, Lcom/google/protobuf/w;->addInt(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodePackedVarint64List([BILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/k0;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/protobuf/e$b;->long1:J

    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/k0;->addLong(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodeSInt32List(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/w;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    invoke-static {v0}, Lcom/google/protobuf/i;->decodeZigZag32(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/w;->addInt(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    invoke-static {v0}, Lcom/google/protobuf/i;->decodeZigZag32(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/w;->addInt(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static decodeSInt64List(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/k0;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/e$b;->long1:J

    invoke-static {v0, v1}, Lcom/google/protobuf/i;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/k0;->addLong(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/e$b;->long1:J

    invoke-static {v0, v1}, Lcom/google/protobuf/i;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/k0;->addLong(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static decodeString([BILcom/google/protobuf/e$b;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v0, p2, Lcom/google/protobuf/e$b;->int1:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/y;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodeStringList(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    if-ltz v0, :cond_5

    const-string v1, ""

    if-nez v0, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/protobuf/y;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_4

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v2, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    if-ltz v0, :cond_3

    if-nez v0, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/protobuf/y;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_2
    return p2

    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodeStringListRequireUtf8(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    if-ltz v0, :cond_7

    const-string v1, ""

    if-nez v0, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/protobuf/y;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move p2, v2

    :goto_1
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v2, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    if-ltz v0, :cond_4

    if-nez v0, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/protobuf/y;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodeStringRequireUtf8([BILcom/google/protobuf/e$b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget v0, p2, Lcom/google/protobuf/e$b;->int1:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodeUnknownField(I[BIILcom/google/protobuf/p1;Lcom/google/protobuf/e$b;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeFixed32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/p1;->newInstance()Lcom/google/protobuf/p1;

    move-result-object v0

    and-int/lit8 v2, p0, -0x8

    or-int/lit8 v8, v2, 0x4

    iget v2, p5, Lcom/google/protobuf/e$b;->recursionDepth:I

    add-int/2addr v2, v1

    iput v2, p5, Lcom/google/protobuf/e$b;->recursionDepth:I

    invoke-static {v2}, Lcom/google/protobuf/e;->checkRecursionLimit(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v4

    iget p2, p5, Lcom/google/protobuf/e$b;->int1:I

    if-ne p2, v8, :cond_2

    move v2, p2

    move p2, v4

    goto :goto_1

    :cond_2
    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v6, v0

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/e;->decodeUnknownField(I[BIILcom/google/protobuf/p1;Lcom/google/protobuf/e$b;)I

    move-result v2

    move v9, v2

    move v2, p2

    move p2, v9

    goto :goto_0

    :cond_3
    :goto_1
    iget p1, p5, Lcom/google/protobuf/e$b;->recursionDepth:I

    sub-int/2addr p1, v1

    iput p1, p5, Lcom/google/protobuf/e$b;->recursionDepth:I

    if-gt p2, p3, :cond_4

    if-ne v2, v8, :cond_4

    invoke-virtual {p4, p0, v0}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    return p2

    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget p3, p5, Lcom/google/protobuf/e$b;->int1:I

    if-ltz p3, :cond_8

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr p2, p3

    return p2

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {p1, p2}, Lcom/google/protobuf/e;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/protobuf/e$b;->long1:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    return p1

    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static decodeVarint32(I[BILcom/google/protobuf/e$b;)I
    .locals 2

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    if-ltz v1, :cond_0

    shl-int/lit8 p1, v1, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/protobuf/e$b;->int1:I

    return v0

    :cond_0
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/protobuf/e$b;->int1:I

    return v1

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v1

    if-ltz v1, :cond_2

    shl-int/lit8 p1, v1, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/protobuf/e$b;->int1:I

    return v0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr p0, v1

    add-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/protobuf/e$b;->int1:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    iput p0, p3, Lcom/google/protobuf/e$b;->int1:I

    return v0
.end method

.method static decodeVarint32([BILcom/google/protobuf/e$b;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/google/protobuf/e$b;->int1:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/protobuf/e;->decodeVarint32(I[BILcom/google/protobuf/e$b;)I

    move-result p0

    return p0
.end method

.method static decodeVarint32List(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/w;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    invoke-virtual {p4, v0}, Lcom/google/protobuf/w;->addInt(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/e$b;->int1:I

    invoke-virtual {p4, v0}, Lcom/google/protobuf/w;->addInt(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static decodeVarint64(J[BILcom/google/protobuf/e$b;)I
    .locals 7

    const-wide/16 v0, 0x7f

    and-long/2addr p0, v0

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    and-int/lit8 v1, p3, 0x7f

    int-to-long v1, v1

    const/4 v3, 0x7

    shl-long/2addr v1, v3

    or-long/2addr p0, v1

    move v1, v3

    :goto_0
    if-gez p3, :cond_0

    add-int/lit8 p3, v0, 0x1

    aget-byte v0, p2, v0

    add-int/2addr v1, v3

    and-int/lit8 v2, v0, 0x7f

    int-to-long v4, v2

    shl-long/2addr v4, v1

    or-long/2addr p0, v4

    move v6, v0

    move v0, p3

    move p3, v6

    goto :goto_0

    :cond_0
    iput-wide p0, p4, Lcom/google/protobuf/e$b;->long1:J

    return v0
.end method

.method static decodeVarint64([BILcom/google/protobuf/e$b;)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    iput-wide v1, p2, Lcom/google/protobuf/e$b;->long1:J

    return v0

    :cond_0
    invoke-static {v1, v2, p0, v0, p2}, Lcom/google/protobuf/e;->decodeVarint64(J[BILcom/google/protobuf/e$b;)I

    move-result p0

    return p0
.end method

.method static decodeVarint64List(I[BIILcom/google/protobuf/y$j;Lcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/y$j;",
            "Lcom/google/protobuf/e$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/k0;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/e$b;->long1:J

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/k0;->addLong(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/e$b;->int1:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/e$b;->long1:J

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/k0;->addLong(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/i1;[BIIILcom/google/protobuf/e$b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/v0;

    iget p1, p6, Lcom/google/protobuf/e$b;->recursionDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p6, Lcom/google/protobuf/e$b;->recursionDepth:I

    invoke-static {p1}, Lcom/google/protobuf/e;->checkRecursionLimit(I)V

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/v0;->parseMessage(Ljava/lang/Object;[BIIILcom/google/protobuf/e$b;)I

    move-result p1

    iget p2, p6, Lcom/google/protobuf/e$b;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p6, Lcom/google/protobuf/e$b;->recursionDepth:I

    iput-object p0, p6, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    return p1
.end method

.method static mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_0

    invoke-static {p3, p2, v0, p5}, Lcom/google/protobuf/e;->decodeVarint32(I[BILcom/google/protobuf/e$b;)I

    move-result v0

    iget p3, p5, Lcom/google/protobuf/e$b;->int1:I

    :cond_0
    move v3, v0

    if-ltz p3, :cond_1

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_1

    iget p4, p5, Lcom/google/protobuf/e$b;->recursionDepth:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p5, Lcom/google/protobuf/e$b;->recursionDepth:I

    invoke-static {p4}, Lcom/google/protobuf/e;->checkRecursionLimit(I)V

    add-int/2addr p3, v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/protobuf/i1;->mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/e$b;)V

    iget p1, p5, Lcom/google/protobuf/e$b;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p5, Lcom/google/protobuf/e$b;->recursionDepth:I

    iput-object p0, p5, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    return p3

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static setRecursionLimit(I)V
    .locals 0

    sput p0, Lcom/google/protobuf/e;->recursionLimit:I

    return-void
.end method

.method static skipField(I[BIILcom/google/protobuf/e$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p4}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p2

    iget v0, p4, Lcom/google/protobuf/e$b;->int1:I

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/protobuf/e;->skipField(I[BIILcom/google/protobuf/e$b;)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v0, p0, :cond_4

    return p2

    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result p0

    iget p1, p4, Lcom/google/protobuf/e$b;->int1:I

    add-int/2addr p0, p1

    return p0

    :cond_6
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_7
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/e;->decodeVarint64([BILcom/google/protobuf/e$b;)I

    move-result p0

    return p0

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method
