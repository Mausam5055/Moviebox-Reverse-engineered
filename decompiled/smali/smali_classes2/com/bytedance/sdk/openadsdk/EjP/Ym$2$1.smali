.class Lcom/bytedance/sdk/openadsdk/EjP/Ym$2$1;
.super Lcom/bytedance/sdk/component/Jcg/Sj/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 1

    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->sP:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->sP:I

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->Sj:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Ym;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "LandingPageLog"

    const-string v0, "TTWebViewClient : onPageFinished"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method
