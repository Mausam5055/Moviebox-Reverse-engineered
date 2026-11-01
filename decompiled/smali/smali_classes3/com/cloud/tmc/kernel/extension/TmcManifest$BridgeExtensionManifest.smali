.class public Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/extension/TmcManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BridgeExtensionManifest"
.end annotation


# instance fields
.field extensionMetaInfo:Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

.field isRawType:Z

.field public scope:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public target:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->make(Ljava/lang/Class;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;-><init>()V

    iput-object p0, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->target:Ljava/lang/Class;

    iput-object p1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->scope:Ljava/lang/Class;

    return-object v0
.end method

.method public static makeRaw(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->isRawType:Z

    new-instance v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    sget-object v7, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/ExtensionType;Z)V

    iput-object v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->extensionMetaInfo:Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    return-object v0
.end method

.method public static makeRaw(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->isRawType:Z

    new-instance v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    sget-object v7, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    const/4 v8, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/ExtensionType;Z)V

    iput-object v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->extensionMetaInfo:Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BridgeExtensionManifest{target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->target:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->scope:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
