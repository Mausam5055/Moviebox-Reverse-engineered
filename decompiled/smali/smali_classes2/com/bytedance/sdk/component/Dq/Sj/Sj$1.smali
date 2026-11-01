.class Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/os/Handler;

.field final synthetic TKC:Lcom/bytedance/sdk/component/Dq/Sj/Sj;

.field final synthetic sP:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Dq/Sj/Sj;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;->TKC:Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;->Sj:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;->sP:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;->TKC:Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;->Sj:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$1;->sP:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Dq/Sj/Sj;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method
