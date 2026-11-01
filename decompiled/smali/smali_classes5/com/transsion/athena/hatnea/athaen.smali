.class public Lcom/transsion/athena/hatnea/athaen;
.super Lcom/transsion/athena/hatnea/anateh;


# instance fields
.field private final c:Lcom/transsion/athena/config/data/model/athena;

.field private d:J

.field private final e:I

.field private final f:Lcom/transsion/athena/aethna/aethna;


# direct methods
.method public constructor <init>(Lcom/transsion/athena/config/data/model/athena;JLcom/transsion/athena/aethna/aethna;)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/athena/hatnea/anateh;-><init>()V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/athena/hatnea/athaen;->e:I

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/athena;->k()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/athena;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "dimensionChanged, so set appConfig version to 0"

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    iput-wide p2, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    iput-object p4, p0, Lcom/transsion/athena/hatnea/athaen;->f:Lcom/transsion/athena/aethna/aethna;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "sname"

    :try_start_1
    iget-object v4, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "sdkver"

    :try_start_2
    iget-object v4, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v4

    invoke-static {v4}, Lcom/transsion/athena/config/data/model/ehanat;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const-string v2, ""

    :goto_0
    iget-object v3, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/athena;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/athena;->k()J

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v6}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v6

    invoke-static {v3, v2, v4, v5, v6}, Lcom/transsion/athena/hatnea/anehat;->a(Ljava/lang/String;Ljava/lang/String;JI)Lcom/transsion/athena/hatnea/ehanat;

    move-result-object v2

    iget v3, v2, Lcom/transsion/athena/hatnea/ehanat;->a:I

    const-string v4, "<-- appIdConfig:%s"

    if-eqz v3, :cond_1

    if-eq v3, v1, :cond_0

    iget-object v2, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->g()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/transsion/athena/config/data/model/athena;->e(I)V

    goto :goto_1

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NOT_MODIFIED"

    aput-object v2, v1, v0

    invoke-static {v4, v1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    iget v2, p0, Lcom/transsion/athena/hatnea/athaen;->e:I

    invoke-virtual {v1, v2}, Lcom/transsion/athena/config/data/model/athena;->b(I)V

    iget-object v1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {v4, v3}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v0, v3, v2}, Lcom/transsion/athena/aethna/athena;->a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    iget v2, p0, Lcom/transsion/athena/hatnea/athaen;->e:I

    invoke-virtual {v0, v2}, Lcom/transsion/athena/config/data/model/athena;->b(I)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->e()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->e()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    :cond_2
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/transsion/athena/hatnea/athaen;->f:Lcom/transsion/athena/aethna/aethna;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/transsion/athena/aethna/aethna;->a(IZ)V

    :cond_3
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieve-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-Config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
