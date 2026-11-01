.class public Lcom/bytedance/sdk/openadsdk/core/Dq/vS;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;


# instance fields
.field private final EjP:Ljava/lang/Runnable;

.field private final Sj:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private final TKC:Lcom/bytedance/sdk/component/Dq/Dq;

.field private sP:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$1;

    const-string p2, "dynamic_render_template"

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->TKC:Lcom/bytedance/sdk/component/Dq/Dq;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->EjP:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->sP:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/vS;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->EjP:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->sP:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->TKC:Lcom/bytedance/sdk/component/Dq/Dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public sP()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->sP()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;->EjP:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
