.class public Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider$AuthDecoder;
    }
.end annotation


# instance fields
.field private mAuthServerUrl:Ljava/lang/String;

.field private mDecoder:Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider$AuthDecoder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;->mAuthServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;->mAuthServerUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->readStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;->mDecoder:Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider$AuthDecoder;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider$AuthDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "StatusCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    const-string v0, "AccessKeyId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccessKeySecret"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityToken"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Expiration"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    const-string v0, "ErrorCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ErrorMessage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ErrorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "| ErrorMessage: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAuthServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;->mAuthServerUrl:Ljava/lang/String;

    return-void
.end method

.method public setDecoder(Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider$AuthDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;->mDecoder:Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider$AuthDecoder;

    return-void
.end method
