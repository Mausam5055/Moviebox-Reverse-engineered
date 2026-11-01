.class final Lcom/google/protobuf/t$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private fields:Lcom/google/protobuf/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l1;"
        }
    .end annotation
.end field

.field private hasLazyField:Z

.field private hasNestedBuilders:Z

.field private isMutable:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/protobuf/l1;->newFieldMap(I)Lcom/google/protobuf/l1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t$b;-><init>(Lcom/google/protobuf/l1;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/l1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/protobuf/t$b;->isMutable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/t$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/t$b;-><init>()V

    return-void
.end method

.method private buildImpl(Z)Lcom/google/protobuf/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/t;->emptySet()Lcom/google/protobuf/t;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/t$b;->isMutable:Z

    iget-object v1, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    iget-boolean v2, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    if-eqz v2, :cond_1

    invoke-static {v1, v0}, Lcom/google/protobuf/t;->access$100(Lcom/google/protobuf/l1;Z)Lcom/google/protobuf/l1;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/protobuf/t$b;->replaceBuilders(Lcom/google/protobuf/l1;Z)V

    :cond_1
    new-instance p1, Lcom/google/protobuf/t;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/l1;Lcom/google/protobuf/t$a;)V

    iget-boolean v0, p0, Lcom/google/protobuf/t$b;->hasLazyField:Z

    invoke-static {p1, v0}, Lcom/google/protobuf/t;->access$302(Lcom/google/protobuf/t;Z)Z

    return-object p1
.end method

.method private ensureIsMutable()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/protobuf/t$b;->isMutable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/t;->access$100(Lcom/google/protobuf/l1;Z)Lcom/google/protobuf/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    iput-boolean v1, p0, Lcom/google/protobuf/t$b;->isMutable:Z

    :cond_0
    return-void
.end method

.method public static fromFieldSet(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/t$c;",
            ">(",
            "Lcom/google/protobuf/t;",
            ")",
            "Lcom/google/protobuf/t$b;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/t$b;

    invoke-static {p0}, Lcom/google/protobuf/t;->access$400(Lcom/google/protobuf/t;)Lcom/google/protobuf/l1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/protobuf/t;->access$100(Lcom/google/protobuf/l1;Z)Lcom/google/protobuf/l1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/t$b;-><init>(Lcom/google/protobuf/l1;)V

    invoke-static {p0}, Lcom/google/protobuf/t;->access$300(Lcom/google/protobuf/t;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/protobuf/t$b;->hasLazyField:Z

    return-object v0
.end method

.method private mergeFromField(Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/google/protobuf/t$c;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t$c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/protobuf/f0;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/protobuf/f0;

    invoke-virtual {p1}, Lcom/google/protobuf/f0;->getValue()Lcom/google/protobuf/s0;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/t$c;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/t$b;->getFieldAllowBuilders(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v2, v0, v1}, Lcom/google/protobuf/l1;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/t;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/google/protobuf/t$c;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/t$b;->getFieldAllowBuilders(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-static {p1}, Lcom/google/protobuf/t;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/l1;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v2, v1, Lcom/google/protobuf/s0$a;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/protobuf/s0$a;

    check-cast p1, Lcom/google/protobuf/s0;

    invoke-interface {v0, v1, p1}, Lcom/google/protobuf/t$c;->internalMergeFrom(Lcom/google/protobuf/s0$a;Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0$a;

    goto :goto_1

    :cond_4
    check-cast v1, Lcom/google/protobuf/s0;

    invoke-interface {v1}, Lcom/google/protobuf/s0;->toBuilder()Lcom/google/protobuf/s0$a;

    move-result-object v1

    check-cast p1, Lcom/google/protobuf/s0;

    invoke-interface {v0, v1, p1}, Lcom/google/protobuf/t$c;->internalMergeFrom(Lcom/google/protobuf/s0$a;Lcom/google/protobuf/s0;)Lcom/google/protobuf/s0$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/s0$a;->build()Lcom/google/protobuf/s0;

    move-result-object p1

    iget-object v1, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/l1;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-static {p1}, Lcom/google/protobuf/t;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/l1;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    return-void
.end method

.method private static replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/google/protobuf/s0$a;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/protobuf/s0$a;

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/google/protobuf/s0$a;->buildPartial()Lcom/google/protobuf/s0;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/s0$a;->build()Lcom/google/protobuf/s0;

    move-result-object p0

    return-object p0
.end method

.method private static replaceBuilders(Lcom/google/protobuf/t$c;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/t$c;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/google/protobuf/t$c;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_6

    invoke-interface {p0}, Lcom/google/protobuf/t$c;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_5

    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/protobuf/t$b;->replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_2

    if-ne p0, p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    :cond_1
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Repeated field should contains a List but actually contains type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1, p2}, Lcom/google/protobuf/t$b;->replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p1
.end method

.method private static replaceBuilders(Lcom/google/protobuf/l1;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/t$c;",
            ">(",
            "Lcom/google/protobuf/l1;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/l1;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/l1;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/protobuf/t$b;->replaceBuilders(Ljava/util/Map$Entry;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/l1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/google/protobuf/t$b;->replaceBuilders(Ljava/util/Map$Entry;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static replaceBuilders(Ljava/util/Map$Entry;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/t$c;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t$c;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/t$b;->replaceBuilders(Lcom/google/protobuf/t$c;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private verifyType(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/protobuf/t;->access$500(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_0

    instance-of v0, p2, Lcom/google/protobuf/s0$a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/t$b;->ensureIsMutable()V

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/protobuf/s0$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/t$b;->verifyType(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t$b;->getFieldAllowBuilders(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/l1;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    check-cast v0, Ljava/util/List;

    :goto_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/google/protobuf/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t$b;->buildImpl(Z)Lcom/google/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/t$b;->buildImpl(Z)Lcom/google/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/t$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/t$b;->ensureIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/l1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/protobuf/t$b;->hasLazyField:Z

    :cond_0
    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/t$c;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/t$b;->hasLazyField:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/t;->access$100(Lcom/google/protobuf/l1;Z)Lcom/google/protobuf/l1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v1}, Lcom/google/protobuf/l1;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/l1;->makeImmutable()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/t$b;->replaceBuilders(Lcom/google/protobuf/l1;Z)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v0}, Lcom/google/protobuf/l1;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getField(Lcom/google/protobuf/t$c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t$b;->getFieldAllowBuilders(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/t$b;->replaceBuilders(Lcom/google/protobuf/t$c;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getFieldAllowBuilders(Lcom/google/protobuf/t$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/l1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/protobuf/f0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/f0;

    invoke-virtual {p1}, Lcom/google/protobuf/f0;->getValue()Lcom/google/protobuf/s0;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getRepeatedField(Lcom/google/protobuf/t$c;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/t$b;->ensureIsMutable()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t$b;->getRepeatedFieldAllowBuilders(Lcom/google/protobuf/t$c;I)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/protobuf/t$b;->replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getRepeatedFieldAllowBuilders(Lcom/google/protobuf/t$c;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t$b;->getFieldAllowBuilders(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/t$c;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t$b;->getFieldAllowBuilders(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedFieldCount() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasField(Lcom/google/protobuf/t$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/l1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v2}, Lcom/google/protobuf/l1;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/l1;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/t;->access$600(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v1}, Lcom/google/protobuf/l1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/protobuf/t;->access$600(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/t$b;->ensureIsMutable()V

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/protobuf/t;->access$400(Lcom/google/protobuf/t;)Lcom/google/protobuf/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/l1;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/t;->access$400(Lcom/google/protobuf/t;)Lcom/google/protobuf/l1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/l1;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/t$b;->mergeFromField(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/t;->access$400(Lcom/google/protobuf/t;)Lcom/google/protobuf/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/l1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/google/protobuf/t$b;->mergeFromField(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/t$b;->ensureIsMutable()V

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t$b;->verifyType(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    iget-boolean v4, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    if-nez v4, :cond_1

    instance-of v3, v3, Lcom/google/protobuf/s0$a;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    goto :goto_0

    :cond_2
    move-object p2, v0

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/t$b;->verifyType(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    :goto_3
    instance-of v0, p2, Lcom/google/protobuf/f0;

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/google/protobuf/t$b;->hasLazyField:Z

    :cond_5
    iget-boolean v0, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    if-nez v0, :cond_6

    instance-of v0, p2, Lcom/google/protobuf/s0$a;

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    iget-object v0, p0, Lcom/google/protobuf/t$b;->fields:Lcom/google/protobuf/l1;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/l1;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRepeatedField(Lcom/google/protobuf/t$c;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t$c;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/t$b;->ensureIsMutable()V

    invoke-interface {p1}, Lcom/google/protobuf/t$c;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/google/protobuf/s0$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/protobuf/t$b;->hasNestedBuilders:Z

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t$b;->getFieldAllowBuilders(Lcom/google/protobuf/t$c;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t$b;->verifyType(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
