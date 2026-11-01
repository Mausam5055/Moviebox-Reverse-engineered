.class public final Lwg/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lwg/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/tn/lib/net/exception/ApiException;
    .locals 4

    instance-of v0, p1, Lretrofit2/HttpException;

    const-string v1, "Oops\uff0csomething went wrong"

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lretrofit2/j0;->d()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-class v3, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    if-nez v2, :cond_1

    new-instance v1, Lcom/tn/lib/net/exception/ApiException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/tn/lib/net/bean/BaseDto;->setMsg(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/tn/lib/net/exception/ApiException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    instance-of v0, p1, Lcom/tn/lib/net/exception/ServerException;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/tn/lib/net/exception/ApiException;

    move-object v0, p1

    check-cast v0, Lcom/tn/lib/net/exception/ServerException;

    invoke-virtual {v0}, Lcom/tn/lib/net/exception/ServerException;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tn/lib/net/exception/ServerException;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    instance-of v0, p1, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_a

    instance-of v0, p1, Lorg/json/JSONException;

    if-nez v0, :cond_a

    instance-of v0, p1, Landroid/net/ParseException;

    if-nez v0, :cond_a

    instance-of v0, p1, Landroid/util/MalformedJsonException;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    invoke-static {}, Lwg/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    goto :goto_3

    :cond_6
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    invoke-static {}, Lwg/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    invoke-static {}, Lwg/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    if-eqz p1, :cond_9

    invoke-static {}, Lwg/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    invoke-static {}, Lwg/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    return-object v1
.end method
