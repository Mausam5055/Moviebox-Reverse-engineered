.class Lcom/mbridge/msdk/videocommon/net/a$b;
.super Lcom/mbridge/msdk/foundation/same/net/wrapper/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/videocommon/net/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/videocommon/net/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/videocommon/net/c;

.field final synthetic d:Lcom/mbridge/msdk/videocommon/net/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/videocommon/net/a;Ljava/lang/String;Lcom/mbridge/msdk/videocommon/net/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->d:Lcom/mbridge/msdk/videocommon/net/a;

    iput-object p2, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->c:Lcom/mbridge/msdk/videocommon/net/c;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/videocommon/setting/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mbridge/msdk/videocommon/net/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->c:Lcom/mbridge/msdk/videocommon/net/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/videocommon/net/c;->onFailed(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->c:Lcom/mbridge/msdk/videocommon/net/c;

    if-eqz v0, :cond_1

    const-string v1, "request error"

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/videocommon/net/c;->onFailed(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->d:Lcom/mbridge/msdk/videocommon/net/a;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1}, Lcom/mbridge/msdk/videocommon/net/a;->a(Lcom/mbridge/msdk/videocommon/net/a;IILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/videocommon/setting/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/net/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Lorg/json/JSONObject;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-string v0, "vtag_status"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/videocommon/setting/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1}, Lcom/mbridge/msdk/setting/h;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/mbridge/msdk/videocommon/net/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/setting/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v0, Lcom/mbridge/msdk/videocommon/net/a$b$a;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/videocommon/net/a$b$a;-><init>(Lcom/mbridge/msdk/videocommon/net/a$b;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/d;->a()Lcom/mbridge/msdk/foundation/controller/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/d;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->c:Lcom/mbridge/msdk/videocommon/net/c;

    if-eqz p1, :cond_4

    const-string v0, "request success"

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/videocommon/net/c;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->c:Lcom/mbridge/msdk/videocommon/net/c;

    if-eqz p1, :cond_4

    const-string v0, "data error"

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/videocommon/net/c;->onFailed(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/mbridge/msdk/videocommon/setting/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/net/a$b;->d:Lcom/mbridge/msdk/videocommon/net/a;

    const-string v0, ""

    const/4 v2, 0x3

    invoke-static {p1, v1, v2, v0}, Lcom/mbridge/msdk/videocommon/net/a;->a(Lcom/mbridge/msdk/videocommon/net/a;IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    invoke-static {}, Lcom/mbridge/msdk/videocommon/net/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method
