.class public Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;
.super Ljava/lang/Object;


# static fields
.field public static Sj:Z = false

.field public static TKC:Ljava/lang/String; = "engaged_view"

.field public static sP:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj()V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)V
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj(Z)V

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->VnJ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->YLl()Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP()V

    return-void
.end method
