.class Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/Wjd$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->TKC:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->EjP:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    return-void
.end method

.method public Sj(Landroid/view/View;Z)V
    .locals 6

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->TKC:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->EjP:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    :cond_1
    return-void
.end method

.method public Sj(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method public sP()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method
