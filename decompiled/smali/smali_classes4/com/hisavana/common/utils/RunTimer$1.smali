.class Lcom/hisavana/common/utils/RunTimer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/common/utils/RunTimer;->runTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/common/utils/RunTimer;


# direct methods
.method constructor <init>(Lcom/hisavana/common/utils/RunTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/utils/RunTimer$1;->this$0:Lcom/hisavana/common/utils/RunTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/utils/RunTimer$1;->this$0:Lcom/hisavana/common/utils/RunTimer;

    invoke-static {v0}, Lcom/hisavana/common/utils/RunTimer;->access$000(Lcom/hisavana/common/utils/RunTimer;)Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/utils/RunTimer$1;->this$0:Lcom/hisavana/common/utils/RunTimer;

    invoke-static {v0}, Lcom/hisavana/common/utils/RunTimer;->access$000(Lcom/hisavana/common/utils/RunTimer;)Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;->isTimeOut()V

    :cond_0
    return-void
.end method
