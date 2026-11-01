.class Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/utils/LqL$Sj;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/LqL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/component/Dq/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Dq/Sj/Sj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;->sP:Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;->Sj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method
