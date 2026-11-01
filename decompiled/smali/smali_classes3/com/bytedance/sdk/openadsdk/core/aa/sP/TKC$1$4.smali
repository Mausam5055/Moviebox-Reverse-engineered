.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj(Lt5/a;Ly5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ly5/a;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;Ly5/a;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->Sj:Ly5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->Sj:Ly5/a;

    invoke-virtual {v0}, Ly5/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->Sj:Ly5/a;

    invoke-virtual {v1}, Ly5/a;->d()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->wE()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, -0x3ec

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->LD(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->JcM(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->fF(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/ref/WeakReference;Z)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Z)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->EjP()V

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->WMZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Mts(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP()V

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->FPG(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lu5/b$b;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->jb(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lu5/b$b;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Wjd(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xD(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Fm(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lc6/a;->a(JJ)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lu5/b$b;->sP(JI)V

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->kF(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->kF(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->wE()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->kF(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu5/b$a;

    invoke-interface {v2, v0, v1}, Lu5/b$a;->Sj(II)V

    :cond_4
    return-void
.end method
