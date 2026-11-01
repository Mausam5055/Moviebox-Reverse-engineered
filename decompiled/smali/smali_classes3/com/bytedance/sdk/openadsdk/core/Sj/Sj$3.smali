.class Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/TKC;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void
.end method
