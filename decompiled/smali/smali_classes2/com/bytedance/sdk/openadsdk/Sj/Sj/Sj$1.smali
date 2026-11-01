.class Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$1;->Sj:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$1;->sP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$1;->Sj:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$1;->sP:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onError(ILjava/lang/String;)V

    return-void
.end method
