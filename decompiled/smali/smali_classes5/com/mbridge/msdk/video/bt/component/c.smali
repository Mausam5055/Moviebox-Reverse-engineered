.class public Lcom/mbridge/msdk/video/bt/component/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/bt/component/c$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field b:I

.field c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "handlerNativeResult"

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/component/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/video/bt/component/c;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/bt/component/c;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/video/bt/component/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/component/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/video/bt/component/c;
    .locals 1

    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/c$b;->a()Lcom/mbridge/msdk/video/bt/component/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "HandlerH5MessageManager"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "message"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "HandlerH5MessageManager"

    if-eqz p2, :cond_5

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "uniqueIdentifier"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "parameters"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "type"

    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_4

    :cond_2
    :goto_0
    iget p2, p0, Lcom/mbridge/msdk/video/bt/component/c;->b:I

    const-string v5, "receivedMessage"

    invoke-virtual {p0, p2, v5, p1}, Lcom/mbridge/msdk/video/bt/component/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    const-string p2, "reporter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/Report/a;->a()Lcom/mbridge/msdk/mbsignalcommon/Report/a;

    move-result-object p2

    invoke-virtual {p2, p1, v2, v3, v4}, Lcom/mbridge/msdk/mbsignalcommon/Report/a;->a(Ljava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;I)V

    goto :goto_5

    :cond_3
    const-string p2, "MediaPlayer"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/b;->a()Lcom/mbridge/msdk/video/bt/component/b;

    move-result-object p2

    invoke-virtual {p2, p1, v2, v3, v4}, Lcom/mbridge/msdk/video/bt/component/b;->a(Ljava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;I)V

    goto :goto_5

    :cond_4
    :goto_1
    iget p2, p0, Lcom/mbridge/msdk/video/bt/component/c;->c:I

    const-string v1, "module or method is null"

    invoke-virtual {p0, p2, v1, p1}, Lcom/mbridge/msdk/video/bt/component/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_2
    iget p2, p0, Lcom/mbridge/msdk/video/bt/component/c;->c:I

    const-string v1, "params is null"

    invoke-virtual {p0, p2, v1, p1}, Lcom/mbridge/msdk/video/bt/component/c;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mbridge/msdk/video/bt/component/c;->c:I

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/mbridge/msdk/video/bt/component/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mbridge/msdk/video/bt/component/c;->c:I

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/mbridge/msdk/video/bt/component/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_5
    return-void
.end method
