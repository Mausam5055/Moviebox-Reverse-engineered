.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Z

    move-result v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;ZI)V

    return-void
.end method
