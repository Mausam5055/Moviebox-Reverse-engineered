.class public Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;
.super Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;


# static fields
.field private static final EXTENSION_VERSION:B = 0xbt

.field private static final TAG:Ljava/lang/String; = "ExtensionMetaInfo"


# instance fields
.field public bundleName:Ljava/lang/String;

.field public extensionClass:Ljava/lang/String;

.field public filter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filterStrs:Ljava/lang/String;

.field public isLazy:Z

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

.field public scopeClassName:Ljava/lang/String;

.field public type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

.field public typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    iput-object p3, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    invoke-direct {p0, p4}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->getScopeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    const-string p1, "normal"

    iget-object p2, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->NORMAL:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    :goto_0
    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V
    .locals 6
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
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/ExtensionType;Z)V
    .locals 1
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
            ">;",
            "Lcom/cloud/tmc/kernel/extension/ExtensionType;",
            "Z)V"
        }
    .end annotation

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;-><init>(B)V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    iput-object p3, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    iput-object p4, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    iput-object p5, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V
    .locals 7
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
            ">;Z)V"
        }
    .end annotation

    sget-object v5, Lcom/cloud/tmc/kernel/extension/ExtensionType;->NORMAL:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/ExtensionType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V

    return-void
.end method

.method private filterStrToList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add event configs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtensionMetaInfo"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getScopeClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "App"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "com.app.api.App"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string v0, "Page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.app.api.Page"

    :goto_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/cloud/tmc/kernel/node/Scope;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    return-object p1

    :cond_2
    return-object v1

    :goto_1
    const-string v0, "ExtensionMetaInfo"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v1
.end method


# virtual methods
.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result v0

    iput-byte v0, p0, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;->mFormatVersion:B

    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->getScopeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    const-string p1, "normal"

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->NORMAL:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    :goto_0
    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    return-object p0
.end method

.method public bridge synthetic deserialize(Ljava/io/BufferedInputStream;)Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->deserialize(Ljava/io/BufferedInputStream;)Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;->mFormatVersion:B

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/io/BufferedOutputStream;)Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->serialize(Ljava/io/BufferedOutputStream;)Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtensionMetaInfo{extensionClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
