.class public Lcom/transsion/json/b/i;
.super Lcom/transsion/json/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/json/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/json/h;->x()Lcom/transsion/json/q;

    move-result-object v1

    check-cast p1, Ljava/util/Map;

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/json/h;->H()Lcom/transsion/json/u;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    move-object v6, v5

    :goto_1
    invoke-virtual {v1, v6}, Lcom/transsion/json/q;->a(Ljava/lang/String;)Lcom/transsion/json/q;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    move-object v6, v5

    :goto_2
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/transsion/json/h;->o(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/transsion/json/h;->a(Lcom/transsion/json/d;Ljava/lang/Object;)Lcom/transsion/json/b/n;

    move-result-object v6

    instance-of v7, v6, Lcom/transsion/json/b/g;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lcom/transsion/json/b/g;

    invoke-interface {v7}, Lcom/transsion/json/b/g;->a()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/json/u;->e()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/json/h;->E()V

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/json/u;->d()V

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/transsion/json/h;->u(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/transsion/json/h;->u(Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/transsion/json/u;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v5}, Lcom/transsion/json/u;->b(Ljava/lang/String;)V

    :goto_4
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/transsion/json/b/n;->a(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1}, Lcom/transsion/json/q;->d()Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/json/h;->D()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_5
    new-instance v0, Lcom/transsion/json/k;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%s: Error while trying to serialize."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
