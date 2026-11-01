.class public Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HiB"
.end annotation


# instance fields
.field private EjP:Z

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

.field private TKC:J

.field private sP:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/Sj;JJZ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;->sP:J

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;->TKC:J

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;->EjP:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;->EjP:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;->sP:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;->TKC:J

    div-long/2addr v5, v3

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sP(Lcom/bytedance/sdk/openadsdk/utils/Sj;)V

    return-void
.end method
