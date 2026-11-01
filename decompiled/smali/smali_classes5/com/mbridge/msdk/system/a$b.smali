.class Lcom/mbridge/msdk/system/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/system/a;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/mbridge/msdk/system/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/system/a;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iput-boolean p2, p0, Lcom/mbridge/msdk/system/a$b;->a:Z

    iput-wide p3, p0, Lcom/mbridge/msdk/system/a$b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "com.mbridge.msdk"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iget-object v2, v2, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/r0;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    new-instance v3, Lcom/mbridge/msdk/system/b;

    invoke-direct {v3}, Lcom/mbridge/msdk/system/b;-><init>()V

    invoke-static {v2, v3}, Lcom/mbridge/msdk/system/a;->access$002(Lcom/mbridge/msdk/system/a;Lcom/mbridge/msdk/system/b;)Lcom/mbridge/msdk/system/b;

    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    invoke-static {v2}, Lcom/mbridge/msdk/system/a;->access$000(Lcom/mbridge/msdk/system/a;)Lcom/mbridge/msdk/system/b;

    move-result-object v2

    sget-object v3, Lcom/mbridge/msdk/system/a;->map:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/system/b;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/d;->a()Lcom/mbridge/msdk/foundation/controller/d;

    move-result-object v2

    sget-object v3, Lcom/mbridge/msdk/system/a;->map:Ljava/util/Map;

    iget-object v4, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iget-object v4, v4, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/foundation/controller/d;->a(Ljava/util/Map;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    sget-object v3, Lcom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    iput-object v3, v2, Lcom/mbridge/msdk/system/a;->STATUS:Lcom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    invoke-static {v2}, Lcom/mbridge/msdk/system/a;->access$000(Lcom/mbridge/msdk/system/a;)Lcom/mbridge/msdk/system/b;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iget-object v3, v3, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/system/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/f;->a()Lcom/mbridge/msdk/foundation/same/report/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/report/f;->c()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->f()V

    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    invoke-static {v2}, Lcom/mbridge/msdk/system/a;->access$100(Lcom/mbridge/msdk/system/a;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/e0;->a()Lcom/mbridge/msdk/foundation/tools/e0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/tools/e0;->c()V

    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iget-object v2, v2, Lcom/mbridge/msdk/system/a;->sdkInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iget-boolean v2, v3, Lcom/mbridge/msdk/system/a;->initCallbacked:Z

    if-nez v2, :cond_0

    iput-boolean v1, v3, Lcom/mbridge/msdk/system/a;->initCallbacked:Z

    iget-boolean v4, p0, Lcom/mbridge/msdk/system/a$b;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/mbridge/msdk/system/a$b;->b:J

    sub-long/2addr v5, v7

    const-string v8, ""

    const/4 v7, 0x1

    invoke-static/range {v3 .. v8}, Lcom/mbridge/msdk/system/a;->access$200(Lcom/mbridge/msdk/system/a;ZJZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->c()Lcom/mbridge/msdk/foundation/same/report/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/report/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iget-object v2, v2, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iget-object v3, v2, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Application;

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/system/a;->registerActivityLifecycleListener(Landroid/app/Application;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_2
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iget-object v2, v2, Lcom/mbridge/msdk/system/a;->sdkInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    iget-boolean v2, v4, Lcom/mbridge/msdk/system/a;->initCallbacked:Z

    if-nez v2, :cond_1

    iput-boolean v1, v4, Lcom/mbridge/msdk/system/a;->initCallbacked:Z

    iget-boolean v5, p0, Lcom/mbridge/msdk/system/a$b;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/mbridge/msdk/system/a$b;->b:J

    sub-long v6, v1, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/mbridge/msdk/system/a;->access$200(Lcom/mbridge/msdk/system/a;ZJZLjava/lang/String;)V

    :cond_1
    :goto_3
    return-void
.end method
