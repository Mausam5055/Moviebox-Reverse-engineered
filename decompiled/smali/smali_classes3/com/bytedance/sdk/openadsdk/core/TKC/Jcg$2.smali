.class Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void
.end method
