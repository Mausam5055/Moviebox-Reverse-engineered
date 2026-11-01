.class final Lcom/google/protobuf/n;
.super Ljava/lang/Object;


# static fields
.field static final EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final FULL_REGISTRY_CLASS_NAME:Ljava/lang/String; = "com.google.protobuf.ExtensionRegistry"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/n;->reflectExtensionRegistry()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/n;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/protobuf/o;
    .locals 1

    const-string v0, "newInstance"

    invoke-static {v0}, Lcom/google/protobuf/n;->invokeSubclassFactory(Ljava/lang/String;)Lcom/google/protobuf/o;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/o;

    invoke-direct {v0}, Lcom/google/protobuf/o;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static createEmpty()Lcom/google/protobuf/o;
    .locals 1

    const-string v0, "getEmptyRegistry"

    invoke-static {v0}, Lcom/google/protobuf/n;->invokeSubclassFactory(Ljava/lang/String;)Lcom/google/protobuf/o;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/protobuf/o;->EMPTY_REGISTRY_LITE:Lcom/google/protobuf/o;

    :goto_0
    return-object v0
.end method

.method private static final invokeSubclassFactory(Ljava/lang/String;)Lcom/google/protobuf/o;
    .locals 2

    sget-object v0, Lcom/google/protobuf/n;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method static isFullRegistry(Lcom/google/protobuf/o;)Z
    .locals 1

    sget-object v0, Lcom/google/protobuf/n;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static reflectExtensionRegistry()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionRegistry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
