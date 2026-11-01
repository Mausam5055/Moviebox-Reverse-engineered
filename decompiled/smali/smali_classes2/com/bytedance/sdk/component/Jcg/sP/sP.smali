.class public Lcom/bytedance/sdk/component/Jcg/sP/sP;
.super Lcom/bytedance/sdk/component/Jcg/sP/TKC;


# static fields
.field public static final Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj;

.field public static final sP:Lcom/bytedance/sdk/component/sP/Sj/Sj;


# instance fields
.field private TEQ:Lcom/bytedance/sdk/component/sP/Sj/Sj;

.field private Ym:Z

.field private aa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Sj;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj;

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Sj;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/Sj;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    sget-object p1, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj;

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->TEQ:Lcom/bytedance/sdk/component/sP/Sj/Sj;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Ym:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->aa:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/Jcg/sP;
    .locals 14

    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Ym:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Dq:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    goto/16 :goto_2

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Dq:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->aa:Ljava/util/Map;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->aa:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_5

    move-object v5, v3

    :cond_5
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Jcg;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->TEQ:Lcom/bytedance/sdk/component/sP/Sj/Sj;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Sj;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->TKC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/Object;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/vS;->sP(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_4
    move-object v9, v3

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->sP()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :goto_5
    new-instance v1, Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v6

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->sP()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Sj()J

    move-result-wide v12

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/Jcg/sP;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V
    .locals 8

    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Ym:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Dq:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Dq:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->aa:Ljava/util/Map;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->aa:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Jcg;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->TEQ:Lcom/bytedance/sdk/component/sP/Sj/Sj;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Sj;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->TKC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/Object;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->HiB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->HiB:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    :cond_7
    iget v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->vS:I

    if-lez v0, :cond_8

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(I)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    :cond_8
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/Jcg/sP/sP$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/sP$1;-><init>(Lcom/bytedance/sdk/component/Jcg/sP/sP;Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TKC;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    if-eqz p1, :cond_9

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    :cond_9
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Ym:Z

    return-void
.end method
