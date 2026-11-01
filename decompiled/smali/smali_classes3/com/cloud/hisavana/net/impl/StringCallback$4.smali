.class Lcom/cloud/hisavana/net/impl/StringCallback$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/net/impl/StringCallback;->i(I[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/net/impl/StringCallback;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/net/impl/StringCallback;ILjava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/net/impl/StringCallback$4;->this$0:Lcom/cloud/hisavana/net/impl/StringCallback;

    iput p2, p0, Lcom/cloud/hisavana/net/impl/StringCallback$4;->val$statusCode:I

    iput-object p3, p0, Lcom/cloud/hisavana/net/impl/StringCallback$4;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/StringCallback$4;->this$0:Lcom/cloud/hisavana/net/impl/StringCallback;

    iget v1, p0, Lcom/cloud/hisavana/net/impl/StringCallback$4;->val$statusCode:I

    iget-object v2, p0, Lcom/cloud/hisavana/net/impl/StringCallback$4;->val$e:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/cloud/hisavana/net/impl/StringCallback;->x(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
