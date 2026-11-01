.class Lcom/bytedance/adsdk/sP/HiB/wE;
.super Ljava/lang/Object;


# direct methods
.method static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/Sj/sP/uA;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj()F

    move-result v3

    sget-object v4, Lcom/bytedance/adsdk/sP/HiB/ley;->Sj:Lcom/bytedance/adsdk/sP/HiB/ley;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/adsdk/sP/HiB/sU;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;FLcom/bytedance/adsdk/sP/HiB/Ei;ZZ)Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object p0

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/uA;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/uA;-><init>(Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/Jcg/Sj;)V

    return-object v0
.end method
