.class Lcom/bytedance/sdk/openadsdk/activity/TKC$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$5;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$5;->Sj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$5;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    const-string v3, ""

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$5;->Sj:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(ZILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sU$sP;)V
    .locals 8

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/sU$sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/Yf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Yf;->Sj()I

    move-result v3

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/sU$sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/Yf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Yf;->sP()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$5;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/core/sU$sP;->sP:Z

    const-string v6, ""

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$5;->Sj:I

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(ZILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method
