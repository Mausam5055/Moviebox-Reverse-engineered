.class Lcom/cloud/hisavana/net/impl/StringCallback$3;
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

.field final synthetic val$error:Ljava/lang/Throwable;

.field final synthetic val$responseString:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/net/impl/StringCallback;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/net/impl/StringCallback$3;->this$0:Lcom/cloud/hisavana/net/impl/StringCallback;

    iput p2, p0, Lcom/cloud/hisavana/net/impl/StringCallback$3;->val$statusCode:I

    iput-object p3, p0, Lcom/cloud/hisavana/net/impl/StringCallback$3;->val$responseString:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/hisavana/net/impl/StringCallback$3;->val$error:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/StringCallback$3;->this$0:Lcom/cloud/hisavana/net/impl/StringCallback;

    iget v1, p0, Lcom/cloud/hisavana/net/impl/StringCallback$3;->val$statusCode:I

    iget-object v2, p0, Lcom/cloud/hisavana/net/impl/StringCallback$3;->val$responseString:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/hisavana/net/impl/StringCallback$3;->val$error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/net/impl/StringCallback;->x(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
