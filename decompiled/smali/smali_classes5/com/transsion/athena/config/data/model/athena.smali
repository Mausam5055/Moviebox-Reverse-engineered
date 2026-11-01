.class public Lcom/transsion/athena/config/data/model/athena;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:J

.field private e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/athena;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/athena/config/data/model/athena;->c:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->f:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/athena;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/athena/config/data/model/athena;

    invoke-direct {p0}, Lcom/transsion/athena/config/data/model/athena;-><init>()V

    const-string v1, "npt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/athena/config/data/model/athena;->b:J

    const-string v1, "rt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/athena/config/data/model/athena;->c:I

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/athena/config/data/model/athena;->d:J

    const-string v1, "dim"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/athena/config/data/model/athena;->e:I

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/athena/config/data/model/athena;->h:Ljava/lang/String;

    const-string v1, "url_config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/athena/config/data/model/athena;->k:Ljava/lang/String;

    const-string v1, "opcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/athena/config/data/model/athena;->g:Ljava/lang/String;

    const-string v1, "interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/athena/config/data/model/athena;->i:I

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/athena/config/data/model/athena;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

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
.method public a(J)Lcom/transsion/athena/config/data/model/TidConfigBean;
    .locals 4

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/athena/config/data/model/athena;->a:I

    return-void
.end method

.method public a(Lcom/transsion/athena/config/data/model/TidConfigBean;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/transsion/athena/config/data/model/athena;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(JI)Z
    .locals 8

    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/athena;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/athena/config/data/model/athena;->b:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long p1, v6, p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    return v1

    :cond_1
    const-wide/16 p1, 0x0

    cmp-long p1, v4, p1

    const/4 p2, 0x0

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/transsion/athena/config/data/model/athena;->c:I

    if-ge p1, p3, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    return v1

    :cond_3
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/athena;->b:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1, p3, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long p1, v2, v4

    if-ltz p1, :cond_4

    cmp-long p1, v2, v6

    if-gez p1, :cond_4

    return v1

    :cond_4
    return p2

    :cond_5
    :goto_1
    return v1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/transsion/athena/config/data/model/athena;->a:I

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;
    .locals 3

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/athena/config/data/model/athena;->e:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/athena;->b:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/athena/config/data/model/athena;->c:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/athena/config/data/model/athena;->i:I

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/athena;->d:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/config/data/model/athena;->k:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/transsion/athena/config/data/model/athena;->e:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/athena/config/data/model/athena;->j:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/config/data/model/athena;->g:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/transsion/athena/config/data/model/athena;->i:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/athena/config/data/model/athena;->c:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/config/data/model/athena;->h:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/transsion/athena/config/data/model/athena;->c:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->f:Ljava/util/List;

    return-object v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/athena;->d:J

    return-wide v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/athena;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "npt"

    :try_start_1
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/athena;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "rt"

    :try_start_2
    iget v2, p0, Lcom/transsion/athena/config/data/model/athena;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "ver"

    :try_start_3
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/athena;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "dim"

    :try_start_4
    iget v2, p0, Lcom/transsion/athena/config/data/model/athena;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "url"

    :try_start_5
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/athena;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "url_config"

    :try_start_6
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/athena;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "interval"

    :try_start_7
    iget v2, p0, Lcom/transsion/athena/config/data/model/athena;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "offline"

    :try_start_8
    iget v2, p0, Lcom/transsion/athena/config/data/model/athena;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "opcode"

    :try_start_9
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/athena;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
