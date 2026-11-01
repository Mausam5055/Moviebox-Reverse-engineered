.class final Lcom/google/protobuf/d1;
.super Ljava/lang/Object;


# static fields
.field private static final INSTANCE:Lcom/google/protobuf/d1;


# instance fields
.field private final schemaCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/i1;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaFactory:Lcom/google/protobuf/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/d1;

    invoke-direct {v0}, Lcom/google/protobuf/d1;-><init>()V

    sput-object v0, Lcom/google/protobuf/d1;->INSTANCE:Lcom/google/protobuf/d1;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/d1;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/protobuf/l0;

    invoke-direct {v0}, Lcom/google/protobuf/l0;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/d1;->schemaFactory:Lcom/google/protobuf/j1;

    return-void
.end method

.method public static getInstance()Lcom/google/protobuf/d1;
    .locals 1

    sget-object v0, Lcom/google/protobuf/d1;->INSTANCE:Lcom/google/protobuf/d1;

    return-object v0
.end method


# virtual methods
.method getTotalSchemaSize()I
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/d1;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/i1;

    instance-of v3, v2, Lcom/google/protobuf/v0;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/protobuf/v0;

    invoke-virtual {v2}, Lcom/google/protobuf/v0;->getSchemaSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/i1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/protobuf/i1;->isInitialized(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/i1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/protobuf/i1;->makeImmutable(Ljava/lang/Object;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/h1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/h1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/o;->getEmptyRegistry()Lcom/google/protobuf/o;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/d1;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/h1;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/h1;Lcom/google/protobuf/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/i1;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/i1;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/h1;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public registerSchema(Ljava/lang/Class;Lcom/google/protobuf/i1;)Lcom/google/protobuf/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/i1;",
            ")",
            "Lcom/google/protobuf/i1;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {p2, v0}, Lcom/google/protobuf/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/d1;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/i1;

    return-object p1
.end method

.method public registerSchemaOverride(Ljava/lang/Class;Lcom/google/protobuf/i1;)Lcom/google/protobuf/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/i1;",
            ")",
            "Lcom/google/protobuf/i1;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {p2, v0}, Lcom/google/protobuf/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/d1;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/i1;

    return-object p1
.end method

.method public schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/i1;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/d1;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/i1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/d1;->schemaFactory:Lcom/google/protobuf/j1;

    invoke-interface {v0, p1}, Lcom/google/protobuf/j1;->createSchema(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/d1;->registerSchema(Ljava/lang/Class;Lcom/google/protobuf/i1;)Lcom/google/protobuf/i1;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/i1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/protobuf/i1;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/i1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/i1;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method
