.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj(Lt5/a;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:J

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

.field final synthetic sP:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;->Sj:J

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;->sP:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;->Sj:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;->sP:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;JJ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;->Sj:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;->sP:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;JJ)V

    return-void
.end method
