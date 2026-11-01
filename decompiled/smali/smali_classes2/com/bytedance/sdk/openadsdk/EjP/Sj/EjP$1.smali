.class final Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/util/List;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/util/List;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP$1;->Sj:Ljava/util/List;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP$1;->sP:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP$1;->TKC:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP$1;->Sj:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP$1;->sP:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP$1;->TKC:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/sP;->Sj(Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;)V

    return-void
.end method
