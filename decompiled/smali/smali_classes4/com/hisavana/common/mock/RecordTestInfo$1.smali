.class Lcom/hisavana/common/mock/RecordTestInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/common/mock/RecordTestInfo$1;->val$msg:Ljava/lang/String;

    iput p2, p0, Lcom/hisavana/common/mock/RecordTestInfo$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/mock/RecordTestInfo;->access$000()Lcom/hisavana/common/mock/RecordTestInfo$LogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/common/mock/RecordTestInfo$1;->val$msg:Ljava/lang/String;

    iget v2, p0, Lcom/hisavana/common/mock/RecordTestInfo$1;->val$code:I

    invoke-interface {v0, v1, v2}, Lcom/hisavana/common/mock/RecordTestInfo$LogListener;->log(Ljava/lang/String;I)V

    return-void
.end method
