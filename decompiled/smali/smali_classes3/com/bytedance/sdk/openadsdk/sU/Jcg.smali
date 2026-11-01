.class public Lcom/bytedance/sdk/openadsdk/sU/Jcg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/sU/Jcg$Sj;
    }
.end annotation


# static fields
.field private static Sj:Lcom/bytedance/sdk/openadsdk/sU/Jcg$Sj;


# direct methods
.method public static Sj(Lcom/bytedance/sdk/openadsdk/sU/Jcg$Sj;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Jcg$Sj;

    return-void
.end method

.method public static Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p0, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Jcg$Sj;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    :cond_1
    return-void
.end method

.method public static Sj()Z
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Jcg$Sj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
