.class public Lcom/aliyun/liveshift/bean/TimeLineContent;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeLineContent"


# instance fields
.field public current:J

.field public timelines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/liveshift/bean/TimeLineInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInfoFromJson(Lorg/json/JSONObject;)Lcom/aliyun/liveshift/bean/TimeLineContent;
    .locals 3

    new-instance v0, Lcom/aliyun/liveshift/bean/TimeLineContent;

    invoke-direct {v0}, Lcom/aliyun/liveshift/bean/TimeLineContent;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "current"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/aliyun/utils/JsonUtil;->getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aliyun/liveshift/bean/TimeLineContent;->current:J

    :try_start_0
    const-string v1, "timeline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/aliyun/liveshift/bean/TimeLineInfo;->getInfoArrayFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/aliyun/liveshift/bean/TimeLineContent;->timelines:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
