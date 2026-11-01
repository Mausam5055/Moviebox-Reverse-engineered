.class Lcom/cloud/tmc/miniutils/util/NetworkUtils$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/NetworkUtils;->removeOnWifiChangedConsumer(Lcom/cloud/tmc/miniutils/util/Utils$Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$consumer:Lcom/cloud/tmc/miniutils/util/Utils$Consumer;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/Utils$Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$3;->val$consumer:Lcom/cloud/tmc/miniutils/util/Utils$Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$3;->val$consumer:Lcom/cloud/tmc/miniutils/util/Utils$Consumer;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->k()V

    :cond_0
    return-void
.end method
