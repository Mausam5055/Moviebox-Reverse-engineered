.class Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->k(ILcom/hisavana/mediation/bean/CloudControlConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/mediation/config/CloudControlConfigSync$3;

.field final synthetic val$cloudConfig:Lcom/hisavana/mediation/bean/CloudControlConfig;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/config/CloudControlConfigSync$3;Lcom/hisavana/mediation/bean/CloudControlConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;->this$0:Lcom/hisavana/mediation/config/CloudControlConfigSync$3;

    iput-object p2, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;->val$cloudConfig:Lcom/hisavana/mediation/bean/CloudControlConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;->val$cloudConfig:Lcom/hisavana/mediation/bean/CloudControlConfig;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->e(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    const-string v3, "sdk_init"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CloudControlConfigSync --> \u4fdd\u5b58\u672c\u5730\u6570\u636e\u5931\u8d25 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_1
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
