.class public final Lcom/apm/insight/b/g$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:J

.field b:J

.field c:J

.field d:I

.field e:I

.field f:J

.field g:J

.field h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/apm/insight/b/g$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "msg"

    iget-object v2, p0, Lcom/apm/insight/b/g$e;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/apm/insight/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpuDuration"

    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    iget v2, p0, Lcom/apm/insight/b/g$e;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "count"

    iget v2, p0, Lcom/apm/insight/b/g$e;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "messageCount"

    iget v2, p0, Lcom/apm/insight/b/g$e;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastDuration"

    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->b:J

    iget-wide v4, p0, Lcom/apm/insight/b/g$e;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "start"

    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "end"

    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "block_uuid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sblock_uuid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "belong_frame"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method final b()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/apm/insight/b/g$e;->d:I

    iput v0, p0, Lcom/apm/insight/b/g$e;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apm/insight/b/g$e;->f:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apm/insight/b/g$e;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/apm/insight/b/g$e;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/apm/insight/b/g$e;->k:Lcom/apm/insight/b/g$d;

    iput-object v0, p0, Lcom/apm/insight/b/g$e;->i:Ljava/lang/String;

    return-void
.end method
