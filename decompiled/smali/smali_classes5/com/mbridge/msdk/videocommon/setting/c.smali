.class public Lcom/mbridge/msdk/videocommon/setting/c;
.super Ljava/lang/Object;


# static fields
.field private static W:Lcom/mbridge/msdk/foundation/db/g;

.field public static X:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Ljava/lang/String;

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:I

.field private R:I

.field private S:I

.field private T:Ljava/lang/String;

.field private U:Lorg/json/JSONArray;

.field private V:Lorg/json/JSONObject;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/videocommon/entity/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:D

.field private s:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->e:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->f:I

    iput v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->g:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->h:I

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->i:I

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->j:I

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->k:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/mbridge/msdk/videocommon/setting/c;->l:I

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->m:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/mbridge/msdk/videocommon/setting/c;->n:I

    const/16 v4, 0x50

    iput v4, p0, Lcom/mbridge/msdk/videocommon/setting/c;->o:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/mbridge/msdk/videocommon/setting/c;->p:I

    iput v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->q:I

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iput-wide v5, p0, Lcom/mbridge/msdk/videocommon/setting/c;->r:D

    iput v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->s:I

    iput v3, p0, Lcom/mbridge/msdk/videocommon/setting/c;->u:I

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->v:I

    iput v4, p0, Lcom/mbridge/msdk/videocommon/setting/c;->w:I

    const/16 v3, 0x3c

    iput v3, p0, Lcom/mbridge/msdk/videocommon/setting/c;->x:I

    iput v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->y:I

    const/16 v4, 0x46

    iput v4, p0, Lcom/mbridge/msdk/videocommon/setting/c;->z:I

    iput v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->A:I

    iput v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->B:I

    iput v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->C:I

    iput v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->D:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->F:I

    iput v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->H:I

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->I:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->J:Ljava/lang/String;

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->K:I

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->L:Ljava/lang/String;

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->M:I

    const-string v4, "Virtual Item"

    iput-object v4, p0, Lcom/mbridge/msdk/videocommon/setting/c;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->P:Ljava/lang/String;

    iput v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->Q:I

    iput v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->R:I

    iput v3, p0, Lcom/mbridge/msdk/videocommon/setting/c;->S:I

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->T:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/setting/c;
    .locals 10

    const-string v0, ""

    sget-object v1, Lcom/mbridge/msdk/videocommon/setting/c;->W:Lcom/mbridge/msdk/foundation/db/g;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v1

    sput-object v1, Lcom/mbridge/msdk/videocommon/setting/c;->W:Lcom/mbridge/msdk/foundation/db/g;

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "vtag"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "rid"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unitSetting"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v6, "unitId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-direct {v7}, Lcom/mbridge/msdk/videocommon/setting/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->j(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/mbridge/msdk/videocommon/setting/c;->g(Ljava/lang/String;)V

    const-string p0, "adSourceList"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/videocommon/entity/b;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v7, v6}, Lcom/mbridge/msdk/videocommon/setting/c;->h(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->a(Ljava/util/List;)V

    const-string p0, "callbackType"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->h(I)V

    const-string p0, "aqn"

    const/4 v2, 0x1

    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_1

    move p0, v2

    :cond_1
    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->e(I)V

    const-string p0, "acn"

    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_2

    move p0, v2

    :cond_2
    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->b(I)V

    const-string p0, "vcn"

    const/4 v3, 0x5

    invoke-virtual {v4, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->E(I)V

    const-string p0, "offset"

    invoke-virtual {v4, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->u(I)V

    const-string p0, "dlnet"

    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->n(I)V

    const-string p0, "endscreen_type"

    const/4 v3, 0x2

    invoke-virtual {v4, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->o(I)V

    const-string p0, "tv_start"

    const/4 v6, 0x3

    invoke-virtual {v4, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->D(I)V

    const-string p0, "tv_end"

    const/16 v8, 0x50

    invoke-virtual {v4, p0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->C(I)V

    const-string p0, "ready_rate"

    const/16 v8, 0x64

    invoke-virtual {v4, p0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->y(I)V

    const-string p0, "cd_rate"

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->i(I)V

    const-string p0, "current_time"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/mbridge/msdk/videocommon/setting/c;->a(J)V

    const-string p0, "orientation"

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->A(I)V

    const-string p0, "daily_play_cap"

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->m(I)V

    const-string p0, "video_skip_time"

    const/4 v1, -0x1

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->I(I)V

    const-string p0, "video_skip_result"

    invoke-virtual {v4, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->H(I)V

    const-string p0, "video_interactive_type"

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->G(I)V

    const-string p0, "close_button_delay"

    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->k(I)V

    const-string p0, "playclosebtn_tm"

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->w(I)V

    const-string p0, "play_ctdown"

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->v(I)V

    const-string p0, "close_alert"

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->j(I)V

    const-string p0, "rdrct"

    const/16 v8, 0x14

    invoke-virtual {v4, p0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->x(I)V

    const-string p0, "load_global_timeout"

    const/16 v8, 0x46

    invoke-virtual {v4, p0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->p(I)V

    const-string p0, "rfpv"

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->z(I)V

    const-string p0, "vdcmp"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, p0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/mbridge/msdk/videocommon/setting/c;->a(D)V

    const-string p0, "atzu"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->c(Ljava/lang/String;)V

    const-string p0, "atl_type"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_3

    move v8, v5

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v7, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->a(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const-string p0, "atl_dyt"

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_5

    move v6, p0

    :cond_5
    invoke-virtual {v7, v6}, Lcom/mbridge/msdk/videocommon/setting/c;->f(I)V

    const-string p0, "tmorl"

    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-gt p0, v3, :cond_6

    if-gtz p0, :cond_7

    :cond_6
    move p0, v2

    :cond_7
    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->B(I)V

    const-string p0, "placementid"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->f(Ljava/lang/String;)V

    const-string p0, "ltafemty"

    const/16 v1, 0xa

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->s(I)V

    const-string p0, "ltorwc"

    const/16 v1, 0x3c

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->t(I)V

    const-string p0, "ab_id"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->b(Ljava/lang/String;)V

    const-string p0, "amount_max"

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->d(I)V

    const-string p0, "callback_rule"

    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->g(I)V

    const-string p0, "virtual_currency"

    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->i(Ljava/lang/String;)V

    const-string p0, "amount"

    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->c(I)V

    const-string p0, "icon"

    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->d(Ljava/lang/String;)V

    const-string p0, "currency_id"

    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->l(I)V

    const-string p0, "name"

    const-string v0, "Virtual Item"

    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->e(Ljava/lang/String;)V

    const-string p0, "video_error_rule"

    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->F(I)V

    const-string p0, "loadtmo"

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->r(I)V

    const-string p0, "local_cache_info"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/mbridge/msdk/videocommon/setting/c;->a(Lorg/json/JSONArray;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string p0, "retry_strategy"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/mbridge/msdk/videocommon/setting/c;->b(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_8
    move-object v2, v7

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v2, v7

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_4

    :cond_9
    :goto_3
    return-object v2

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    return-object v2
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/mbridge/msdk/videocommon/setting/c;
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    :try_start_0
    new-instance v2, Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-direct {v2}, Lcom/mbridge/msdk/videocommon/setting/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v1, "adSourceList"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/videocommon/entity/b;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->a(Ljava/util/List;)V

    const-string v1, "callbackType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->h(I)V

    const-string v1, "aqn"

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->e(I)V

    const-string v1, "acn"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->b(I)V

    const-string v1, "vcn"

    const/4 v4, 0x5

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->E(I)V

    const-string v1, "offset"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->u(I)V

    const-string v1, "dlnet"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->n(I)V

    const-string v1, "endscreen_type"

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->o(I)V

    const-string v1, "tv_start"

    const/4 v5, 0x3

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->D(I)V

    const-string v1, "tv_end"

    const/16 v6, 0x50

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->C(I)V

    const-string v1, "ready_rate"

    const/16 v6, 0x64

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->y(I)V

    const-string v1, "current_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/mbridge/msdk/videocommon/setting/c;->a(J)V

    const-string v1, "orientation"

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->A(I)V

    const-string v1, "daily_play_cap"

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->m(I)V

    const-string v1, "video_skip_time"

    const/4 v7, -0x1

    invoke-virtual {p0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->I(I)V

    const-string v1, "video_skip_result"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->H(I)V

    const-string v1, "video_interactive_type"

    invoke-virtual {p0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->G(I)V

    const-string v1, "close_button_delay"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->k(I)V

    const-string v1, "playclosebtn_tm"

    invoke-virtual {p0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->w(I)V

    const-string v1, "play_ctdown"

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->v(I)V

    const-string v1, "close_alert"

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->j(I)V

    const-string v1, "rdrct"

    const/16 v8, 0x14

    invoke-virtual {p0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->x(I)V

    const-string v1, "rfpv"

    invoke-virtual {p0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->z(I)V

    const-string v1, "vdcmp"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v1, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/mbridge/msdk/videocommon/setting/c;->a(D)V

    const-string v1, "load_global_timeout"

    const/16 v7, 0x46

    invoke-virtual {p0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->p(I)V

    const-string v1, "atl_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_2

    move v8, v6

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2, v7}, Lcom/mbridge/msdk/videocommon/setting/c;->a(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const-string v1, "atl_dyt"

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->f(I)V

    const-string v1, "tmorl"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gt v1, v4, :cond_4

    if-gtz v1, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->B(I)V

    const-string v1, "placementid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->f(Ljava/lang/String;)V

    const-string v1, "ltafemty"

    const/16 v4, 0xa

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->s(I)V

    const-string v1, "ltorwc"

    const/16 v4, 0x3c

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->t(I)V

    const-string v1, "ab_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->b(Ljava/lang/String;)V

    const-string v1, "rid"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->g(Ljava/lang/String;)V

    const-string v1, "amount_max"

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->d(I)V

    const-string v1, "callback_rule"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->g(I)V

    const-string v1, "virtual_currency"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->i(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->c(I)V

    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->d(Ljava/lang/String;)V

    const-string v1, "currency_id"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->l(I)V

    const-string v1, "name"

    const-string v5, "Virtual Item"

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->e(Ljava/lang/String;)V

    const-string v1, "video_error_rule"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->F(I)V

    const-string v1, "loadtmo"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->r(I)V

    const-string v1, "vtag"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/videocommon/setting/c;->j(Ljava/lang/String;)V

    const-string v0, "local_cache_info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/videocommon/setting/c;->a(Lorg/json/JSONArray;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v0, "retry_strategy"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/videocommon/setting/c;->b(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_6
    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_4
    return-object v1
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->v:I

    return v0
.end method

.method public A(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->y:I

    return-void
.end method

.method public B()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->U:Lorg/json/JSONArray;

    return-object v0
.end method

.method public B(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->v:I

    return-void
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->R:I

    return v0
.end method

.method public C(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->o:I

    return-void
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->D:I

    return v0
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->n:I

    return-void
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->C:I

    return v0
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->k:I

    return-void
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->B:I

    return v0
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->R:I

    return-void
.end method

.method public G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->T:Ljava/lang/String;

    return-object v0
.end method

.method public G(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->D:I

    return-void
.end method

.method public H()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "unitId"

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "callbackType"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/videocommon/entity/b;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/entity/b;->a()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "timeout"

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/entity/b;->b()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    const-string v2, "adSourceList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "aqn"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "acn"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "vcn"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "offset"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dlnet"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tv_start"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tv_end"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ready_rate"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "endscreen_type"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->G:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "daily_play_cap"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->A:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_skip_time"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->B:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_skip_result"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->C:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_interactive_type"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->D:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "orientation"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "close_button_delay"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->E:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playclosebtn_tm"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_ctdown"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "close_alert"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rfpv"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->s:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "vdcmp"

    iget-wide v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->r:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->t:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "atl_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "atl_dyt"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->u:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tmorl"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->v:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "placementid"

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ltafemty"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ltorwc"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "amount_max"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->H:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "callback_rule"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->I:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "virtual_currency"

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "amount"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->K:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "icon"

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency_id"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->M:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "name"

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isDefault"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->Q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_error_rule"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->R:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "loadtmo"

    iget v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->S:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "vtag"

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public H(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->C:I

    return-void
.end method

.method public I(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->B:I

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->O:Ljava/lang/String;

    return-object v0
.end method

.method public a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->r:D

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->d:J

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->t:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/videocommon/entity/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->c:Ljava/util/List;

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->U:Lorg/json/JSONArray;

    return-void
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->t:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->j:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->j:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->O:Ljava/lang/String;

    sget-object v0, Lcom/mbridge/msdk/foundation/controller/a;->r:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->V:Lorg/json/JSONObject;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/videocommon/setting/c;->X:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->K:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->K:I

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/mbridge/msdk/videocommon/setting/c;->X:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->K:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->H:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->L:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->i:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->i:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->J:Ljava/lang/String;

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->N:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->N:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->u:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->u:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->b:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->q:I

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->I:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->P:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->g:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->h:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->a:Ljava/lang/String;

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->E:I

    return v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->q:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->J:Ljava/lang/String;

    return-void
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->d:J

    return-wide v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->g:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->T:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->A:I

    return v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->E:I

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->m:I

    return v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->M:I

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->G:I

    return v0
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->A:I

    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->z:I

    return v0
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->m:I

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->S:I

    return v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->G:I

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->w:I

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->z:I

    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->x:I

    return v0
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->Q:I

    return-void
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->l:I

    return v0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->S:I

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->N:Ljava/lang/String;

    return-object v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->w:I

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->x:I

    return-void
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->e:I

    return v0
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->l:I

    return-void
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->F:I

    return v0
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->f:I

    return-void
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->p:I

    return v0
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->e:I

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->P:Ljava/lang/String;

    return-object v0
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->F:I

    return-void
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/videocommon/setting/c;->y:I

    return v0
.end method

.method public y(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->p:I

    return-void
.end method

.method public z()Ljava/util/Queue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/setting/c;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/videocommon/entity/b;

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/entity/b;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    :goto_3
    return-object v0
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/videocommon/setting/c;->s:I

    return-void
.end method
