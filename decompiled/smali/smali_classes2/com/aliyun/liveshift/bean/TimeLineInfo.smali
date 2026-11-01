.class public Lcom/aliyun/liveshift/bean/TimeLineInfo;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeLineInfo"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInfoArrayFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/liveshift/bean/TimeLineInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/liveshift/bean/TimeLineInfo;->getInfoFromJson(Lorg/json/JSONObject;)Lcom/aliyun/liveshift/bean/TimeLineInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getInfoFromJson(Lorg/json/JSONObject;)Lcom/aliyun/liveshift/bean/TimeLineInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/aliyun/liveshift/bean/TimeLineInfo;

    invoke-direct {v0}, Lcom/aliyun/liveshift/bean/TimeLineInfo;-><init>()V

    const-string v1, "start"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/aliyun/utils/JsonUtil;->getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aliyun/liveshift/bean/TimeLineInfo;->start:J

    const-string v1, "end"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/aliyun/utils/JsonUtil;->getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aliyun/liveshift/bean/TimeLineInfo;->end:J

    return-object v0
.end method
