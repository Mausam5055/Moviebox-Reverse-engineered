.class Lcom/transsion/push/config/PushRepository$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/config/PushRepository;->d(Lcom/transsion/push/IClientIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/config/PushRepository;

.field final synthetic val$listener:Lcom/transsion/push/IClientIdListener;


# direct methods
.method constructor <init>(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    iput-object p2, p0, Lcom/transsion/push/config/PushRepository$4;->val$listener:Lcom/transsion/push/IClientIdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    invoke-static {v0}, Lcom/transsion/push/config/PushRepository;->a(Lcom/transsion/push/config/PushRepository;)Lcom/transsion/push/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/a;->f()Lcom/transsion/push/bean/ConfigInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$4;->val$listener:Lcom/transsion/push/IClientIdListener;

    const-string v1, "get client id fail"

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/transsion/push/IClientIdListener;->onFail(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get config response data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/push/bean/ConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    iget-boolean v2, v0, Lcom/transsion/push/bean/ConfigInfo;->nextWithApp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "push_is_next_with_app"

    invoke-virtual {v1, v3, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    iget-boolean v2, v0, Lcom/transsion/push/bean/ConfigInfo;->nextWithDetail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "push_is_report_detail"

    invoke-virtual {v1, v3, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    const-string v2, "push_client_id"

    iget-object v3, v0, Lcom/transsion/push/bean/ConfigInfo;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->destroyAppIds:[Ljava/lang/String;

    iget v2, v0, Lcom/transsion/push/bean/ConfigInfo;->syncInfoInterval:I

    invoke-static {v1, v2}, Lcom/transsion/push/utils/z;->f([Ljava/lang/String;I)V

    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->configRefresh:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->config:Lcom/transsion/push/bean/ConfigInfo$Config;

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/transsion/push/bean/ConfigInfo$Config;->version:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    invoke-virtual {v2, v1}, Lcom/transsion/push/config/PushRepository;->saveConfig(Lcom/transsion/push/bean/ConfigInfo$Config;)V

    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    iget-object v2, v0, Lcom/transsion/push/bean/ConfigInfo;->config:Lcom/transsion/push/bean/ConfigInfo$Config;

    iget v2, v2, Lcom/transsion/push/bean/ConfigInfo$Config;->destroy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "push_self_destroying"

    invoke-virtual {v1, v3, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->whitelistRefresh:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->whitelist:Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    if-eqz v1, :cond_3

    iget v2, v1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->version:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/push/config/PushRepository$4;->this$0:Lcom/transsion/push/config/PushRepository;

    invoke-virtual {v2, v1}, Lcom/transsion/push/config/PushRepository;->saveWhiteList(Lcom/transsion/push/bean/ConfigInfo$Whitelist;)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$4;->val$listener:Lcom/transsion/push/IClientIdListener;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/transsion/push/bean/ConfigInfo;->clientId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/transsion/push/IClientIdListener;->onSuccess(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
