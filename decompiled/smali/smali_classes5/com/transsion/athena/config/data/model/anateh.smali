.class public Lcom/transsion/athena/config/data/model/anateh;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/athena/config/data/model/enatha;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/athena/config/data/model/enatha;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/enatha;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/anateh;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/athena/config/data/model/anateh;

    invoke-direct {p0}, Lcom/transsion/athena/config/data/model/anateh;-><init>()V

    const-string v1, "global_config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/enatha;->a(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/enatha;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object p0

    :goto_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const-string v0, "fromJSON"

    invoke-static {v0, p0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/transsion/athena/config/data/model/athena;
    .locals 3

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/athena/config/data/model/enatha;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()Lcom/transsion/athena/config/data/model/enatha;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v1, v4, v5}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v0, v4, v5}, Lcom/transsion/athena/config/data/model/enatha;->f(J)V

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/config/data/model/enatha;->c(J)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "global_config"

    :try_start_1
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/enatha;->j()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const-string v1, "toJSON"

    invoke-static {v1, v0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method
