.class Lcom/bytedance/sdk/openadsdk/core/Ym/vS$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/view/View;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/View;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

.field final synthetic sP:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/view/View;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$4;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$4;->Sj:Landroid/view/View;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$4;->sP:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$4;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$4;->Sj:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$4;->sP:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/view/View;Ljava/util/Set;)V

    return-void
.end method
