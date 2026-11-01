.class Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/vS/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->vS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->sP(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->TKC()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->TKC(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->sP(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->setBgColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->sP()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->setBgMaterialCenterCalcColor(Ljava/util/Map;)V

    :cond_1
    return-void
.end method
