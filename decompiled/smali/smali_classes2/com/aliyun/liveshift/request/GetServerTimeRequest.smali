.class public Lcom/aliyun/liveshift/request/GetServerTimeRequest;
.super Lcom/aliyun/utils/BaseRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetServerTimeRequest"


# instance fields
.field private httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

.field private mContextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/aliyun/utils/BaseRequest$OnRequestListener<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/aliyun/utils/BaseRequest;-><init>(Landroid/content/Context;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iput-object p2, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->mHost:Ljava/lang/String;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->mContextWeak:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public runInBackground()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/openapi/getutc?lhs_start=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/aliyun/utils/BaseRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/aliyun/utils/HttpClientHelper;

    invoke-direct {v1, v0}, Lcom/aliyun/utils/HttpClientHelper;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    invoke-virtual {v1}, Lcom/aliyun/utils/HttpClientHelper;->doGet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "request fail"

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_REQUEST_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, v3, v2}, Lcom/aliyun/utils/BaseRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "GT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aliyun/utils/JsonUtil;->getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_REQUEST_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, v3, v2}, Lcom/aliyun/utils/BaseRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/aliyun/utils/BaseRequest;->sendSuccessResult(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_REQUEST_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, v3, v2}, Lcom/aliyun/utils/BaseRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v0

    const-string v1, "unknow error"

    invoke-virtual {p0, v0, v1, v2}, Lcom/aliyun/utils/BaseRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_DATA_PARSER_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v0

    const-string v1, "response not json"

    invoke-virtual {p0, v0, v1, v2}, Lcom/aliyun/utils/BaseRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopInner()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/utils/HttpClientHelper;->stop()V

    :cond_0
    return-void
.end method
