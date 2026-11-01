.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# direct methods
.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
