.class Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg$1;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Jcg$1;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void
.end method
