.class Lcom/bytedance/sdk/openadsdk/core/Ym/vS$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

.field final synthetic sP:F


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;ZF)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$6;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$6;->Sj:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$6;->sP:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$6;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$6;->Sj:Z

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$6;->sP:F

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;ZF)V

    return-void
.end method
