.class Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

.field final synthetic val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$1;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$1;->val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$1;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$1;->val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method
