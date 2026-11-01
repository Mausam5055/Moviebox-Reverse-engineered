.class Lcom/transsion/push/utils/PushIml$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$message:Lcom/transsion/push/bean/PushMessage;


# direct methods
.method constructor <init>(Lcom/transsion/push/bean/PushMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/utils/PushIml$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "message"

    iget-object v2, p0, Lcom/transsion/push/utils/PushIml$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    invoke-static {v2}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/push/utils/PushIml$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    iget-object v1, v1, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    const-class v2, Lcom/transsion/pushui/activity/TransparentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/push/utils/PushIml$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    iget-wide v3, v0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v5, v0, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v6, v0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    const-string v7, "success"

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackMessage(JILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
