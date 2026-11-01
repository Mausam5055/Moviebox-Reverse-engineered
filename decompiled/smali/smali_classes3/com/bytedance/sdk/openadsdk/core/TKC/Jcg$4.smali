.class Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    if-nez p1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_reward_full_mute"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_reward_full_unmute"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    move-result-object v2

    const-string v3, "vastBannerBackupViewClick"

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->vS(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Jcg(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Dq(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->uA(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Ym(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->TEQ(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Dq(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->aa(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->TEQ(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->uA(J)V

    :cond_2
    return-void
.end method
