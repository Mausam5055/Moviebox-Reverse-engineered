.class Lcom/transsion/push/PushManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/PushManager;


# direct methods
.method constructor <init>(Lcom/transsion/push/PushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/PushManager$4;->this$0:Lcom/transsion/push/PushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->init()V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->n()V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->o()Z

    move-result v0

    invoke-static {v0}, Lqk/a;->f(Z)V

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackInit()V

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "start update token 2: "

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/utils/FirebaseUtils;->c()V

    return-void
.end method
