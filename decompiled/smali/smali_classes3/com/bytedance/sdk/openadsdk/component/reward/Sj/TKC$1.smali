.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    const-string v0, "landing_page"

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, "playable"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "endcard"

    goto :goto_0

    :cond_3
    const-string v0, "video_player"

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/common/Zq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->setDislikeSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj(IZ)V

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->uvD()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD()V

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(I)V

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)V

    :cond_0
    return-void
.end method

.method public sP(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj(IZ)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->EjP()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq()V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(I)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void
.end method
