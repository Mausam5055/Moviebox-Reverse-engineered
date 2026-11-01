.class public Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# direct methods
.method public static Sj(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p2, p3}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/EjP/vS;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->Sj()Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    move-result-object p3

    if-nez p3, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->Sj()Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p3, Lcom/bytedance/adsdk/ugeno/EjP/EjP/sP;

    invoke-direct {p3, p0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/sP;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    invoke-virtual {p3, p2}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/vS;)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj()V

    return-object p3

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "global"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->HiB()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/adsdk/ugeno/EjP/TEQ;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/Jcg;

    move-result-object p3

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->sP()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/adsdk/ugeno/EjP/TEQ;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/Jcg;

    move-result-object p3

    :goto_1
    if-nez p3, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p3, p0}, Lcom/bytedance/adsdk/ugeno/EjP/Jcg;->Sj(Landroid/content/Context;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/vS;)V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj()V

    return-object p0

    :cond_7
    :goto_2
    return-object v0
.end method
