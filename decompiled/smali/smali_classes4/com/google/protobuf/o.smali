.class public Lcom/google/protobuf/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/o$b;,
        Lcom/google/protobuf/o$a;
    }
.end annotation


# static fields
.field static final EMPTY_REGISTRY_LITE:Lcom/google/protobuf/o;

.field static final EXTENSION_CLASS_NAME:Ljava/lang/String; = "com.google.protobuf.Extension"

.field private static doFullRuntimeInheritanceCheck:Z = true

.field private static volatile eagerlyParseMessageSets:Z

.field private static volatile emptyRegistry:Lcom/google/protobuf/o;


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/o$b;",
            "Lcom/google/protobuf/GeneratedMessageLite$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/o;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/o;->EMPTY_REGISTRY_LITE:Lcom/google/protobuf/o;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/o;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/protobuf/o;->EMPTY_REGISTRY_LITE:Lcom/google/protobuf/o;

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/o;->extensionsByNumber:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/protobuf/o;->extensionsByNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/o;->extensionsByNumber:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/o;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyRegistry()Lcom/google/protobuf/o;
    .locals 2

    sget-boolean v0, Lcom/google/protobuf/o;->doFullRuntimeInheritanceCheck:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/o;->EMPTY_REGISTRY_LITE:Lcom/google/protobuf/o;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/o;->emptyRegistry:Lcom/google/protobuf/o;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/protobuf/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/o;->emptyRegistry:Lcom/google/protobuf/o;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/n;->createEmpty()Lcom/google/protobuf/o;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/o;->emptyRegistry:Lcom/google/protobuf/o;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static isEagerlyParseMessageSets()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/o;->eagerlyParseMessageSets:Z

    return v0
.end method

.method public static newInstance()Lcom/google/protobuf/o;
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/o;->doFullRuntimeInheritanceCheck:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/n;->create()Lcom/google/protobuf/o;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/o;

    invoke-direct {v0}, Lcom/google/protobuf/o;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static setEagerlyParseMessageSets(Z)V
    .locals 0

    sput-boolean p0, Lcom/google/protobuf/o;->eagerlyParseMessageSets:Z

    return-void
.end method


# virtual methods
.method public final add(Lcom/google/protobuf/GeneratedMessageLite$g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$g;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/o;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/o$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$g;->getContainingTypeDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$g;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/o$b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final add(Lcom/google/protobuf/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/m;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/GeneratedMessageLite$g;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/google/protobuf/GeneratedMessageLite$g;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/o;->add(Lcom/google/protobuf/GeneratedMessageLite$g;)V

    :cond_0
    sget-boolean v2, Lcom/google/protobuf/o;->doFullRuntimeInheritanceCheck:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/google/protobuf/n;->isFullRegistry(Lcom/google/protobuf/o;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "add"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Lcom/google/protobuf/o$a;->INSTANCE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Could not invoke ExtensionRegistry#add for %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    :goto_0
    return-void
.end method

.method public findLiteExtensionByNumber(Lcom/google/protobuf/s0;I)Lcom/google/protobuf/GeneratedMessageLite$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/s0;",
            ">(TContainingType;I)",
            "Lcom/google/protobuf/GeneratedMessageLite$g;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/o;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/o$b;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/o$b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$g;

    return-object p1
.end method

.method public getUnmodifiable()Lcom/google/protobuf/o;
    .locals 1

    new-instance v0, Lcom/google/protobuf/o;

    invoke-direct {v0, p0}, Lcom/google/protobuf/o;-><init>(Lcom/google/protobuf/o;)V

    return-object v0
.end method
