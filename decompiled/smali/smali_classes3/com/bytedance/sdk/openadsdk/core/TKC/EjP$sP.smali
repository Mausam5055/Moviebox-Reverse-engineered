.class Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "sP"
.end annotation


# instance fields
.field Sj:Z

.field TKC:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;",
            ">;"
        }
    .end annotation
.end field

.field sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(ZLcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V
    .locals 1

    const-string v0, "ReportWindowFocusChangedAdShow"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->Sj:Z

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->TKC:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->TKC:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->TKC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->Sj:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_0
    return-void
.end method
