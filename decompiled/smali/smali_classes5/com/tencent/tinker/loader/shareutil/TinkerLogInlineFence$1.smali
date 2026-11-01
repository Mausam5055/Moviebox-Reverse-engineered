.class Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->printPendingLogs(Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$logImp:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;->val$logImp:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->access$000()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->access$100()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;

    invoke-direct {v5, p0, v0, v3}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;-><init>(Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;Ljava/text/SimpleDateFormat;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
