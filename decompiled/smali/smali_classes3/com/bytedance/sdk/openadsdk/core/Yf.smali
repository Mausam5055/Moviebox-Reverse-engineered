.class public Lcom/bytedance/sdk/openadsdk/core/Yf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/HiB/sP;
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;
.implements Lcom/bytedance/sdk/openadsdk/TEQ/sP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;,
        Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/Yf$sP;
    }
.end annotation


# static fields
.field private static final Dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Ei:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/Sj;

.field private EjP:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/uA/vS;",
            ">;"
        }
    .end annotation
.end field

.field private FPG:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

.field private Fm:Ljava/lang/String;

.field private Fmk:I

.field private final HiB:Lcom/bytedance/sdk/component/utils/LqL;

.field private HpB:Lcom/bytedance/sdk/openadsdk/aa/Dq;

.field private JcM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/TEQ;",
            ">;"
        }
    .end annotation
.end field

.field private Jcg:Lcom/bytedance/sdk/openadsdk/core/widget/HiB;

.field private LD:Z

.field private LqL:Lcom/bytedance/sdk/openadsdk/aa/TKC;

.field private Mts:Z

.field private RiZ:Lcom/bytedance/sdk/component/adexpress/sP/Ym;

.field protected Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private TEQ:Ljava/lang/String;

.field TKC:Z

.field private TzV:Lorg/json/JSONObject;

.field private UHs:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

.field private WMZ:Z

.field private Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

.field private Yf:Lcom/bytedance/sdk/openadsdk/aa/Ym;

.field private Ym:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private Zq:I

.field private aa:Ljava/lang/String;

.field private dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private db:Z

.field private dwU:Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;

.field private dx:Lorg/json/JSONObject;

.field private fF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            ">;"
        }
    .end annotation
.end field

.field private ib:Lcom/bytedance/sdk/openadsdk/aa/Sj;

.field private jb:Z

.field private kF:Lcom/bytedance/sdk/openadsdk/aa/vS;

.field private ley:Lcom/bytedance/sdk/openadsdk/core/sP/EjP;

.field private ndK:Z

.field private qRN:Landroid/content/Context;

.field sP:Z

.field private sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

.field private sdp:Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;

.field private sef:Ljava/lang/String;

.field private uA:Lcom/bytedance/sdk/openadsdk/TEQ/TKC;

.field private uP:Lcom/bytedance/sdk/openadsdk/aa/HiB;

.field private uvD:Z

.field private vS:Ljava/lang/String;

.field private wE:Lorg/json/JSONObject;

.field private xD:Lcom/bytedance/sdk/openadsdk/aa/sP;

.field private xhi:Lcom/bytedance/sdk/openadsdk/aa/Jcg;

.field private zR:Lcom/bytedance/sdk/openadsdk/TEQ/EjP;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Dq:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "log_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "private"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dispatch_message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "custom_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "log_event_v3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uvD:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->LD:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->WMZ:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Mts:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->jb:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    new-instance p1, Lcom/bytedance/sdk/component/utils/LqL;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB:Lcom/bytedance/sdk/component/utils/LqL;

    return-void
.end method

.method private Dq(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "click_other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TEQ()Z

    move-result p1

    return p1
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/Yf;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->vS:Ljava/lang/String;

    return-object p0
.end method

.method private Fmk(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "stateType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/Yf;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private Jcg(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "__msg_type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->Sj:Ljava/lang/String;

    const-string v4, "__callback_id"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->sP:Ljava/lang/String;

    const-string v4, "func"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->TKC:Ljava/lang/String;

    const-string v4, "params"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    const-string v4, "JSSDK"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->HiB:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    :try_start_2
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->Sj:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->TKC:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method private RiZ()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Yf:Lcom/bytedance/sdk/openadsdk/aa/Ym;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/aa/Ym;->sP()V

    return-void
.end method

.method private RiZ(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->fF:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "creatives"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "show"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "aggregate_page"

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->vS:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->LqL:Lcom/bytedance/sdk/openadsdk/aa/TKC;

    if-eqz p2, :cond_3

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->RiZ:Lcom/bytedance/sdk/component/adexpress/sP/Ym;

    if-nez p2, :cond_4

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sP(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;Lorg/json/JSONObject;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$sP;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Yf$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/Yf$sP;)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/aa/EjP;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk(Lorg/json/JSONObject;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private Sj(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->FPG:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->FPG:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/vS;->Sj(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->FPG:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/vS;->sP(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cid"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "log_extra"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "download_url"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->FPG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->FPG()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "TX"

    :goto_0
    const-string v0, "dc"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->EZ()Z

    move-result p1

    const-string v0, "isRTL"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private Sj(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p2, "ad_extra_data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "agg_request_type"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "click"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Jcg:Lcom/bytedance/sdk/openadsdk/core/widget/HiB;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/HiB;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string p2, "TTAD.AndroidObject"

    const-string p3, "callAggClickListener faile"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private Sj(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/sef;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->JcM:Ljava/util/HashMap;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ;

    if-nez p1, :cond_1

    return p3

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return p3
.end method

.method private Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "landingStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fallback_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, -0x1

    move-object p1, v1

    :goto_0
    const-string v2, "TTAD.AndroidObject"

    const-string v3, "invalid_url"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TzV;->Sj(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_0
    invoke-virtual {p2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "handleUrl, EX1->: "

    invoke-static {v2, p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "empty_url"

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TzV;->Sj(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    const-string p2, "handleUrl, EX2->: "

    invoke-static {v2, p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    return v4
.end method

.method private TEQ(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Ym(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Ym(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playable_style"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Yf;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Zq:I

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Yf;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "is_ad_event"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ci()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cid"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "req_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cKW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "log_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->EZ()Z

    move-result v2

    const-string v3, "isRTL"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "ad_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "endcard_creative"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private TKC(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__msg_type"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "__event_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string p1, "__params"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private TzV()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Yf:Lcom/bytedance/sdk/openadsdk/aa/Ym;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/aa/Ym;->Sj()V

    return-void
.end method

.method private TzV(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->zR:Lcom/bytedance/sdk/openadsdk/TEQ/EjP;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "temaiProductIds"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->zR:Lcom/bytedance/sdk/openadsdk/TEQ/EjP;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/TEQ/EjP;->Sj(ZLorg/json/JSONArray;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->zR:Lcom/bytedance/sdk/openadsdk/TEQ/EjP;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/TEQ/EjP;->Sj(ZLorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->zR:Lcom/bytedance/sdk/openadsdk/TEQ/EjP;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/TEQ/EjP;->Sj(ZLorg/json/JSONArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private Ym(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->FPG:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/vS;->sP(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Zq()Lorg/json/JSONObject;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ym:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/view/View;)[I

    move-result-object v3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/view/View;)[I

    move-result-object v2

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "x"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    aget v8, v3, v7

    aget v7, v2, v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "y"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    aget v3, v3, v7

    aget v2, v2, v7

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-static {v6, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "w"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "h"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isExist"

    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private Zq(Lorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->RiZ:Lcom/bytedance/sdk/component/adexpress/sP/Ym;

    if-eqz v2, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->FPG:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->uvD()V

    :cond_1
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(I)V

    :try_start_0
    const-string v4, "isRenderSuc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "AdSize"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "height"

    const-string v7, "width"

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_1

    :catch_0
    :goto_0
    const/16 v1, 0x65

    goto/16 :goto_4

    :cond_2
    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_1
    const-string v5, "videoInfo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_4

    :try_start_2
    const-string v12, "x"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v14, "y"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    move/from16 v16, v4

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->uvD(Lorg/json/JSONObject;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v0, "borderRadiusTopLeft"

    move-wide/from16 v17, v10

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(F)V

    const-string v0, "borderRadiusTopRight"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(F)V

    const-string v0, "borderRadiusBottomLeft"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC(F)V

    const-string v0, "borderRadiusBottomRight"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->EjP(F)V

    goto :goto_2

    :catch_1
    const/16 v1, 0x65

    move-object/from16 v0, p0

    goto :goto_4

    :cond_3
    move-wide/from16 v17, v10

    :goto_2
    invoke-virtual {v2, v12, v13}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC(D)V

    invoke-virtual {v2, v14, v15}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->EjP(D)V

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->HiB(D)V

    invoke-virtual {v2, v6, v7}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_4
    move/from16 v16, v4

    move-wide/from16 v17, v10

    :goto_3
    :try_start_3
    const-string v0, "msg"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v3, 0x65

    :try_start_4
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "code"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v3, v16

    :try_start_5
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(Z)V

    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(D)V

    move-wide/from16 v8, v17

    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(D)V

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v0, p0

    :try_start_6
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->RiZ:Lcom/bytedance/sdk/component/adexpress/sP/Ym;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Ym;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    if-eqz v5, :cond_5

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->HpB:Lcom/bytedance/sdk/openadsdk/aa/Dq;

    if-eqz v1, :cond_5

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/aa/Jcg;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-void

    :catch_2
    move-object/from16 v0, p0

    goto/16 :goto_0

    :catch_3
    move-object/from16 v0, p0

    move v1, v3

    :goto_4
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(I)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->RiZ:Lcom/bytedance/sdk/component/adexpress/sP/Ym;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Ym;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    :cond_6
    :goto_5
    return-void
.end method

.method private aa(Lorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->LqL:Lcom/bytedance/sdk/openadsdk/aa/TKC;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "isRenderSuc"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "msg"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/aa/TKC;->Sj(ZILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dNu()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method private dNu(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "trackData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bytedance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private dx(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "ad_extra_data"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj:Ljava/util/Map;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-object p1
.end method

.method private dx()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->JcM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private ib()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nP()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->WMZ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nP()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "parent_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->WMZ:Z

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private kF()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA:Lcom/bytedance/sdk/openadsdk/TEQ/TKC;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/TEQ/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/TEQ/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/TEQ/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA:Lcom/bytedance/sdk/openadsdk/TEQ/TKC;

    :cond_0
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Yf;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ei:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/Sj;

    return-object p0
.end method

.method public static sP(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->SP()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->TzV:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;
    .locals 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v4

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TEQ(Ljava/lang/String;)I

    move-result v4

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    move-result v5

    if-ltz v5, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    move-result v5

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->RiZ(Ljava/lang/String;)I

    move-result v5

    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->vS(Ljava/lang/String;)Z

    move-result v6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Fmk(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move v7, v8

    goto :goto_4

    :cond_5
    move v7, v1

    :goto_4
    const/4 v9, 0x7

    if-eq v3, v9, :cond_7

    const/16 v9, 0x8

    if-ne v3, v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TKC(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    :cond_7
    :goto_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->dNu(Ljava/lang/String;)Z

    move-result v2

    :goto_6
    const-string v3, "voice_control"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "rv_skip_time"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "fv_skip_show"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "iv_skip_time"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "show_dislike"

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RrR()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v8

    goto :goto_7

    :cond_8
    move v3, v1

    :goto_7
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "video_adaptation"

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Mts()I

    move-result v3

    goto :goto_8

    :cond_9
    move v3, v1

    :goto_8
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "skip_change_to_close"

    if-eqz v2, :cond_a

    :try_start_1
    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_9

    :cond_a
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_9
    const-string v2, "bar_render_platform"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tR()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->eI()Z

    move-result p0

    if-eqz p0, :cond_b

    move v1, v8

    :cond_b
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private static sP(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "mute"

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "jsb_def"

    goto :goto_0

    :cond_1
    const-string p1, "jsb_web"

    :goto_0
    invoke-interface {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private sP(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__msg_type"

    const-string v2, "callback"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "__callback_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "__params"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static sP(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Yf;->uvD()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v1, "appName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "innerAppName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->HiB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkEdition"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appVersion"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->EjP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netType"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->vS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "supportList"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->sP(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "device_platform"

    if-eqz v0, :cond_1

    const-string v0, "Android_Pad"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v0, "Android"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v0, "device_type"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Dq(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private sU()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj()V

    :cond_0
    return-void
.end method

.method private sU(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sef()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:ToutiaoJSBridge._handleMessageFromToutiao("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sef;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private sef()Landroid/webkit/WebView;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/uA/vS;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private sef(Lorg/json/JSONObject;)Z
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->TKC()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->EjP()I

    move-result v0

    :try_start_0
    const-string v4, "currentTime"

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v5

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "state"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method private uA(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "bytedance://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "bytedance://dispatch_message/"

    const-string v1, "bytedance://private/setresult/"

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sef()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "javascript:ToutiaoJSBridge._fetchQueue()"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/sef;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x26

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SCENE_FETCHQUEUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Jcg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method private uA(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->db:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->Qne()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "adInfos"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->GhY()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method private static uvD()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getTemplateInfo"

    const-string v1, "getTeMaiAds"

    const-string v2, "appInfo"

    const-string v3, "adInfo"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private uvD(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "borderRadiusTopLeft"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "borderRadiusBottomLeft"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "borderRadiusTopRight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "borderRadiusBottomRight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private zR()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->sP()V

    :cond_0
    return-void
.end method

.method public Dq(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->CBE()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->UHs:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->EjP()V

    :cond_1
    return-void
.end method

.method public EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa:Ljava/lang/String;

    return-object p0
.end method

.method public EjP()Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object v0
.end method

.method public EjP(Lorg/json/JSONObject;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "zoom_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "videoInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;-><init>()V

    if-eqz p1, :cond_1

    const-string v2, "x"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "y"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "width"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v8, "height"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC(D)V

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->EjP(D)V

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->HiB(D)V

    invoke-virtual {v1, v8, v9}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS(D)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(ILcom/bytedance/sdk/component/adexpress/sP/sef;)V

    :cond_2
    return-void
.end method

.method public EjP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->db:Z

    return-void
.end method

.method public Fmk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dwU:Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;->Sj()V

    :cond_0
    return-void
.end method

.method public HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sef:Ljava/lang/String;

    return-object p0
.end method

.method public HiB(Lorg/json/JSONObject;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "TTAD.AndroidObject"

    const-string v3, "trigger Class1 method1"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    :try_start_0
    const-string v4, "adId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "areaType"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "clickAreaType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "clickInfo"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_1

    const-string v11, "down_x"

    invoke-virtual {v8, v11, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v13, "down_y"

    invoke-virtual {v8, v13, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    const-string v15, "up_x"

    invoke-virtual {v8, v15, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v15

    const-string v6, "up_y"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v17

    const-string v6, "down_time"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v19

    const-string v6, "up_time"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v21

    const-string v6, "button_x"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v23

    const-string v6, "button_y"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v25

    const-string v6, "button_width"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v27

    const-string v6, "button_height"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v6, "rectInfo"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-wide/from16 v39, v9

    move-wide v9, v11

    move-wide v11, v15

    move-wide/from16 v29, v19

    move-wide/from16 v31, v21

    move-wide/from16 v33, v23

    move-wide/from16 v35, v25

    move-wide/from16 v37, v27

    move-object/from16 v16, v4

    move-wide/from16 v3, v17

    goto :goto_0

    :cond_1
    move-object/from16 v16, v4

    move-wide v3, v9

    move-wide v11, v3

    move-wide v13, v11

    move-wide/from16 v29, v13

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v37, v35

    move-wide/from16 v39, v37

    const/4 v6, 0x0

    :goto_0
    const-string v15, "clickAreaCategory"

    invoke-virtual {v1, v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    invoke-direct {v15}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;-><init>()V

    double-to-float v9, v9

    invoke-virtual {v15, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v9

    double-to-float v10, v13

    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v9

    double-to-float v10, v11

    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v9

    double-to-float v3, v3

    invoke-virtual {v9, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    move-wide/from16 v9, v29

    double-to-long v9, v9

    invoke-virtual {v3, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    move-wide/from16 v9, v31

    double-to-long v9, v9

    invoke-virtual {v3, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    move-wide/from16 v9, v33

    double-to-int v4, v9

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    move-wide/from16 v9, v35

    double-to-int v4, v9

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    move-wide/from16 v9, v37

    double-to-int v4, v9

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    move-wide/from16 v9, v39

    double-to-int v4, v9

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sef;

    move-result-object v1

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->RiZ:Lcom/bytedance/sdk/component/adexpress/sP/Ym;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-interface {v3, v4, v5, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Ym;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    :cond_2
    move-object/from16 v3, v16

    invoke-direct {v0, v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/sef;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->RiZ:Lcom/bytedance/sdk/component/adexpress/sP/Ym;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v3}, Lcom/bytedance/sdk/component/adexpress/sP/Ym;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    :cond_3
    return-void
.end method

.method public HiB(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->ndK:Z

    return-void
.end method

.method public HiB()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Yf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Jcg(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->CBE()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "creatives"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public Jcg()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->ndK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->LqL:Lcom/bytedance/sdk/openadsdk/aa/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/aa/TKC;->Sj()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/aa/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->xD:Lcom/bytedance/sdk/openadsdk/aa/sP;

    return-object v0
.end method

.method public Sj(I)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Zq:I

    return-object p0
.end method

.method public Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ym:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Ym;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->RiZ:Lcom/bytedance/sdk/component/adexpress/sP/Ym;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Landroid/webkit/WebView;)Lcom/bytedance/sdk/component/Sj/TEQ;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Ym/Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj(Lcom/bytedance/sdk/component/Sj/Sj;)Lcom/bytedance/sdk/component/Sj/TEQ;

    move-result-object v0

    const-string v1, "ToutiaoJSBridge"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/TEQ;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Yf$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj(Lcom/bytedance/sdk/component/Sj/aa;)Lcom/bytedance/sdk/component/Sj/TEQ;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->RiZ()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj(Z)Lcom/bytedance/sdk/component/Sj/TEQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Sj/TEQ;->sP(Z)Lcom/bytedance/sdk/component/Sj/TEQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj()Lcom/bytedance/sdk/component/Sj/TEQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Sj/TEQ;->sP()Lcom/bytedance/sdk/component/Sj/dNu;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/sP;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/vS;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/uA;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/aa;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/TEQ;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/component/uA/vS;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/HiB;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/EjP;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Fmk;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :catch_0
    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->FPG:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/Dq;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->HpB:Lcom/bytedance/sdk/openadsdk/aa/Dq;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uP:Lcom/bytedance/sdk/openadsdk/aa/HiB;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->xhi:Lcom/bytedance/sdk/openadsdk/aa/Jcg;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/Sj;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->ib:Lcom/bytedance/sdk/openadsdk/aa/Sj;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/TKC;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->LqL:Lcom/bytedance/sdk/openadsdk/aa/TKC;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/Ym;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Yf:Lcom/bytedance/sdk/openadsdk/aa/Ym;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->kF:Lcom/bytedance/sdk/openadsdk/aa/vS;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nP()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->TzV:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/EjP;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->ley:Lcom/bytedance/sdk/openadsdk/core/sP/EjP;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Jcg:Lcom/bytedance/sdk/openadsdk/core/widget/HiB;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ei:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/Sj;

    return-object p0
.end method

.method public Sj(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/Yf;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->fF:Ljava/util/List;

    return-object p0
.end method

.method public Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/Yf;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj:Ljava/util/Map;

    return-object p0
.end method

.method public Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP:Z

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$sP;I)Lorg/json/JSONObject;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->Sj:Ljava/lang/String;

    const-string v8, "call"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/uA;->RiZ()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "[JSB-REQ] version:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " method:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->TKC:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->TKC:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_0
    move v9, v5

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "landscape_click"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    const/16 v9, 0x22

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "skipVideo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const/16 v9, 0x21

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "sendLog"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    const/16 v9, 0x20

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "playable_style"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    const/16 v9, 0x1f

    goto/16 :goto_1

    :sswitch_4
    const-string v10, "getNetworkData"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    const/16 v9, 0x1e

    goto/16 :goto_1

    :sswitch_5
    const-string v10, "endcard_load"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    const/16 v9, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v10, "removeLoading"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_0

    :cond_8
    const/16 v9, 0x1c

    goto/16 :goto_1

    :sswitch_7
    const-string v10, "renderDidFinish"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_0

    :cond_9
    const/16 v9, 0x1b

    goto/16 :goto_1

    :sswitch_8
    const-string v10, "muteVideo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_0

    :cond_a
    const/16 v9, 0x1a

    goto/16 :goto_1

    :sswitch_9
    const-string v10, "pauseWebViewTimers"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v9, 0x19

    goto/16 :goto_1

    :sswitch_a
    const-string v10, "getVolume"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v9, 0x18

    goto/16 :goto_1

    :sswitch_b
    const-string v10, "getCurrentVideoState"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v9, 0x17

    goto/16 :goto_1

    :sswitch_c
    const-string v10, "cancel_download_app_ad"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v9, 0x16

    goto/16 :goto_1

    :sswitch_d
    const-string v10, "getTemplateInfo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v9, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v10, "dynamicTrack"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v9, 0x14

    goto/16 :goto_1

    :sswitch_f
    const-string v10, "sendReward"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v9, 0x13

    goto/16 :goto_1

    :sswitch_10
    const-string v10, "getNativeSiteCustomData"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v9, 0x12

    goto/16 :goto_1

    :sswitch_11
    const-string v10, "isViewable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v9, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v10, "getCloseButtonInfo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v9, 0x10

    goto/16 :goto_1

    :sswitch_13
    const-string v10, "unsubscribe_app_ad"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v9, 0xf

    goto/16 :goto_1

    :sswitch_14
    const-string v10, "close"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v9, 0xe

    goto/16 :goto_1

    :sswitch_15
    const-string v10, "download_app_ad"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v9, 0xd

    goto/16 :goto_1

    :sswitch_16
    const-string v10, "getTeMaiAds"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v9, 0xc

    goto/16 :goto_1

    :sswitch_17
    const-string v10, "send_temai_product_ids"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v9, 0xb

    goto/16 :goto_1

    :sswitch_18
    const-string v10, "getMaterialMeta"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v9, 0xa

    goto/16 :goto_1

    :sswitch_19
    const-string v10, "openPrivacy"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v9, 0x9

    goto/16 :goto_1

    :sswitch_1a
    const-string v10, "getScreenSize"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_1b
    const-string v10, "appInfo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/4 v9, 0x7

    goto :goto_1

    :sswitch_1c
    const-string v10, "clickEvent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_1d
    const-string v10, "webview_time_track"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_1e
    const-string v10, "openAdLandPageLinks"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    goto/16 :goto_0

    :cond_20
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_1f
    const-string v10, "changeVideoState"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    goto/16 :goto_0

    :cond_21
    move v9, v3

    goto :goto_1

    :sswitch_20
    const-string v10, "pauseWebView"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    goto/16 :goto_0

    :cond_22
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_21
    const-string v10, "adInfo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    goto/16 :goto_0

    :cond_23
    move v9, v4

    goto :goto_1

    :sswitch_22
    const-string v10, "subscribe_app_ad"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    goto/16 :goto_0

    :cond_24
    move v9, v6

    :goto_1
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    instance-of v5, v3, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    if-eqz v5, :cond_2c

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->EjP()V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU()V

    goto/16 :goto_3

    :pswitch_2
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    if-eqz v3, :cond_2c

    const-string v5, "extJson"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2c

    const-string v6, "category"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    const-string v8, "tag"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2c

    const-string v9, "label"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "value"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v8, "extValue"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v17

    :try_start_0
    const-string v3, "ua_policy"

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Zq:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v3, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v3, "click"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_25
    invoke-direct {v0, v6, v14}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v3

    invoke-direct {v0, v5, v3, v14}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;ZLjava/lang/String;)V

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-object/from16 v19, v5

    move/from16 v20, v3

    invoke-static/range {v11 .. v20}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Z)V

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TEQ(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$sP;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :pswitch_6
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uP:Lcom/bytedance/sdk/openadsdk/aa/HiB;

    if-eqz v3, :cond_2c

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/aa/HiB;->Sj()V

    goto/16 :goto_3

    :pswitch_7
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Zq(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->RiZ()V

    goto/16 :goto_3

    :pswitch_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v8

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    if-eqz v8, :cond_26

    invoke-virtual {v8, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    :cond_26
    if-gtz v5, :cond_27

    move v6, v4

    :cond_27
    const-string v3, "endcard_mute"

    invoke-virtual {v7, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sef(Lorg/json/JSONObject;)Z

    goto/16 :goto_3

    :pswitch_c
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    if-eqz v3, :cond_28

    const-string v5, "setting"

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->zR()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v3, :cond_28

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    const-string v6, "extension"

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Grp()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    goto/16 :goto_3

    :pswitch_d
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :pswitch_e
    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC:Z

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->kF:Lcom/bytedance/sdk/openadsdk/aa/vS;

    if-eqz v3, :cond_2c

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/aa/vS;->Sj()V

    goto/16 :goto_3

    :pswitch_f
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->jb()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->jb()Ljava/lang/String;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    :pswitch_10
    iget-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Mts:Z

    const-string v5, "viewStatus"

    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_3

    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Zq()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2c

    :goto_2
    move-object v7, v3

    goto/16 :goto_3

    :pswitch_12
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA:Lcom/bytedance/sdk/openadsdk/TEQ/TKC;

    if-eqz v3, :cond_2c

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-interface {v3, v5}, Lcom/bytedance/sdk/openadsdk/TEQ/TKC;->Sj(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Jcg()V

    goto/16 :goto_3

    :pswitch_14
    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->jb:Z

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    invoke-static {v3, v5, v4, v8}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->ley:Lcom/bytedance/sdk/openadsdk/core/sP/EjP;

    if-eqz v3, :cond_29

    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->LD:Z

    invoke-interface {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/sP/EjP;->Sj(Z)V

    goto/16 :goto_3

    :cond_29
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA:Lcom/bytedance/sdk/openadsdk/TEQ/TKC;

    if-eqz v3, :cond_2a

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    if-eqz v5, :cond_2a

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v8}, Lcom/bytedance/sdk/openadsdk/TEQ/TKC;->Sj(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->UHs:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    if-eqz v3, :cond_2c

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->EjP()V

    goto/16 :goto_3

    :cond_2a
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    const/4 v6, -0x2

    invoke-static {v3, v5, v6, v8}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto/16 :goto_3

    :pswitch_15
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->wE:Lorg/json/JSONObject;

    if-eqz v3, :cond_2c

    goto :goto_2

    :pswitch_16
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TzV(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :pswitch_17
    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->RiZ(Lorg/json/JSONObject;)Z

    goto/16 :goto_3

    :pswitch_18
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx()V

    goto :goto_3

    :pswitch_19
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->ib:Lcom/bytedance/sdk/openadsdk/aa/Sj;

    if-eqz v3, :cond_2c

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/aa/Sj;->sP()I

    move-result v3

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->ib:Lcom/bytedance/sdk/openadsdk/aa/Sj;

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/aa/Sj;->Sj()I

    move-result v5

    const-string v6, "width"

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "height"

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_1a
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lorg/json/JSONObject;)V

    goto :goto_3

    :pswitch_1b
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Lorg/json/JSONObject;)V

    goto :goto_3

    :pswitch_1c
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ym(Lorg/json/JSONObject;)V

    goto :goto_3

    :pswitch_1d
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-direct {v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Lorg/json/JSONObject;)V

    goto :goto_3

    :pswitch_1e
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk(Lorg/json/JSONObject;)V

    goto :goto_3

    :pswitch_1f
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TzV()V

    goto :goto_3

    :pswitch_20
    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA(Lorg/json/JSONObject;)V

    goto :goto_3

    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->kF()V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    invoke-static {v3, v9, v6, v8}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    if-eqz v11, :cond_2b

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA:Lcom/bytedance/sdk/openadsdk/TEQ/TKC;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->EjP:Lorg/json/JSONObject;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa:Ljava/lang/String;

    iget v14, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk:I

    iget-boolean v15, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uvD:Z

    invoke-interface/range {v10 .. v15}, Lcom/bytedance/sdk/openadsdk/TEQ/TKC;->Sj(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_2b
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    invoke-static {v3, v6, v5, v8}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    :cond_2c
    :goto_3
    :pswitch_22
    if-ne v2, v4, :cond_2d

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->sP:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->sP:Ljava/lang/String;

    invoke-direct {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->RiZ()Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[JSB-RSP] version:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2d
    return-object v7

    :sswitch_data_0
    .sparse-switch
        -0x7966d06a -> :sswitch_22
        -0x54d5e48f -> :sswitch_21
        -0x4f555ebd -> :sswitch_20
        -0x45af975a -> :sswitch_1f
        -0x3d07124e -> :sswitch_1e
        -0x325352a1 -> :sswitch_1d
        -0x2fbc0e0e -> :sswitch_1c
        -0x2f57a591 -> :sswitch_1b
        -0x2aa0497d -> :sswitch_1a
        -0x1e7a3222 -> :sswitch_19
        -0x1d2a69be -> :sswitch_18
        -0x1097c80a -> :sswitch_17
        -0xa5b419e -> :sswitch_16
        0x1a8c298 -> :sswitch_15
        0x5a5ddf8 -> :sswitch_14
        0x642ec2f -> :sswitch_13
        0x17d08ce2 -> :sswitch_12
        0x18049cc9 -> :sswitch_11
        0x195bc1cf -> :sswitch_10
        0x1a6244d7 -> :sswitch_f
        0x220cf04c -> :sswitch_e
        0x26c16abe -> :sswitch_d
        0x281c12d3 -> :sswitch_c
        0x2a6ab279 -> :sswitch_b
        0x34c20a10 -> :sswitch_a
        0x420130f1 -> :sswitch_9
        0x44a639e2 -> :sswitch_8
        0x49bca8fc -> :sswitch_7
        0x5b52a418 -> :sswitch_6
        0x616caa3a -> :sswitch_5
        0x66233dc2 -> :sswitch_4
        0x673944c0 -> :sswitch_3
        0x7602ce9c -> :sswitch_2
        0x7c55d63c -> :sswitch_1
        0x7d77e304 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_22
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$sP;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->xD:Lcom/bytedance/sdk/openadsdk/aa/sP;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dwU:Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->UHs:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "time"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "flag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    const-string p1, "TTAD.AndroidObject"

    const-string v0, "requestPauseVideo json exception"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/aa/EjP;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf$7;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/aa/EjP;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/ib;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ib;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->vS:Z

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    const/4 v3, 0x2

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Dq:I

    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->TzV:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Jcg:Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    move-result-object p1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Yf$8;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/aa/EjP;)V

    invoke-interface {p1, v1, v2, p2, v3}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V

    return-void

    :cond_6
    :goto_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/aa/EjP;->Sj(ZLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    const-string p2, "TTAD.AndroidObject"

    const-string v0, "get ads error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->UHs:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public Sj(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "bytedance"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/Yf;->Dq:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method TEQ()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->qRN()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->TEQ:Ljava/lang/String;

    return-object p0
.end method

.method public TKC()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    return-void
.end method

.method public TKC(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->sP(I)V

    :cond_0
    return-void
.end method

.method public TKC(Lorg/json/JSONObject;)V
    .locals 8

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sef()Landroid/webkit/WebView;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Jcg:Lcom/bytedance/sdk/openadsdk/core/widget/HiB;

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/TzV;->Sj(Landroid/content/Context;ZLorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V

    return-void
.end method

.method public TKC(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC:Z

    return-void
.end method

.method public Ym()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->ib()Z

    return-void
.end method

.method public aa()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA:Lcom/bytedance/sdk/openadsdk/TEQ/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TEQ/TKC;->Sj()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sdp:Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sdp:Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;

    :cond_1
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->qRN:Landroid/content/Context;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->UHs:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    return-void
.end method

.method public adInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public appInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public changeVideoState(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Yf$2;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public chooseAdResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "video_choose"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "video_choose_duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->HpB:Lcom/bytedance/sdk/openadsdk/aa/Dq;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/aa/Dq;->Sj(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public clickEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Yf$3;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dynamicTrack(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getCurrentVideoState()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sef(Lorg/json/JSONObject;)Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    const-string v1, "getTemplateInfo"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v2, "setting"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->zR()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    const-string v3, "extension"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Grp()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dx:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public initRenderFinish()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sdp:Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sU:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    invoke-direct {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->sdp:Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "TTAD.AndroidObject"

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renderDidFinish(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Zq(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public sP()Lcom/bytedance/sdk/component/Sj/dNu;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Wjd:Lcom/bytedance/sdk/component/Sj/dNu;

    return-object v0
.end method

.method public sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk:I

    return-object p0
.end method

.method public sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->vS:Ljava/lang/String;

    return-object p0
.end method

.method public sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Mts:Z

    return-object p0
.end method

.method public sP(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "log_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "custom_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "log_event_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dispatch_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;

    const-string v1, "log_event_handleUri"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public skipVideo()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->jb:Z

    return v0
.end method

.method public vS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    return-void
.end method

.method public vS(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fmk:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sP(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->Fm:Ljava/lang/String;

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public vS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC:Z

    return v0
.end method

.method public videoFrameChanged(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->xhi:Lcom/bytedance/sdk/openadsdk/aa/Jcg;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;-><init>()V

    const-string v1, "videoInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "y"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "width"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "height"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->uvD(Lorg/json/JSONObject;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "borderRadiusTopLeft"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {p1, v9}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(F)V

    const-string v9, "borderRadiusTopRight"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {p1, v9}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(F)V

    const-string v9, "borderRadiusBottomLeft"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {p1, v9}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC(F)V

    const-string v9, "borderRadiusBottomRight"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v0, v9

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->EjP(F)V

    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC(D)V

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->EjP(D)V

    invoke-virtual {p1, v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->HiB(D)V

    invoke-virtual {p1, v7, v8}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS(D)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf;->xhi:Lcom/bytedance/sdk/openadsdk/aa/Jcg;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/aa/Jcg;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
