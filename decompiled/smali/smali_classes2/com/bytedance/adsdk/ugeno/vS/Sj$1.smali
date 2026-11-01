.class Lcom/bytedance/adsdk/ugeno/vS/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/vS/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    const/16 v1, 0x200

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getAdapter()Lcom/bytedance/adsdk/ugeno/Dq/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0, v3, v3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    return-void
.end method
