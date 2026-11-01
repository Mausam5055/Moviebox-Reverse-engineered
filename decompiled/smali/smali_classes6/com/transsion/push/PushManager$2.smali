.class Lcom/transsion/push/PushManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/PushManager;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$isTest:Z


# direct methods
.method constructor <init>(Lcom/transsion/push/PushManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/PushManager$2;->this$0:Lcom/transsion/push/PushManager;

    iput-object p2, p0, Lcom/transsion/push/PushManager$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/push/PushManager$2;->val$appKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/transsion/push/PushManager$2;->val$isTest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->init()V

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_app_id"

    iget-object v2, p0, Lcom/transsion/push/PushManager$2;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_app_key"

    iget-object v2, p0, Lcom/transsion/push/PushManager$2;->val$appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/push/PushManager$2;->val$isTest:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "push_is_test_env"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->o()Z

    move-result v0

    invoke-static {v0}, Lqk/a;->f(Z)V

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackInit()V

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "start update token: "

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/utils/FirebaseUtils;->c()V

    return-void
.end method
