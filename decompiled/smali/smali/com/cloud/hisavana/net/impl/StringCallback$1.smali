.class Lcom/cloud/hisavana/net/impl/StringCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/net/impl/StringCallback;->n(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/net/impl/StringCallback;

.field final synthetic val$responseString:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/net/impl/StringCallback;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/net/impl/StringCallback$1;->this$0:Lcom/cloud/hisavana/net/impl/StringCallback;

    iput p2, p0, Lcom/cloud/hisavana/net/impl/StringCallback$1;->val$statusCode:I

    iput-object p3, p0, Lcom/cloud/hisavana/net/impl/StringCallback$1;->val$responseString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/StringCallback$1;->this$0:Lcom/cloud/hisavana/net/impl/StringCallback;

    iget v1, p0, Lcom/cloud/hisavana/net/impl/StringCallback$1;->val$statusCode:I

    iget-object v2, p0, Lcom/cloud/hisavana/net/impl/StringCallback$1;->val$responseString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/net/impl/StringCallback;->y(ILjava/lang/String;)V

    return-void
.end method
