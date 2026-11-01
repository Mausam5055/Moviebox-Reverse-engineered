.class Lcom/hisavana/common/base/BaseNative$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/common/base/BaseNative;

.field final synthetic val$nativeInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hisavana/common/base/BaseNative;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNative$1;->this$0:Lcom/hisavana/common/base/BaseNative;

    iput-object p2, p0, Lcom/hisavana/common/base/BaseNative$1;->val$nativeInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative$1;->this$0:Lcom/hisavana/common/base/BaseNative;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseNative$1;->val$nativeInfoList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/hisavana/common/base/BaseNative;->access$001(Lcom/hisavana/common/base/BaseNative;Ljava/util/List;)V

    return-void
.end method
