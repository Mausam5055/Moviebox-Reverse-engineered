.class public Lcom/bytedance/sdk/openadsdk/sU/Dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;
    }
.end annotation


# instance fields
.field private AVc:Ljava/lang/String;

.field private Aw:I

.field private Bml:I

.field private Chv:I

.field private volatile DKa:Z

.field private DKj:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private DPc:Z

.field private volatile DhB:Z

.field private final Dq:Landroid/os/Handler;

.field private EZ:I

.field private Ei:Ljava/lang/String;

.field public final EjP:Ljava/lang/String;

.field private FPG:J

.field private Fm:Ljava/lang/String;

.field private Fmk:Ljava/lang/Runnable;

.field private GJs:Ljava/lang/String;

.field private GMp:I

.field private Gn:Ljava/lang/String;

.field private Grp:I

.field private HS:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private HcZ:I

.field public final HiB:Ljava/lang/String;

.field private HpB:Ljava/lang/String;

.field private IOh:Ljava/lang/String;

.field private Ir:Landroid/content/Context;

.field private JcM:J

.field private final Jcg:Ljava/lang/String;

.field private LD:J

.field private LqL:I

.field private Mts:J

.field private MuB:I

.field private NPW:I

.field private Ov:Ljava/lang/String;

.field private Ph:I

.field private QZ:Ljava/lang/String;

.field private RiZ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private RrR:Ljava/lang/String;

.field private SP:Ljava/lang/String;

.field public final Sj:Ljava/lang/String;

.field private TEQ:Ljava/lang/Runnable;

.field private TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

.field public final TKC:Ljava/lang/String;

.field private TO:Ljava/lang/String;

.field private TX:I

.field private TzV:Z

.field private UHs:I

.field private Uc:I

.field private WMZ:J

.field private Wjd:J

.field private WxP:Z

.field private Xqg:F

.field private Yf:J

.field private Ym:Ljava/lang/Runnable;

.field private Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

.field private aNB:J

.field private aZ:Landroid/webkit/WebView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final aa:Landroid/os/Handler;

.field private cX:J

.field private dLt:Lorg/json/JSONObject;

.field private dNu:Z

.field private dU:Z

.field private db:I

.field private dwU:I

.field private dx:Ljava/lang/String;

.field private eEJ:Z

.field private eI:Ljava/lang/String;

.field private eMB:Lorg/json/JSONObject;

.field private fF:J

.field private gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

.field private gY:I

.field private gq:I

.field private hif:Z

.field private hzV:I

.field private ib:Z

.field private jb:Ljava/lang/String;

.field private jjS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private kF:Z

.field private kb:Lorg/json/JSONObject;

.field private ley:J

.field private liH:Lorg/json/JSONObject;

.field private mZN:Lcom/bytedance/sdk/openadsdk/sU/TKC;

.field private mj:I

.field private nP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ndK:Z

.field private nou:Ljava/lang/String;

.field private nru:I

.field private oWa:F

.field private pfr:Z

.field private qRN:I

.field private rB:Z

.field private ron:Z

.field public final sP:Ljava/lang/String;

.field private sU:Ljava/lang/String;

.field private sdp:I

.field private sef:Ljava/lang/Runnable;

.field private tPD:Z

.field private tX:I

.field private tY:Ljava/lang/String;

.field private tz:Lcom/bytedance/sdk/openadsdk/sU/vS;

.field private uA:Ljava/lang/Runnable;

.field private uP:Ljava/lang/String;

.field private uvD:Z

.field private final vS:Ljava/lang/String;

.field private vb:I

.field private vll:Ljava/lang/String;

.field private wE:J

.field private xD:J

.field private xhi:I

.field private xu:I

.field private xzt:Z

.field private zR:Z

.field private zwV:F


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "playable_stuck_check_ping"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vS:Ljava/lang/String;

    const-string v0, "playable_apply_media_permission_callback"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Jcg:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uvD:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dNu:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TzV:Z

    const-string v1, "PL_sdk_playable_global_viewable"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj:Ljava/lang/String;

    const-string v1, "PL_sdk_page_screen_blank"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP:Ljava/lang/String;

    const-string v1, "PL_sdk_playable_destroy_analyze_summary"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC:Ljava/lang/String;

    const-string v1, "PL_sdk_playable_hardware_dialog_cancel"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->EjP:Ljava/lang/String;

    const-string v1, "PL_sdk_playable_hardware_dialog_setting"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HiB:Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "subscribe_app_ad"

    const-string v3, "download_app_ad"

    const-string v4, "adInfo"

    const-string v5, "appInfo"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->RiZ:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sU:Ljava/lang/String;

    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dx:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ib:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kF:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uP:Ljava/lang/String;

    const-wide/16 v4, 0xa

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->wE:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ley:J

    const/16 v4, 0x2bc

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LqL:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Yf:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LD:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Mts:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Wjd:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xD:J

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Fm:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jb:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ei:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HpB:Ljava/lang/String;

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xhi:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->db:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ndK:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->qRN:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->UHs:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dwU:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sdp:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->MuB:I

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->IOh:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->pfr:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->EZ:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gY:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Chv:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Bml:I

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aNB:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->cX:J

    const/4 v1, -0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HcZ:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nru:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eMB:Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nP:Ljava/util/Map;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->liH:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->SP:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zwV:F

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Xqg:F

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dU:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->hif:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ron:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jjS:Ljava/util/List;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eEJ:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKj:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->NPW:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    sget-object p2, Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "playable_stuck_check_ping"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vS:Ljava/lang/String;

    const-string v0, "playable_apply_media_permission_callback"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Jcg:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uvD:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dNu:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TzV:Z

    const-string v1, "PL_sdk_playable_global_viewable"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj:Ljava/lang/String;

    const-string v1, "PL_sdk_page_screen_blank"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP:Ljava/lang/String;

    const-string v1, "PL_sdk_playable_destroy_analyze_summary"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC:Ljava/lang/String;

    const-string v1, "PL_sdk_playable_hardware_dialog_cancel"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->EjP:Ljava/lang/String;

    const-string v1, "PL_sdk_playable_hardware_dialog_setting"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HiB:Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "subscribe_app_ad"

    const-string v3, "download_app_ad"

    const-string v4, "adInfo"

    const-string v5, "appInfo"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->RiZ:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sU:Ljava/lang/String;

    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dx:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ib:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kF:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uP:Ljava/lang/String;

    const-wide/16 v4, 0xa

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->wE:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ley:J

    const/16 v4, 0x2bc

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LqL:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Yf:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LD:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Mts:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Wjd:J

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xD:J

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Fm:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jb:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ei:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HpB:Ljava/lang/String;

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xhi:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->db:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ndK:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->qRN:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->UHs:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dwU:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sdp:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->MuB:I

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->IOh:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->pfr:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->EZ:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gY:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Chv:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Bml:I

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aNB:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->cX:J

    const/4 v1, -0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HcZ:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nru:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eMB:Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nP:Ljava/util/Map;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->liH:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->SP:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zwV:F

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Xqg:F

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dU:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->hif:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ron:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jjS:Ljava/util/List;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eEJ:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKj:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->NPW:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aZ:Landroid/webkit/WebView;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/sU/uA;->Sj(Landroid/webkit/WebView;)V

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Landroid/view/View;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;)V

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/sU/Dq;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa:Landroid/os/Handler;

    return-object p0
.end method

.method private Ei()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Fmk:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sef:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj(I)V

    :cond_3
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/sU/Dq;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    return-object p0
.end method

.method private EjP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "rubeex://playable-minigamelite?id=%1s&schema=%2s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    return-object p1
.end method

.method private Fm()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/sP;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LqL:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/sU/sP;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$6;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$7;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Fmk:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$8;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sef:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$9;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ym:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic Fmk(Lcom/bytedance/sdk/openadsdk/sU/Dq;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->db:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->db:I

    return v0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/sU/Dq;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA:Ljava/lang/Runnable;

    return-object p0
.end method

.method private HiB(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "playable_url"

    if-nez p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jb()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Gn:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nou:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vll:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->GJs:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->EjP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    :goto_1
    const-string p1, "playable_render_type"

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->Sj(Lorg/json/JSONObject;)V

    return-void

    :cond_7
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->Sj(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    return-void
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/sU/Dq;)Lcom/bytedance/sdk/openadsdk/sU/sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aNB:J

    return-wide p1
.end method

.method public static Sj(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 7
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/sU/Dq;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/sU/Dq;-><init>(Landroid/content/Context;ILcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;)V

    return-object p1

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq;

    sget-object v6, Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/sU/Dq;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Dq;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HS:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;)V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sU:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->mZN:Lcom/bytedance/sdk/openadsdk/sU/TKC;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/sU/vS;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tz:Lcom/bytedance/sdk/openadsdk/sU/vS;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Fm()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aZ:Landroid/webkit/WebView;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->NPW:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/sU/Dq$4;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Dq;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    return p1
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/sU/Dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aNB:J

    return-wide v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/sU/Dq;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ:Ljava/lang/Runnable;

    return-object p0
.end method

.method private TKC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->RrR:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->SP:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->SP:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lynxview"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "playable_hash"

    const-string v3, "surl"

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->RrR:Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->RrR:Ljava/lang/String;

    return-object p1
.end method

.method private TKC(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/sU/Dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LqL:I

    return p0
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/sU/Dq;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xhi:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xhi:I

    return v0
.end method

.method private aa(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/union-fe/playable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/union-fe-sg/playable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/union-fe-i18n/playable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private jb()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->liH:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "/cid_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->liH:Lorg/json/JSONObject;

    const-string v2, "cid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/sU/Dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->cX:J

    return-wide p1
.end method

.method private sP(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HcZ:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nru:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HcZ:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nru:I

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "width"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HcZ:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nru:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "resize"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eMB:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v0, "PlayablePlugin"

    const-string v1, "resetViewDataJsonByView error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/sU/Dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/sU/Dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    return p1
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/sU/Dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->cX:J

    return-wide v0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/sU/Dq;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aZ:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public Dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    const-string v2, "result"

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->sP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->sP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public Dq(Ljava/lang/String;)V
    .locals 8

    const-string p1, "PlayablePlugin"

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const-string v4, "playable_page_show_duration"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    const-string v3, "reportUrlLoadStart error"

    invoke-static {p1, v3, v2}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string v2, "PL_sdk_html_load_start"

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eEJ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Yf()V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dNu:Z

    if-eqz v0, :cond_b

    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    sget v5, Lcom/bytedance/sdk/openadsdk/sU/HiB;->aa:I

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;I)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v4, :cond_3

    :try_start_2
    const-string v4, "Microphone_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    const-string v7, "android.permission.RECORD_AUDIO"

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->sP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Ym:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Magetometer_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/sU/HiB;->TEQ:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Accelerometer_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/sU/HiB;->uA:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Gyro_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Dq:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Camera_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    const-string v7, "android.permission.CAMERA"

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->sP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Jcg:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "Photo"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "playable_available_hardware_name"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "playable_available_hardware_code"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "playable_available_hardware_auth_code"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "PL_sdk_hardware_detect"

    invoke-virtual {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dNu:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_8
    const-string v1, "Hardware detect error"

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public Dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tPD:Z

    return v0
.end method

.method public EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->QZ:Ljava/lang/String;

    return-object p0
.end method

.method public EjP(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DPc:Z

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "send_click"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DPc:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "change_playable_click"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "setPlayableClick error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eI:Ljava/lang/String;

    return-object v0
.end method

.method public EjP(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tz:Lcom/bytedance/sdk/openadsdk/sU/vS;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/vS;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public EjP(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "section"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->IOh:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public FPG()I
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Fmk()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "getCameraPermission error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ov:Ljava/lang/String;

    return-object p0
.end method

.method public HiB(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eEJ:Z

    return-object p0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TO:Ljava/lang/String;

    return-object v0
.end method

.method public HiB(Lorg/json/JSONObject;)V
    .locals 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kb:Lorg/json/JSONObject;

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->MuB:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->MuB:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ym:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ib:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Wjd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aNB:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->cX:J

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aZ:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$10;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    const-string v1, "javascript:typeof playable_callJS === \'function\' && playable_callJS()"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "playable_stuck_check_ping"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ym:Ljava/lang/Runnable;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LqL:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public JcM()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method public Jcg(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 8

    const-string v0, "lynxview"

    const-string v1, "webview"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->SP:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "?"

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v4, :cond_6

    :try_start_1
    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    if-ne v0, v6, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(I)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(I)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    goto :goto_2

    :cond_4
    :goto_0
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(I)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    const-string v0, "url"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_5

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v0

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(I)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_7

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_7
    :goto_2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    return-object p0
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ov:Ljava/lang/String;

    return-object v0
.end method

.method public Jcg(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sef()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Fmk()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public LD()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "playable_jssdk_load_success_duration"

    if-lez v1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "PL_sdk_jssdk_load_success"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public LqL()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->cX:J

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj(J)V

    :cond_1
    return-void
.end method

.method public Mts()V
    .locals 11

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ron:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ron:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LD:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dNu:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ()V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKj:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tz:Lcom/bytedance/sdk/openadsdk/sU/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/vS;->sP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    goto :goto_0

    :catchall_2
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa:Landroid/os/Handler;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_3
    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "playable_all_times"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xhi:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "playable_hit_times"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->db:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xhi:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v4, "playable_hit_ratio"

    if-lez v3, :cond_4

    :try_start_4
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->db:I

    int-to-double v5, v5

    int-to-double v7, v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v7, v9

    div-double/2addr v5, v7

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_3
    const-string v3, "PL_sdk_preload_times"

    invoke-virtual {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF:J

    sub-long/2addr v2, v6

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Yf:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Yf:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF:J

    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "playable_user_play_duration"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Yf:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "PL_sdk_user_play_duration"

    invoke-virtual {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public RiZ()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->liH:Lorg/json/JSONObject;

    return-object v0
.end method

.method public Sj()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    return-object v0
.end method

.method public Sj(F)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->oWa:F

    return-object p0
.end method

.method public Sj(J)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->wE:J

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->wE:J

    :goto_0
    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TO:Ljava/lang/String;

    return-object p0
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nP:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tPD:Z

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "endcard_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tPD:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "volumeChange"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "setIsMute error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->NPW:I

    return-void
.end method

.method protected Sj(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM()V

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(ILjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "playable_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "PlayablePlugin"

    const-string v1, "reportRenderFatal error"

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "PL_sdk_global_faild"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Sj(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->AVc:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "playable_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_fail_url"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_has_show"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "PlayablePlugin"

    const-string p3, "onWebReceivedError error"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "PL_sdk_html_load_error"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    const-string p2, "ContainerLoadFail"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HS:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKj:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "setViewForScreenSize error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->mZN:Lcom/bytedance/sdk/openadsdk/sU/TKC;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/TKC;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->sP(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "resource_base64"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "resource_type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "resource_name"

    const-string v3, "playable_media"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Sj(ZLjava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->AVc:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "playable_code"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "playable_msg"

    const-string v0, "url load error"

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "playable_fail_url"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "playable_has_show"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string p3, "PlayablePlugin"

    const-string v0, "onWebReceivedHttpError error"

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p2, "PL_sdk_html_load_error"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    const-string p2, "ContainerLoadFail"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public TEQ()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "send_click"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DPc:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "getPlayableClickStatus error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public TEQ(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "playable_style"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dLt:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "setPlayableStyle error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public TKC(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->liH:Lorg/json/JSONObject;

    return-object p0
.end method

.method public TKC(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 6

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->NPW:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-ne v0, p1, :cond_1

    return-object p0

    :cond_1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-nez v0, :cond_2

    const-string v0, "playable_background_show_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gY:I

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-eqz v0, :cond_3

    const-string v0, "PL_sdk_viewable_true"

    goto :goto_0

    :cond_3
    const-string v0, "PL_sdk_viewable_false"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    const/4 v0, 0x1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-eqz p1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM:J

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "render_type"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->NPW:I

    if-ne v3, v0, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->NPW:I

    if-eq v2, v1, :cond_5

    const-string v1, "webview_state"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    const-string v1, "PL_sdk_page_show"

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_6
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM:J

    cmp-long p1, v1, v4

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dU:Z

    if-nez p1, :cond_7

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dU:Z

    :cond_7
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-eqz p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF:J

    goto :goto_2

    :cond_8
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Yf:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Yf:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF:J

    :cond_9
    :goto_2
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "viewStatus"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "viewableChange"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    const-string v0, "PlayablePlugin"

    const-string v1, "setViewable error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF()V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM()V

    :goto_4
    return-object p0
.end method

.method public TKC()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dLt:Lorg/json/JSONObject;

    return-object v0
.end method

.method public TKC(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "log_extra"

    const-string v1, "ad_extra_data"

    const-string v2, "playable_render_type"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ndK:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->db:I

    if-lez v3, :cond_2

    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ndK:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    :goto_0
    const-string v3, "PL_sdk_html_load_start"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "PL_sdk_html_load_finish"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "PL_sdk_html_load_error"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "usecache"

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->rB:Z

    invoke-virtual {p2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string v3, "playable_event"

    invoke-virtual {p2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "playable_viewable"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "playable_session_id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sU:Ljava/lang/String;

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    const-string v5, "playable_url"

    if-nez p1, :cond_6

    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    if-eq p1, v4, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jb()V

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    const/4 v6, 0x3

    if-eq p1, v6, :cond_9

    if-ne p1, v3, :cond_7

    goto :goto_1

    :cond_7
    if-eq p1, v4, :cond_8

    const/4 v4, 0x2

    if-ne p1, v4, :cond_a

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Gn:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nou:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vll:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->GJs:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->EjP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    :goto_2
    const-string p1, "playable_full_url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->SP:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_replay_count"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->qRN:I

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_is_prerender"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xzt:Z

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "playable_is_preload"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ndK:Z

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_scenes_type"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_gecko_key"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Gn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, ""

    if-eqz v4, :cond_b

    move-object v4, v6

    goto :goto_3

    :cond_b
    :try_start_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Gn:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_gecko_channel"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nou:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    :cond_c
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nou:Ljava/lang/String;

    :goto_4
    invoke-virtual {p2, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_sdk_version"

    const-string v4, "6.6.0"

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_minigamelite_id"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vll:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_minigamelite_schema"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->GJs:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_is_debug"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->hif:Z

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "playable_retry_count"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dwU:I

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_enter_from"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sdp:I

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_sequence"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->MuB:I

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "playable_current_section"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->IOh:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_playable_finish"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->pfr:Z

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "playable_card_session"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Fm:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_video_session"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jb:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_network_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uvD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playable_lynx_version"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uP:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "tag"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dx:Ljava/lang/String;

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "nt"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "category"

    const-string v4, "umeng"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "is_ad_event"

    const-string v4, "1"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "refer"

    const-string v4, "playable"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "value"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->liH:Lorg/json/JSONObject;

    const-string v6, "cid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->liH:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_14

    const/4 v3, -0x2

    if-ne v0, v3, :cond_d

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jjS:Ljava/util/List;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jjS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->Sj(Lorg/json/JSONObject;)V

    goto :goto_5

    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jjS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_10
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->Sj(Lorg/json/JSONObject;)V

    return-void

    :cond_12
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->Sj(Lorg/json/JSONObject;)V

    :cond_13
    return-void

    :cond_14
    :goto_6
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jjS:Ljava/util/List;

    if-nez p2, :cond_15

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jjS:Ljava/util/List;

    :cond_15
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jjS:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_7
    const-string p2, "PlayablePlugin"

    const-string v0, "reportEvent error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public TzV()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eMB:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eMB:Lorg/json/JSONObject;

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eMB:Lorg/json/JSONObject;

    return-object v0
.end method

.method public WMZ()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HcZ:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nru:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->oWa:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->mj:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ph:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->GMp:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->hzV:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TX:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vb:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Grp:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tX:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Aw:I

    return-void
.end method

.method public Wjd()Ljava/lang/String;
    .locals 1

    const-string v0, "function playable_callJS(){return \"Android call the JS method is callJS\";}"

    return-object v0
.end method

.method public Yf()V
    .locals 8

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->wE:J

    mul-long/2addr v6, v3

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aa(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ley:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public Ym()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tz:Lcom/bytedance/sdk/openadsdk/sU/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/vS;->Sj()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public Ym(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Zq()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "scene_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "safe_area_top_height"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zwV:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "safe_area_bottom_height"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Xqg:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "playable_enter_from"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sdp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playable_retry_count"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dwU:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playable_card_session"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Fm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playable_video_session"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->jb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playable_network_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uvD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aweme_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HpB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "playableInfo error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public aa()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "getCameraPermission error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public dNu()Lcom/bytedance/sdk/openadsdk/sU/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    return-object v0
.end method

.method public dx()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->sP()V

    :cond_0
    return-void
.end method

.method public fF()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ib:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Wjd:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gR:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;->EjP:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP;->sP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ei()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    if-nez v0, :cond_4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/sP;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LqL:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/sU/sP;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ei()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP;->sP()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ei()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    if-nez v0, :cond_4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/sP;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->LqL:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/sU/sP;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Zq:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ei()V

    :cond_4
    return-void
.end method

.method public ib()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->UHs:I

    return-void
.end method

.method public kF()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->pfr:Z

    return-void
.end method

.method public ley()V
    .locals 9

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "playable_material_first_frame_show_duration"

    if-lez v1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v1, v1, v3

    const-string v2, "playable_material_first_frame_load_duration"

    if-lez v1, :cond_1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_1
    const-string v1, "PL_sdk_material_first_frame_show"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public sP(I)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    return-object p0
.end method

.method public sP(J)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ley:J

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->ley:J

    :goto_0
    return-object p0
.end method

.method public sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->eI:Ljava/lang/String;

    return-object p0
.end method

.method public sP(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xzt:Z

    return-object p0
.end method

.method public sP()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->nP:Ljava/util/Map;

    return-object v0
.end method

.method public sP(ILjava/lang/String;)V
    .locals 5

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->UHs:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kb:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kb:Lorg/json/JSONObject;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kb:Lorg/json/JSONObject;

    const-string v1, "playable_stuck_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kb:Lorg/json/JSONObject;

    const-string v1, "playable_stuck_reason"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Wjd:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const-string v0, "playable_stuck_duration"

    if-lez p2, :cond_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Wjd:J

    sub-long/2addr v1, v3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kb:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kb:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    const-string p2, "PL_sdk_page_stuck"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kb:Lorg/json/JSONObject;

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->JcM()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->kb:Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public sP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p2, p1, v1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected sP(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HiB(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public sP(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "isPrevent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public sU()Lorg/json/JSONObject;
    .locals 8

    const-string v0, "y"

    const-string v1, "x"

    const-string v2, "height"

    const-string v3, "width"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "devicePixelRatio"

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->oWa:F

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->mj:I

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->gq:I

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "screen"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->GMp:I

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ph:I

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->hzV:I

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TX:I

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "webview"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Grp:I

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vb:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->tX:I

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Aw:I

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "visible"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "getViewport error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v4
.end method

.method public sef()Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ir:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "isHasRead"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isHasWrite"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "result"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :goto_2
    const-string v1, "PlayablePlugin"

    const-string v2, "getCameraPermission error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public uA(Ljava/lang/String;)V
    .locals 9

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    const-string v1, "PlayablePlugin"

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->AVc:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Mts:J

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    sub-long/2addr v3, v5

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    :goto_1
    const-string v0, "playable_html_load_start_duration"

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "playable_has_show"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v3, "reportUrlLoadFinish error"

    invoke-static {v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string v0, "PL_sdk_html_load_finish"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Uc:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uvD:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->aZ:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uvD:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Wjd()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/sU/Dq$11;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq$11;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    return-void

    :goto_4
    const-string v0, "crashMonitor error"

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public uA(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "success"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->fF()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xu:I

    :goto_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->zR:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DhB:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->DKa:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    const-string v0, "CaseRenderFail"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public uA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WxP:Z

    return v0
.end method

.method public uP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    :cond_0
    return-void
.end method

.method public uvD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/sU/EjP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/EjP;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ei:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ei:Ljava/lang/String;

    return-object v0
.end method

.method public vS(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dx:Ljava/lang/String;

    return-object p0
.end method

.method public vS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->QZ:Ljava/lang/String;

    return-object v0
.end method

.method public vS(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "The material directly invokes the exception pocket mask on the client"

    if-eqz p1, :cond_0

    const-string v1, "error_msg"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(ILjava/lang/String;)V

    return-void
.end method

.method public vS(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->rB:Z

    return-void
.end method

.method public wE()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TFd:Lcom/bytedance/sdk/openadsdk/sU/Sj;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq$Sj;

    :cond_0
    return-void
.end method

.method public xD()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->NPW:I

    return v0
.end method

.method public zR()V
    .locals 9

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "playable_material_interactable_duration"

    if-lez v1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->FPG:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v1, v1, v3

    const-string v2, "playable_material_interactable_load_duration"

    if-lez v1, :cond_1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->WMZ:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xD:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_1
    const-string v1, "PL_sdk_material_interactable"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method
