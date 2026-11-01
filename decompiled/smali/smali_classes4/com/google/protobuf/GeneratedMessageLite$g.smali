.class public Lcom/google/protobuf/GeneratedMessageLite$g;
.super Lcom/google/protobuf/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field final containingTypeDefaultInstance:Lcom/google/protobuf/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/s0;"
        }
    .end annotation
.end field

.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

.field final messageDefaultInstance:Lcom/google/protobuf/s0;


# direct methods
.method constructor <init>(Lcom/google/protobuf/s0;Ljava/lang/Object;Lcom/google/protobuf/s0;Lcom/google/protobuf/GeneratedMessageLite$f;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/s0;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/s0;",
            "Lcom/google/protobuf/GeneratedMessageLite$f;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/m;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p5

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p5, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->containingTypeDefaultInstance:Lcom/google/protobuf/s0;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->defaultValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->messageDefaultInstance:Lcom/google/protobuf/s0;

    iput-object p4, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageLite$g;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$g;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContainingTypeDefaultInstance()Lcom/google/protobuf/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/s0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->containingTypeDefaultInstance:Lcom/google/protobuf/s0;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getLiteType()Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/google/protobuf/s0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->messageDefaultInstance:Lcom/google/protobuf/s0;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-boolean v0, v0, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated:Z

    return v0
.end method

.method singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$f;->enumTypeMap:Lcom/google/protobuf/y$d;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/y$d;->findValueByNumber(I)Lcom/google/protobuf/y$c;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/google/protobuf/y$c;

    invoke-interface {p1}, Lcom/google/protobuf/y$c;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method toFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageLite$g;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$g;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
