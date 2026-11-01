.class Lcom/cloud/sdk/commonutil/util/Preconditions$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# direct methods
.method constructor <init>(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/sdk/commonutil/util/Preconditions$2;->val$callback:Lcom/cloud/sdk/commonutil/util/Preconditions$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/util/Preconditions$2;->val$callback:Lcom/cloud/sdk/commonutil/util/Preconditions$a;

    invoke-interface {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions$a;->onRun()V

    return-void
.end method
