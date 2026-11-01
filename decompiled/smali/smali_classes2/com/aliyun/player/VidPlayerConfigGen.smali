.class public Lcom/aliyun/player/VidPlayerConfigGen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;
    }
.end annotation


# instance fields
.field private configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addPlayerConfig(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addPlayerConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public genConfig()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEncryptType(Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;)V
    .locals 2

    sget-object v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->AliyunVodEncryption:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    const-string v1, "EncryptType"

    if-ne p1, v0, :cond_0

    const-string p1, "AliyunVoDEncryption"

    invoke-virtual {p0, v1, p1}, Lcom/aliyun/player/VidPlayerConfigGen;->addPlayerConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/aliyun/player/VidPlayerConfigGen;->addPlayerConfig(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setMtsHlsUriToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MtsHlsUriToken"

    invoke-virtual {p0, v0, p1}, Lcom/aliyun/player/VidPlayerConfigGen;->addPlayerConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPreviewTime(I)V
    .locals 1

    const-string v0, "PreviewTime"

    invoke-virtual {p0, v0, p1}, Lcom/aliyun/player/VidPlayerConfigGen;->addPlayerConfig(Ljava/lang/String;I)V

    return-void
.end method
