.class Lcom/bytedance/sdk/component/uA/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/uA/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/uA/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/uA/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/uA/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->Sj(Lcom/bytedance/sdk/component/uA/Sj;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->sP(Lcom/bytedance/sdk/component/uA/Sj;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->TKC(Lcom/bytedance/sdk/component/uA/Sj;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->Sj(Lcom/bytedance/sdk/component/uA/Sj;)F

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->sP(Lcom/bytedance/sdk/component/uA/Sj;)F

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->EjP(Lcom/bytedance/sdk/component/uA/Sj;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/uA/Sj;->Sj(Lcom/bytedance/sdk/component/uA/Sj;F)F

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->HiB(Lcom/bytedance/sdk/component/uA/Sj;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/uA/Sj;->sP(Lcom/bytedance/sdk/component/uA/Sj;F)F

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->vS(Lcom/bytedance/sdk/component/uA/Sj;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/uA/Sj;->Sj(Lcom/bytedance/sdk/component/uA/Sj;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/uA/Sj;->Sj(Lcom/bytedance/sdk/component/uA/Sj;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->Sj(Lcom/bytedance/sdk/component/uA/Sj;)F

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/Sj;->sP(Lcom/bytedance/sdk/component/uA/Sj;)F

    return-void
.end method

.method public Sj(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/uA/Sj;->Sj(Lcom/bytedance/sdk/component/uA/Sj;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/Sj$1;->Sj:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/component/uA/Sj;->Jcg(Lcom/bytedance/sdk/component/uA/Sj;)V

    return-void
.end method
