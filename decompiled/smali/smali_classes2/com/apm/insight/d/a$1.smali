.class final Lcom/apm/insight/d/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/d/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/b/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:J

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/util/Map;

.field private synthetic d:Ljava/util/Map;

.field private synthetic e:Ljava/util/Map;

.field private synthetic f:Lcom/apm/insight/b/h$a;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/b/h$a;)V
    .locals 0

    iput-wide p1, p0, Lcom/apm/insight/d/a$1;->a:J

    iput-object p3, p0, Lcom/apm/insight/d/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/apm/insight/d/a$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/apm/insight/d/a$1;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/apm/insight/d/a$1;->e:Ljava/util/Map;

    iput-object p7, p0, Lcom/apm/insight/d/a$1;->f:Lcom/apm/insight/b/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "filters"

    const-string v1, "custom_long"

    const-string v2, "custom"

    :try_start_0
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/apm/insight/d/a$1;->a:J

    iget-object v6, p0, Lcom/apm/insight/d/a$1;->b:Ljava/lang/String;

    new-instance v7, Lcom/apm/insight/entity/a;

    invoke-direct {v7}, Lcom/apm/insight/entity/a;-><init>()V

    const-string v8, "is_dart"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "crash_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "process_name"

    invoke-static {}, Lcom/apm/insight/l/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "data"

    invoke-virtual {v7, v4, v6}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apm/insight/l/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object v3

    sget-object v4, Lcom/apm/insight/CrashType;->DART:Lcom/apm/insight/CrashType;

    invoke-virtual {v3, v4, v7}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lcom/apm/insight/entity/a;)Lcom/apm/insight/entity/a;

    move-result-object v3

    iget-object v4, p0, Lcom/apm/insight/d/a$1;->c:Ljava/util/Map;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iget-object v5, p0, Lcom/apm/insight/d/a$1;->c:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    invoke-virtual {v3, v2, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/apm/insight/d/a$1;->d:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    iget-object v4, p0, Lcom/apm/insight/d/a$1;->d:Ljava/util/Map;

    invoke-static {v2, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    invoke-virtual {v3, v1, v2}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/apm/insight/d/a$1;->e:Ljava/util/Map;

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v0, v1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/apm/insight/d/a$1;->e:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_5
    invoke-static {}, Lcom/apm/insight/k/d;->a()Lcom/apm/insight/k/d;

    move-result-object v0

    invoke-virtual {v3}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/k/d;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
