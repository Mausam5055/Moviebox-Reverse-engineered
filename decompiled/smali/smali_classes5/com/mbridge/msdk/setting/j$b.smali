.class Lcom/mbridge/msdk/setting/j$b;
.super Lcom/mbridge/msdk/foundation/same/net/wrapper/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/setting/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mbridge/msdk/setting/j;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/setting/j;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/setting/j$b;->e:Lcom/mbridge/msdk/setting/j;

    iput-object p2, p0, Lcom/mbridge/msdk/setting/j$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/setting/j$b;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/mbridge/msdk/setting/j$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/setting/j$b;->e:Lcom/mbridge/msdk/setting/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/mbridge/msdk/setting/j;->a(Lcom/mbridge/msdk/setting/j;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/mbridge/msdk/setting/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->s:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v0

    iget v1, v0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->v:I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v0

    iget v1, v0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mbridge/msdk/foundation/same/net/utils/d;->w:I

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/setting/j$b;->e:Lcom/mbridge/msdk/setting/j;

    iget-object v1, p0, Lcom/mbridge/msdk/setting/j$b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/setting/j$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/setting/j$b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mbridge/msdk/setting/j;->a(Lcom/mbridge/msdk/setting/j;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/setting/j$b;->e:Lcom/mbridge/msdk/setting/j;

    invoke-static {v0}, Lcom/mbridge/msdk/setting/j;->a(Lcom/mbridge/msdk/setting/j;)V

    invoke-static {}, Lcom/mbridge/msdk/setting/j;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get app setting error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "web_env_url"

    const-string v1, "mraid_js"

    const-string v2, "hst_st"

    const-string v3, "hst_st_t"

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/mbridge/msdk/setting/j$b;->e:Lcom/mbridge/msdk/setting/j;

    const-string v7, ""

    invoke-static {v6, v5, v4, v7}, Lcom/mbridge/msdk/setting/j;->a(Lcom/mbridge/msdk/setting/j;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {}, Lcom/mbridge/msdk/setting/j;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "vtag_status"

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/setting/j$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_0

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, p1}, Lcom/mbridge/msdk/setting/h;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    invoke-static {}, Lcom/mbridge/msdk/setting/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/mbridge/msdk/setting/k;->a(Lorg/json/JSONObject;)V

    const-string v4, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mbridge/msdk/foundation/same/net/utils/d;->s:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v2

    iget-object v2, v2, Lcom/mbridge/msdk/foundation/same/net/utils/d;->m:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v3

    iget-object v3, v3, Lcom/mbridge/msdk/foundation/same/net/utils/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_2
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/setting/j$b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/setting/h;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->j()V

    invoke-static {}, Lcom/mbridge/msdk/setting/k;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/mbridge/msdk/setting/util/a;->a()Lcom/mbridge/msdk/setting/util/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/setting/j$b;->c:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/setting/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_5
    invoke-static {}, Lcom/mbridge/msdk/setting/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/mbridge/msdk/setting/util/b;->c()Lcom/mbridge/msdk/setting/util/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/setting/j$b;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/mbridge/msdk/setting/util/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/setting/j$b;->e:Lcom/mbridge/msdk/setting/j;

    iget-object v0, p0, Lcom/mbridge/msdk/setting/j$b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/mbridge/msdk/setting/j$b;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/setting/j;->a(Lcom/mbridge/msdk/setting/j;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/setting/j$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/setting/h;->h(Ljava/lang/String;)V

    :goto_4
    iget-object p1, p0, Lcom/mbridge/msdk/setting/j$b;->e:Lcom/mbridge/msdk/setting/j;

    invoke-static {p1}, Lcom/mbridge/msdk/setting/j;->a(Lcom/mbridge/msdk/setting/j;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :goto_5
    invoke-static {}, Lcom/mbridge/msdk/setting/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method
