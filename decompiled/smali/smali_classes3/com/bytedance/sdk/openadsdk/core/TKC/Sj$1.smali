.class Lcom/bytedance/sdk/openadsdk/core/TKC/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->TKC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void
.end method
