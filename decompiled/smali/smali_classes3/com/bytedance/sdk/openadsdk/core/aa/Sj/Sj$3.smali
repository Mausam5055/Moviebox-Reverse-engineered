.class Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$3;->Sj:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$3;->Sj:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Z)V

    return-void
.end method
