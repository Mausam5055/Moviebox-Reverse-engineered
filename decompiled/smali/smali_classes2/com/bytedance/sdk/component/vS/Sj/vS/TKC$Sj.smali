.class Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sj"
.end annotation


# instance fields
.field private final EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

.field private final TKC:Ljava/lang/String;

.field private final sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    const-string p1, "AdsStats"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->TKC:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->EjP:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;-><init>(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private TKC(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "{TS}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "__TS__"

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "{UID}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "__UID__"

    if-nez v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->TKC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->TKC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->TKC:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method


# virtual methods
.method Sj(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 9

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->TKC()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->Sj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->EjP()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->vS()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->TKC(Ljava/lang/String;)I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;)Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;->TKC(Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V

    return-void

    :cond_3
    :try_start_0
    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->Fmk()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->Ym()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;)Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->Sj(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->TKC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->TKC()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->TEQ()Lcom/bytedance/sdk/component/vS/Sj/HiB/TKC;

    move-result-object v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    const-string v5, "User-Agent"

    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->uA()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/bytedance/sdk/component/vS/Sj/HiB/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "csj_client_source_from"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Lcom/bytedance/sdk/component/vS/Sj/HiB/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->EjP:Ljava/util/Map;

    if-eqz v5, :cond_9

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->EjP:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_8
    const-string v6, "csj_extra_info"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/bytedance/sdk/component/vS/Sj/HiB/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-interface {v4, v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB/TKC;->Sj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v4}, Lcom/bytedance/sdk/component/vS/Sj/HiB/TKC;->Sj()Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;->Sj()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->Sj(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    const/4 v0, 0x0

    :catchall_1
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->EjP()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->Sj(I)V

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;->Sj()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;)Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;->TKC(Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->sP()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-object v6, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->Sj(ZIJLcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V

    return-void

    :cond_a
    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;->sP()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->sP(I)V

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;->TKC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->TKC(Ljava/lang/String;)V

    :cond_b
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;->sP()I

    move-result v4

    const/16 v5, 0x2290

    if-ne v4, v5, :cond_c

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;->TKC()Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;)Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;->TKC(Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->sP()Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->EjP()I

    move-result v0

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->vS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->TKC(Ljava/lang/String;)I

    move-result v4

    if-lt v0, v4, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;)Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;->TKC(Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->sP()Ljava/lang/String;

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;)Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;->sP(Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->Dq()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-object v6, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->sP:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    const/4 v2, 0x0

    move v3, v0

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->Sj(ZIJLcom/bytedance/sdk/component/vS/Sj/vS/EjP;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_e
    :goto_3
    return-void
.end method

.method sP(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->sP()Ljava/util/Random;

    move-result-object v0

    const-string v1, "[ss_random]"

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[ss_timestamp]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method
