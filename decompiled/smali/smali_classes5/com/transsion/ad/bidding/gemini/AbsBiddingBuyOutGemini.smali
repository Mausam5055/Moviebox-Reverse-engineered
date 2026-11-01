.class public abstract Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
.super Ljava/lang/Object;

# interfaces
.implements Loi/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;


# instance fields
.field private a:Ldi/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Boolean;

.field private e:Z

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->g:Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->b:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->d:Ljava/lang/Boolean;

    new-instance v0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$myReceiver$1;

    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$myReceiver$1;-><init>(Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->p(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/transsion/ad/bidding/h5/BiddingBuyOutH5AdSourceActivity;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->c()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private final g()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.transsion.ad.bidding."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".click"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final h()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.transsion.ad.bidding."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".close"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.transsion.ad.bidding."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".display"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final j()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.transsion.ad.bidding."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".display_timestamp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final k()Ldi/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->a:Ldi/a;

    return-object v0
.end method

.method private final l()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.transsion.ad.bidding."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".resume"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final m()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.transsion.ad.bidding."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".rewarded"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final n()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.transsion.ad.bidding."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".show_error"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final p(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const-string v1, "ad_max_ecpm_object"

    if-lt p1, v0, :cond_0

    const-class p1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {p2, v1, p1}, Lcom/cloud/hisavana/sdk/common/activity/c;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    :goto_0
    const-string v0, "display_timestamp"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ldi/a;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ldi/a;->f(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ldi/a;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ldi/a;->c(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ldi/a;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ldi/a;->a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ldi/a;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ldi/a;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ldi/a;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1, v0, v1}, Ldi/a;->d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ldi/a;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ldi/a;->b(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ldi/a;

    move-result-object p2

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ldi/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr1/a;->e(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->s(Ldi/a;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e:Z

    return-void
.end method

.method public abstract c()Ljava/lang/Class;
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Loi/b$a;->a(Loi/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final o(Ljava/lang/Boolean;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Loi/b$a;->b(Loi/b;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final q()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lr1/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-object p0
.end method

.method public final r(Ljava/lang/Integer;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final s(Ldi/a;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->a:Ldi/a;

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final u(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    const-string v0, "sceneId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0, p3}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "scene_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ad_max_ecpm_object"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "app_layout_id"

    iget-object p3, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->c:Ljava/lang/Integer;

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "is_show_member_btn"

    iget-object p3, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "action_resume"

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "action_display"

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "action_click"

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "action_display_timestamp"

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->j()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "action_rewarded"

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "action_close"

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "show_error"

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->n()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->k()Ldi/a;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p3, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x66

    invoke-direct {p3, v1, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Ldi/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_2
    :goto_3
    return-void
.end method
