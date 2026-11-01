.class Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->Sj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->Sj:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->TKC(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->Sj:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V

    return-void

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V

    :cond_2
    return-void
.end method
