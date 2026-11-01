.class public Lcom/aliyun/liveshift/request/GetTimeShiftRequest;
.super Lcom/aliyun/utils/BaseRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetTimeShiftRequest"


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

.field private mCustomHeaders:[Ljava/lang/String;

.field private mHttpProxy:Ljava/lang/String;

.field private mLiveShiftSource:Lcom/aliyun/player/source/LiveShift;

.field private mNetworkTimeout:I

.field private mReferer:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/aliyun/utils/BaseRequest;-><init>(Landroid/content/Context;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mReferer:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mNetworkTimeout:I

    iput-object p3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mHttpProxy:Ljava/lang/String;

    iput-object p3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mUserAgent:Ljava/lang/String;

    iput-object p3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mCustomHeaders:[Ljava/lang/String;

    iput-object p3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mContextWeak:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mLiveShiftSource:Lcom/aliyun/player/source/LiveShift;

    return-void
.end method


# virtual methods
.method public runInBackground()V
    .locals 4

    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mLiveShiftSource:Lcom/aliyun/player/source/LiveShift;

    invoke-virtual {v0}, Lcom/aliyun/player/source/LiveShift;->getTimeLineUrl()Ljava/lang/String;

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

    iput-object v1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mReferer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/aliyun/utils/HttpClientHelper;->setRefer(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget-object v1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mHttpProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/utils/HttpClientHelper;->setHttpProxy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget v1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Lcom/aliyun/utils/HttpClientHelper;->setTimeout(I)V

    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget-object v1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/utils/HttpClientHelper;->setUerAgent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget-object v1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mCustomHeaders:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/utils/HttpClientHelper;->setCustomHeaders([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    invoke-virtual {v0}, Lcom/aliyun/utils/HttpClientHelper;->doGet()Ljava/lang/String;

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
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "retCode"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aliyun/utils/JsonUtil;->getInt(Lorg/json/JSONObject;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_REQUEST_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, v3, v2}, Lcom/aliyun/utils/BaseRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/liveshift/bean/TimeLineContent;->getInfoFromJson(Lorg/json/JSONObject;)Lcom/aliyun/liveshift/bean/TimeLineContent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/aliyun/utils/BaseRequest;->sendSuccessResult(Ljava/lang/Object;Ljava/lang/String;)V
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

.method public setCustomHeaders([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mCustomHeaders:[Ljava/lang/String;

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mHttpProxy:Ljava/lang/String;

    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mReferer:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mNetworkTimeout:I

    return-void
.end method

.method public setUerAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public stopInner()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/utils/HttpClientHelper;->stop()V

    :cond_0
    return-void
.end method
