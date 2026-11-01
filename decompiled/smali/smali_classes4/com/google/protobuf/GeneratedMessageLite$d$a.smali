.class public Lcom/google/protobuf/GeneratedMessageLite$d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/protobuf/GeneratedMessageLite$f;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageSetWireFormat:Z

.field private next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/google/protobuf/GeneratedMessageLite$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/protobuf/GeneratedMessageLite$d;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$d;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->this$0:Lcom/google/protobuf/GeneratedMessageLite$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$d;->extensions:Lcom/google/protobuf/t;

    invoke-virtual {p1}, Lcom/google/protobuf/t;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->iter:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->next:Ljava/util/Map$Entry;

    :cond_0
    iput-boolean p2, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->messageSetWireFormat:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$d;ZLcom/google/protobuf/GeneratedMessageLite$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$d$a;-><init>(Lcom/google/protobuf/GeneratedMessageLite$d;Z)V

    return-void
.end method


# virtual methods
.method public writeUntil(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->next:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->next:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-boolean v1, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->messageSetWireFormat:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getNumber()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/s0;

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/google/protobuf/s0;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/t;->writeField(Lcom/google/protobuf/t$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->next:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$d$a;->next:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_2
    return-void
.end method
