.class Lcom/bytedance/sdk/openadsdk/core/Ym/vS$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:J

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$10;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$10;->Sj:J

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$10;->sP:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$10;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$10;->Sj:J

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$10;->sP:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP(JZ)V

    return-void
.end method
