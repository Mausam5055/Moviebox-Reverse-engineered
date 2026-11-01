.class Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->TEQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB$1;->Sj:Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Dq;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB$1;->Sj:Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB$1;->Sj:Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->EjP()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB$1;->Sj:Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/HiB;->Jcg()V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->TKC()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->TKC()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;->sP()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/dx;->Sj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->TKC()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->TKC()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;->EjP()V

    :cond_0
    return-void
.end method
