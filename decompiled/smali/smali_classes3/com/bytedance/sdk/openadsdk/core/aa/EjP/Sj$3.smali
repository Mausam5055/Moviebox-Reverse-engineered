.class Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->tPD(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lu5/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TzV()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->WxP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lu5/b$b;

    move-result-object v0

    invoke-interface {v0}, Lu5/b$b;->Sj()V

    :cond_0
    return-void
.end method
