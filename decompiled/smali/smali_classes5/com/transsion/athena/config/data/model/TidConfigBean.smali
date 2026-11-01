.class public Lcom/transsion/athena/config/data/model/TidConfigBean;
.super Ljava/lang/Object;


# static fields
.field public static final REASON_ATHENA_DISABLE:I = 0x64

.field public static final REASON_CONFIG_NOT_READY:I = 0x66

.field public static final REASON_DB_EXCEPTION:I = 0x6a

.field public static final REASON_INITIALIZING:I = 0x65

.field public static final REASON_NONE:I = 0x0

.field public static final REASON_SAMPLING_RATE:I = 0x69

.field public static final REASON_TID_DISABLE:I = 0x68

.field public static final REASON_TID_NOT_EXIST:I = 0x67


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/transsion/athena/config/data/model/aatnhe;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/aatnhe;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/transsion/athena/config/data/model/aatnhe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/aatnhe;-><init>()V

    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->a:J

    iput-object p3, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/TidConfigBean;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;-><init>()V

    const-string v1, "tid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setTid(J)V

    const-string v1, "tidConfig"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/config/data/model/aatnhe;->a(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setTidConfig(Lcom/transsion/athena/config/data/model/aatnhe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public allowTrack(J)Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->d:J

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long p1, p1, v2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public allowUpload(J)Z
    .locals 8

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->j()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    const/4 p2, 0x1

    if-ltz p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v7

    :goto_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->f()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->f()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/aatnhe;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    move v0, v7

    :goto_1
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/aatnhe;->g()I

    move-result v1

    if-eqz v1, :cond_3

    if-ne v1, p2, :cond_5

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/aatnhe;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v7, p2

    :cond_5
    :goto_2
    return v7
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->a:J

    return-wide v0
.end method

.method public getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    return-object v0
.end method

.method public inSamplingRange()Z
    .locals 10

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->d()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/aatnhe;->c()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/aatnhe;->e()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/aatnhe;->m()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/aatnhe;->l()I

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x64

    if-ne v3, v6, :cond_0

    if-nez v0, :cond_0

    if-ne v1, v6, :cond_0

    if-ne v2, v5, :cond_0

    if-ne v4, v5, :cond_0

    return v5

    :cond_0
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_3

    mul-int/2addr v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    rem-int/2addr v7, v2

    if-lt v7, v0, :cond_2

    if-gt v7, v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v9

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v5

    :goto_2
    sget-object v7, Lcom/transsion/athena/aethna/athena;->b:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/2addr v4, v6

    rem-int/2addr v7, v4

    if-ge v7, v3, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v9

    :goto_3
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gaidHashHit: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " eventHashHit: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " gmin = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " gmax = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v5, v9

    :goto_4
    return v5
.end method

.method public isCacheEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnable()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->b:Ljava/lang/String;

    return-void
.end method

.method public setLastTTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->d:J

    return-void
.end method

.method public setTid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->a:J

    return-void
.end method

.method public setTidConfig(Lcom/transsion/athena/config/data/model/aatnhe;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "tid"

    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "tidConfig"

    :try_start_2
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/aatnhe;->n()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
