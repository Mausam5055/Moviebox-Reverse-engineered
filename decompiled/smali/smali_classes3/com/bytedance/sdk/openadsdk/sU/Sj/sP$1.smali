.class Lcom/bytedance/sdk/openadsdk/sU/Sj/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/aa/vS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->Jcg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;)Lcom/bytedance/sdk/openadsdk/aa/vS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;)Lcom/bytedance/sdk/openadsdk/aa/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/aa/vS;->Sj()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;Z)Z

    return-void
.end method
