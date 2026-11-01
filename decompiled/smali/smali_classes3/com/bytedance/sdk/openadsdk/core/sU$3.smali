.class Lcom/bytedance/sdk/openadsdk/core/sU$3;
.super Lcom/bytedance/sdk/component/Jcg/Sj/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/sU;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/sU;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/sU;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$3$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU$3;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$3$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$3$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU$3;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$3$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$3$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU$3;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/sU$3$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sU$3$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/sU$3;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method
