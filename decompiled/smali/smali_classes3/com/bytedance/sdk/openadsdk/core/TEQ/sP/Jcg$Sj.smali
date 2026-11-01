.class Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sj"
.end annotation


# instance fields
.field Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

.field private TKC:I

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;ILcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;->TKC:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;->TKC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "real time out"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->vS()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x89

    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
