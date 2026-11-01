.class Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->unregisterListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

.field final synthetic val$listener:Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->val$listener:Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->a(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->a(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->val$listener:Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->a(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->d()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
