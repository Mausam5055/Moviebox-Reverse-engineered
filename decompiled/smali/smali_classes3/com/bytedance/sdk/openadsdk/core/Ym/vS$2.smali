.class Lcom/bytedance/sdk/openadsdk/core/Ym/vS$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$2;->Sj:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$2;->Sj:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Z)V

    return-void
.end method
