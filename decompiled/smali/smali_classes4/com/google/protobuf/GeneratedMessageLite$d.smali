.class public abstract Lcom/google/protobuf/GeneratedMessageLite$d;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageLite$d$a;
    }
.end annotation


# instance fields
.field protected extensions:Lcom/google/protobuf/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/t;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/t;->emptySet()Lcom/google/protobuf/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    return-void
.end method

.method private eagerlyMergeMessageSetExtension(Lcom/google/protobuf/i;Lcom/google/protobuf/GeneratedMessageLite$g;Lcom/google/protobuf/o;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i;",
            "Lcom/google/protobuf/GeneratedMessageLite$g;",
            "Lcom/google/protobuf/o;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p4, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$d;->parseExtension(Lcom/google/protobuf/i;Lcom/google/protobuf/o;Lcom/google/protobuf/GeneratedMessageLite$g;II)Z

    return-void
.end method

.method private mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;Lcom/google/protobuf/GeneratedMessageLite$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/GeneratedMessageLite$g;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/t;->getField(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/s0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/s0;->toBuilder()Lcom/google/protobuf/s0$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/s0;->newBuilderForType()Lcom/google/protobuf/s0$a;

    move-result-object v0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/s0$a;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Lcom/google/protobuf/s0$a;

    invoke-interface {v0}, Lcom/google/protobuf/s0$a;->build()Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$d;->ensureExtensionsAreMutable()Lcom/google/protobuf/t;

    move-result-object p2

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/GeneratedMessageLite$g;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    return-void
.end method

.method private mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/s0;Lcom/google/protobuf/i;Lcom/google/protobuf/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/s0;",
            ">(TMessageType;",
            "Lcom/google/protobuf/i;",
            "Lcom/google/protobuf/o;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/protobuf/i;->readTag()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v4, v5, :cond_2

    invoke-virtual {p2}, Lcom/google/protobuf/i;->readUInt32()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, v0}, Lcom/google/protobuf/o;->findLiteExtensionByNumber(Lcom/google/protobuf/s0;I)Lcom/google/protobuf/GeneratedMessageLite$g;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v4, v5, :cond_4

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-direct {p0, p2, v3, p3, v0}, Lcom/google/protobuf/GeneratedMessageLite$d;->eagerlyMergeMessageSetExtension(Lcom/google/protobuf/i;Lcom/google/protobuf/GeneratedMessageLite$g;Lcom/google/protobuf/o;I)V

    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/i;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v4}, Lcom/google/protobuf/i;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    sget p1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p2, p1}, Lcom/google/protobuf/i;->checkLastTagWas(I)V

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz v3, :cond_5

    invoke-direct {p0, v2, p3, v3}, Lcom/google/protobuf/GeneratedMessageLite$d;->mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;Lcom/google/protobuf/GeneratedMessageLite$g;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/google/protobuf/GeneratedMessageLite;->mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private parseExtension(Lcom/google/protobuf/i;Lcom/google/protobuf/o;Lcom/google/protobuf/GeneratedMessageLite$g;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/GeneratedMessageLite$g;",
            "II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_1

    :cond_0
    move v0, v1

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/protobuf/t;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v2

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-boolean v4, v3, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/google/protobuf/GeneratedMessageLite$f;->type:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/protobuf/t;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v3

    if-ne v0, v3, :cond_0

    move v3, v1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, p4, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseUnknownField(ILcom/google/protobuf/i;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$d;->ensureExtensionsAreMutable()Lcom/google/protobuf/t;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/i;->readRawVarint32()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/i;->pushLimit(I)I

    move-result p2

    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p4

    sget-object p5, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p4, p5, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/i;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/i;->readEnum()I

    move-result p4

    iget-object p5, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$f;->getEnumType()Lcom/google/protobuf/y$d;

    move-result-object p5

    invoke-interface {p5, p4}, Lcom/google/protobuf/y$d;->findValueByNumber(I)Lcom/google/protobuf/y$c;

    move-result-object p4

    if-nez p4, :cond_4

    return v1

    :cond_4
    iget-object p5, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$g;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p5, v0, p4}, Lcom/google/protobuf/t;->addRepeatedField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/i;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_6

    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p4

    invoke-static {p1, p4, v2}, Lcom/google/protobuf/t;->readPrimitiveField(Lcom/google/protobuf/i;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p4

    iget-object p5, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5, v0, p4}, Lcom/google/protobuf/t;->addRepeatedField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/protobuf/i;->popLimit(I)V

    goto/16 :goto_6

    :cond_7
    sget-object p4, Lcom/google/protobuf/GeneratedMessageLite$a;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    if-eq p4, v1, :cond_a

    const/4 p2, 0x2

    if-eq p4, p2, :cond_8

    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/google/protobuf/t;->readPrimitiveField(Lcom/google/protobuf/i;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/i;->readEnum()I

    move-result p1

    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$f;->getEnumType()Lcom/google/protobuf/y$d;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/protobuf/y$d;->findValueByNumber(I)Lcom/google/protobuf/y$c;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-virtual {p0, p5, p1}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    return v1

    :cond_9
    move-object p1, p2

    goto :goto_5

    :cond_a
    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated()Z

    move-result p4

    if-nez p4, :cond_b

    iget-object p4, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object p5, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p4, p5}, Lcom/google/protobuf/t;->getField(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/protobuf/s0;

    if-eqz p4, :cond_b

    invoke-interface {p4}, Lcom/google/protobuf/s0;->toBuilder()Lcom/google/protobuf/s0$a;

    move-result-object p4

    goto :goto_3

    :cond_b
    const/4 p4, 0x0

    :goto_3
    if-nez p4, :cond_c

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/protobuf/s0;->newBuilderForType()Lcom/google/protobuf/s0$a;

    move-result-object p4

    :cond_c
    iget-object p5, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p5

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p5, v0, :cond_d

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$g;->getNumber()I

    move-result p5

    invoke-virtual {p1, p5, p4, p2}, Lcom/google/protobuf/i;->readGroup(ILcom/google/protobuf/s0$a;Lcom/google/protobuf/o;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/i;->readMessage(Lcom/google/protobuf/s0$a;Lcom/google/protobuf/o;)V

    :goto_4
    invoke-interface {p4}, Lcom/google/protobuf/s0$a;->build()Lcom/google/protobuf/s0;

    move-result-object p1

    :goto_5
    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/GeneratedMessageLite$g;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/t;->addRepeatedField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/GeneratedMessageLite$g;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    :goto_6
    return v1
.end method

.method private verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$g;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$g;->getContainingTypeDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method ensureExtensionsAreMutable()Lcom/google/protobuf/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    invoke-virtual {v0}, Lcom/google/protobuf/t;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    invoke-virtual {v0}, Lcom/google/protobuf/t;->clone()Lcom/google/protobuf/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    return-object v0
.end method

.method protected extensionsAreInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    invoke-virtual {v0}, Lcom/google/protobuf/t;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    invoke-virtual {v0}, Lcom/google/protobuf/t;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    invoke-virtual {v0}, Lcom/google/protobuf/t;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/s0;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/google/protobuf/m;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/m;",
            ")TType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/m;)Lcom/google/protobuf/GeneratedMessageLite$g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$d;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$g;)V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/t;->getField(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$g;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$g;->fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/m;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/m;",
            "I)TType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/m;)Lcom/google/protobuf/GeneratedMessageLite$g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$d;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$g;)V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/t;->getRepeatedField(Lcom/google/protobuf/t$c;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$g;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/m;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/m;",
            ")I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/m;)Lcom/google/protobuf/GeneratedMessageLite$g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$d;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$g;)V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t;->getRepeatedFieldCount(Lcom/google/protobuf/t$c;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/google/protobuf/m;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/m;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/m;)Lcom/google/protobuf/GeneratedMessageLite$g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$d;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$g;)V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t;->hasField(Lcom/google/protobuf/t$c;)Z

    move-result p1

    return p1
.end method

.method protected final mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$d;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    invoke-virtual {v0}, Lcom/google/protobuf/t;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    invoke-virtual {v0}, Lcom/google/protobuf/t;->clone()Lcom/google/protobuf/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/t;)V

    return-void
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/s0$a;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    return-object v0
.end method

.method protected newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$d$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageLite$d.a;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$d$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$d$a;-><init>(Lcom/google/protobuf/GeneratedMessageLite$d;ZLcom/google/protobuf/GeneratedMessageLite$a;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$d$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageLite$d.a;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$d$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$d$a;-><init>(Lcom/google/protobuf/GeneratedMessageLite$d;ZLcom/google/protobuf/GeneratedMessageLite$a;)V

    return-object v0
.end method

.method protected parseUnknownField(Lcom/google/protobuf/s0;Lcom/google/protobuf/i;Lcom/google/protobuf/o;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/s0;",
            ">(TMessageType;",
            "Lcom/google/protobuf/i;",
            "Lcom/google/protobuf/o;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v5

    invoke-virtual {p3, p1, v5}, Lcom/google/protobuf/o;->findLiteExtensionByNumber(Lcom/google/protobuf/s0;I)Lcom/google/protobuf/GeneratedMessageLite$g;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$d;->parseExtension(Lcom/google/protobuf/i;Lcom/google/protobuf/o;Lcom/google/protobuf/GeneratedMessageLite$g;II)Z

    move-result p1

    return p1
.end method

.method protected parseUnknownFieldAsMessageSet(Lcom/google/protobuf/s0;Lcom/google/protobuf/i;Lcom/google/protobuf/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/s0;",
            ">(TMessageType;",
            "Lcom/google/protobuf/i;",
            "Lcom/google/protobuf/o;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    if-ne p4, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$d;->mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/s0;Lcom/google/protobuf/i;Lcom/google/protobuf/o;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$d;->parseUnknownField(Lcom/google/protobuf/s0;Lcom/google/protobuf/i;Lcom/google/protobuf/o;I)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p2, p4}, Lcom/google/protobuf/i;->skipField(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/s0$a;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    return-object v0
.end method
