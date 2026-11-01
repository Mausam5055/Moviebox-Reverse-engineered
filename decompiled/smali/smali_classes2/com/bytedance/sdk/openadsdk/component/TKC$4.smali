.class Lcom/bytedance/sdk/openadsdk/component/TKC$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/TKC;->vS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC$4;->Sj:Lcom/bytedance/sdk/openadsdk/component/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC$4;->Sj:Lcom/bytedance/sdk/openadsdk/component/TKC;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/Sj;->sP(Landroid/view/View;)V

    :cond_0
    return-void
.end method
