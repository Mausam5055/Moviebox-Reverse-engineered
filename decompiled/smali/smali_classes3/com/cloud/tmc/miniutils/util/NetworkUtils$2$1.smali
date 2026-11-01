.class Lcom/cloud/tmc/miniutils/util/NetworkUtils$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/NetworkUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$2;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/NetworkUtils$2;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$2$1;->this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniutils/util/Utils$Consumer;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->d()Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cloud/tmc/miniutils/util/Utils$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
