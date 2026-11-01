.class public Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# direct methods
.method public static Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/sP;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    return-object v0

    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP/sP;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    :cond_2
    return-object v0
.end method
