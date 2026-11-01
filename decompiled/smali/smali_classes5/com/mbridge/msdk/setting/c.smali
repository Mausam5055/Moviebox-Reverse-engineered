.class public Lcom/mbridge/msdk/setting/c;
.super Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:I

.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:J

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:J

.field private r:I

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/setting/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mbridge/msdk/setting/c;->j:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/mbridge/msdk/setting/c;->v:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/mbridge/msdk/setting/c;->w:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/mbridge/msdk/setting/c;->x:I

    const/16 v2, 0x3c

    iput v2, p0, Lcom/mbridge/msdk/setting/c;->y:I

    iput v1, p0, Lcom/mbridge/msdk/setting/c;->B:I

    iput-object v0, p0, Lcom/mbridge/msdk/setting/c;->C:Ljava/lang/String;

    const/16 v3, 0x64

    iput v3, p0, Lcom/mbridge/msdk/setting/c;->F:I

    iput v2, p0, Lcom/mbridge/msdk/setting/c;->G:I

    const/16 v2, 0x1388

    iput v2, p0, Lcom/mbridge/msdk/setting/c;->H:I

    iput v1, p0, Lcom/mbridge/msdk/setting/c;->J:I

    iput-object v0, p0, Lcom/mbridge/msdk/setting/c;->L:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/setting/c;->M:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/mbridge/msdk/setting/l;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    :try_start_0
    new-instance v2, Lcom/mbridge/msdk/setting/l;

    invoke-direct {v2}, Lcom/mbridge/msdk/setting/l;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "unitId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->e(Ljava/lang/String;)V

    const-string v1, "ab_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->a(Ljava/lang/String;)V

    const-string v1, "rid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->f(Ljava/lang/String;)V

    const-string v1, "adSourceList"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2, v4}, Lcom/mbridge/msdk/setting/c;->a(Ljava/util/List;)V

    :cond_1
    const-string v1, "ad_source_timeout"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4}, Lcom/mbridge/msdk/setting/c;->b(Ljava/util/List;)V

    :cond_3
    const-string v1, "tpqn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->x(I)V

    const-string v1, "aqn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->c(I)V

    const-string v1, "acn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->b(I)V

    const-string v1, "wt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->z(I)V

    const-string v1, "iscasf"

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->o(I)V

    const-string v1, "spmxrt"

    const/16 v5, 0x1388

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->w(I)V

    const-string v1, "current_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/mbridge/msdk/setting/c;->c(J)V

    const-string v1, "offset"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->r(I)V

    const-string v1, "dlct"

    const-wide/16 v5, 0xe10

    invoke-virtual {p0, v1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/mbridge/msdk/setting/c;->d(J)V

    const-string v1, "autoplay"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->d(I)V

    const-string v1, "dlnet"

    const/4 v5, 0x2

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->k(I)V

    const-string v1, "no_offer"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->c(Ljava/lang/String;)V

    const-string v1, "cb_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->f(I)V

    const-string v1, "clct"

    const-wide/32 v6, 0x15180

    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mbridge/msdk/setting/c;->b(J)V

    const-string v1, "clcq"

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mbridge/msdk/setting/c;->a(J)V

    const-string v1, "ready_rate"

    const/16 v6, 0x64

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->u(I)V

    const-string v1, "cd_rate"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->g(I)V

    const-string v1, "content"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->i(I)V

    const-string v1, "impt"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->m(I)V

    const-string v1, "icon_type"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->l(I)V

    const-string v1, "no_ads_url"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->b(Ljava/lang/String;)V

    const-string v1, "playclosebtn_tm"

    const/4 v6, -0x1

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->t(I)V

    const-string v1, "play_ctdown"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->s(I)V

    const-string v1, "close_alert"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->h(I)V

    const-string v1, "intershowlimit"

    const/16 v6, 0x1e

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->n(I)V

    const-string v1, "refreshFq"

    const/16 v6, 0x3c

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->v(I)V

    const-string v1, "closeBtn"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->e(I)V

    const-string v1, "tmorl"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gt v1, v5, :cond_5

    if-gtz v1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    :cond_5
    :goto_2
    invoke-virtual {v2, v4}, Lcom/mbridge/msdk/setting/c;->y(I)V

    const-string v1, "placementid"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->d(Ljava/lang/String;)V

    const-string v1, "ltafemty"

    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->p(I)V

    const-string v1, "ltorwc"

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/c;->q(I)V

    const-string v1, "vtag"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/mbridge/msdk/setting/c;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_5

    :goto_3
    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception p0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    return-object v1
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->D:I

    return v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->E:I

    return v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->F:I

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->G:I

    return v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->H:I

    return v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->I:I

    return v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->J:I

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->K:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->L:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->M:Ljava/lang/String;

    return-object v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->N:I

    return v0
.end method

.method public L()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->g:I

    return v0
.end method

.method public M()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    const-string v1, "adSourceList"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "ad_source_timeout"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "tpqn"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->F()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "aqn"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "acn"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "wt"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->K()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "current_time"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->o()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "offset"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dlct"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->p()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "autoplay"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->L()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dlnet"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->q()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "no_offer"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cb_type"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clct"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->k()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "clcq"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ready_rate"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->C()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "impt"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->s()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "icon_type"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "no_ads_url"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playclosebtn_tm"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->B()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_ctdown"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->A()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "close_alert"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "closeBtn"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "refreshFq"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->D()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "countdown"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "allowSkip"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tmorl"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->G()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "unitId"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "placementid"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ltafemty"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->u()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ltorwc"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->v()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "vtag"

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->d:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/setting/c;->k:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/mbridge/msdk/setting/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/mbridge/msdk/foundation/controller/a;->r:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mbridge/msdk/setting/c;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/setting/c;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->e:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/setting/c;->l:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/setting/c;->z:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/setting/c;->c:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->f:I

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/setting/c;->p:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/setting/c;->A:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->g:I

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/setting/c;->q:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/setting/c;->C:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->h:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/setting/c;->K:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->f:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->i:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/setting/c;->L:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->h:I

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->j:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/setting/c;->M:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->i:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->m:I

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->j:I

    return v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->n:I

    return-void
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/setting/c;->k:J

    return-wide v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->o:I

    return-void
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/setting/c;->l:J

    return-wide v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->r:I

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->m:I

    return v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->t:I

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->n:I

    return v0
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->u:I

    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->o:I

    return v0
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->v:I

    return-void
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/setting/c;->p:J

    return-wide v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->w:I

    return-void
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/setting/c;->q:J

    return-wide v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->x:I

    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->r:I

    return v0
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->y:I

    return-void
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->t:I

    return v0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->B:I

    return-void
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->u:I

    return v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->D:I

    return-void
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->w:I

    return v0
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->E:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->b:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/c;->y()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unitId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/setting/c;->K:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fbPlacementId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/setting/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->x:I

    return v0
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->F:I

    return-void
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->y:I

    return v0
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->G:I

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->z:Ljava/lang/String;

    return-object v0
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->H:I

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->A:Ljava/lang/String;

    return-object v0
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->I:I

    return-void
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/setting/c;->B:I

    return v0
.end method

.method public y(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->J:I

    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/setting/c;->C:Ljava/lang/String;

    return-object v0
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/setting/c;->N:I

    return-void
.end method
