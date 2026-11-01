.class public Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;
    }
.end annotation


# instance fields
.field Dq:Z

.field EjP:Landroid/webkit/WebView;

.field Fmk:F

.field HiB:I

.field Jcg:Z

.field private LD:J

.field private final LqL:Ljava/lang/String;

.field RiZ:J

.field Sj:Landroid/content/Context;

.field TEQ:I

.field TKC:Ljava/lang/String;

.field TzV:Z

.field private final Yf:Ljava/lang/String;

.field Ym:F

.field Zq:F

.field aa:F

.field dNu:Z

.field dx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private fF:Z

.field ib:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field kF:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

.field private final ley:Z

.field sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field sU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field sef:F

.field uA:Ljava/lang/String;

.field uP:Landroid/view/GestureDetector;

.field uvD:J

.field vS:I

.field private final wE:Landroid/os/Handler;

.field zR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/utils/LqL;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->wE:Landroid/os/Handler;

    const-string v0, "landingpage"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS:I

    const-string v0, ".*\\/serp\\?sc=.*&clkt=\\d+$"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->LqL:Ljava/lang/String;

    const-string v0, ".*\\/\\?caf_results=.*&clkt=\\d+$"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Yf:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->kF:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uP:Landroid/view/GestureDetector;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Ir()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->HiB:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sU:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->zR:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ib:Ljava/util/List;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ley:Z

    return-void
.end method

.method private Dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ley:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    :cond_0
    return-void
.end method

.method private EjP()V
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Ym:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->aa:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->HiB(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Zq:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->vS(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->RiZ:J

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Jcg(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->wE:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private EjP(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    return-void
.end method

.method private HiB()Z
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    const-string v0, ".*\\/serp\\?sc=.*&clkt=\\d+$"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".*\\/\\?caf_results=.*&clkt=\\d+$"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :goto_1
    const-string v1, "WebArbitrageBehavior"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private Jcg()Z
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->HiB:I

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "landingpage"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "landingpage_endcard"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "landingpage_split_screen"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "landingpage_direct"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "landingpage_split_ceiling"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->LD:J

    return-wide p1
.end method

.method private Sj(ILjava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sU:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    invoke-virtual {v5, p2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p2

    sub-long/2addr v0, v2

    long-to-float p3, v0

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Dq(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->uA(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj(ILjava/lang/String;I)V

    return-void
.end method

.method private TKC(I)V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->vS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Ym:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->aa:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->RiZ:J

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object p1

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->fF:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->Sj(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->Sj(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->wE:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Dq()V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->LD:J

    return-wide v0
.end method

.method private sP(I)V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ib:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->ib:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->zR:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v0

    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->TEQ(F)Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    return-void
.end method

.method private sP(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Fmk:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sef:F

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->aa:F

    sub-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Zq:F

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private vS()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP(I)V

    return-void
.end method

.method public Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dx:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dNu:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->EjP(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->dNu:Z

    return-void

    :cond_1
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TzV:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->EjP()I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Sj(ILjava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TzV:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->TKC(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg:Z

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TzV:Z

    :cond_3
    return-void
.end method

.method public Sj(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uP:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC(I)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uvD:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->RiZ:J

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sP(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP()V

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC(I)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Ym:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->aa:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uvD:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TKC:Ljava/lang/String;

    return-void
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->kF:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    return-object v0
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Jcg:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TzV:Z

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "query="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const-string v1, "&"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-le v1, v0, :cond_1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sP()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->EjP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->uA:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->Dq()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->sU:Ljava/util/Map;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->zR:Ljava/util/Map;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->TEQ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->HiB()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS;->fF:Z

    return-void
.end method
