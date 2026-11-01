.class public Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;
.super Ljava/lang/Object;


# static fields
.field private static final Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz5/a;",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    return-void
.end method

.method private static EjP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static EjP(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 9

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;->Sj(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;->sP(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;->Sj(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->HiB()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;->sP(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "endcard_skip"

    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "TTAD.VideoEventManager"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static HiB(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 7

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->uA()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v2

    new-instance v4, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;->Sj(J)V

    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;->sP(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->uA()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;->Sj(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    if-lez v0, :cond_4

    :try_start_0
    const-string v2, "play_time"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TTAD.VideoEventManager"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v2, v1, v0, p0, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    const-string p0, "play_buffer"

    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)J
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->TKC(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    const-string p1, "play_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "video_resolution"

    invoke-virtual {p1}, Ly5/b;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "video_size"

    invoke-virtual {p1}, Ly5/b;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "video_url"

    invoke-virtual {p1}, Ly5/b;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "player_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "video_encode_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "dp_creative_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "TTAD.VideoEventManager"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static Sj(Landroid/content/Context;Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 6

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    if-eqz p1, :cond_5

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Ym()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;->Sj(I)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v2

    invoke-interface {v2, p1}, Lx5/b;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;->sP(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->Sj()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    iget p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    if-lez p1, :cond_4

    :try_start_0
    const-string v2, "play_time"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "TTAD.VideoEventManager"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    const-string p0, "feed_play"

    invoke-static {v2, p0, p3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj<",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_error"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->HiB()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "customer_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    move-object v4, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;

    invoke-direct {v5, p0, v4, p3, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;Lorg/json/JSONObject;)V

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    const-string p0, "pangle_video_play_state"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lz5/a;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 11

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lx5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    move v9, v0

    :goto_0
    new-instance v10, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object v0, v10

    move-object v3, v7

    move v4, v9

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;-><init>(JLjava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v7, v9, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget v2, p2, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    if-lez v2, :cond_2

    const-string v3, "play_time"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "is_mute"

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Dq()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v3, "TTAD.VideoEventManager"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    goto :goto_4

    :cond_3
    move v8, v1

    :goto_4
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    const-string p0, "play_start"

    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;)V

    :cond_4
    :goto_5
    return-void
.end method

.method public static Sj(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 9

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Jcg;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Jcg;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Jcg;->Sj(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Jcg;->sP(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_4

    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_pause"

    invoke-static {v7, p1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static Sj(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;->sP(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;->Sj(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Jcg()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;->Sj(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Dq()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;->sP(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_3

    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_break"

    invoke-static {v7, p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static Sj(Lz5/a;ZLjava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result p0

    invoke-static {v1, v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    :try_start_0
    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    if-lez v0, :cond_3

    const-string v2, "play_time"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "is_mute"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "from"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "pag_json_data"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p2, "TTAD.VideoEventManager"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    const/4 v0, 0x0

    invoke-direct {p2, v1, p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    const-string p0, "mute_state_change"

    invoke-static {p2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private static TKC(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dx()Ly5/b;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sU()Ly5/b;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ly5/b;->K()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public static TKC(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v5

    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->aa()Ly5/a;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;-><init>(Ly5/a;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->Sj(J)V

    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->sP(J)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, v1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v5, ""

    const-string v6, "TTAD.VideoEventManager"

    if-lez v1, :cond_3

    :try_start_0
    const-string v8, "play_time"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v6, v5, v1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v8, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "play_error"

    invoke-static {v8, p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v6, v5, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->EjP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj<",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/uA;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_cancel"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V

    return-void
.end method

.method public static sP(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 9

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/HiB;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/HiB;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/HiB;->Sj(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/HiB;->sP(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_4

    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_continue"

    invoke-static {v7, p1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static sP(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->HiB(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v5

    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;->sP(J)V

    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;->Sj(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Dq()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;->Sj(I)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, v1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v5, ""

    const-string v6, "TTAD.VideoEventManager"

    if-lez v1, :cond_3

    :try_start_0
    const-string v8, "play_time"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v6, v5, v1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v8, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_over"

    invoke-static {v8, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v6, v5, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method
