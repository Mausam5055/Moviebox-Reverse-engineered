.class Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$2;->val$type:I

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->b(I)V

    return-void
.end method
