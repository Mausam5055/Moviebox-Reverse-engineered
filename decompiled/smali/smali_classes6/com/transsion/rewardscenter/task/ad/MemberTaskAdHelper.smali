.class public final Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;
.super Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;

.field public static final s:I

.field private static final t:Lkotlin/Lazy;

.field private static final u:Lkotlin/Lazy;


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:Lkotlinx/coroutines/n0;

.field private i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

.field private j:Lkotlin/jvm/functions/Function1;

.field private k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

.field private l:Lkotlin/jvm/functions/Function1;

.field private m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private n:Lkotlin/jvm/functions/Function1;

.field private final o:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;

.field private final p:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;

.field private final q:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->r:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->s:I

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/e;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->t:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/f;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->u:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;-><init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    new-instance p1, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;

    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->o:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;

    new-instance p1, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;

    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->p:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;

    new-instance p1, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;

    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->q:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;

    return-void
.end method

.method public static synthetic B()I
    .locals 1

    invoke-static {}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->b0()I

    move-result v0

    return v0
.end method

.method public static synthetic C()I
    .locals 1

    invoke-static {}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->a0()I

    move-result v0

    return v0
.end method

.method public static final synthetic D(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->W(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic E(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic F(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic G()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->u:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic H()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->t:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic I(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->l:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic J(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-object p0
.end method

.method public static final synthetic K(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    return-object p0
.end method

.method public static final synthetic L(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->n:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic M(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->q:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;

    return-object p0
.end method

.method public static final synthetic N(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->j:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic O(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-object p0
.end method

.method public static final synthetic P(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lcom/transsion/ad/bidding/video/BiddingVideoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    return-void
.end method

.method private final T()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_0
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->V()V

    :cond_1
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-void
.end method

.method private final U()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_0
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_1
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    return-void
.end method

.method private final V()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_0
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->V()V

    :cond_1
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-void
.end method

.method private final W(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 11

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "MemberTaskAdHelper ----> "

    const-string v3, "Regular"

    const-string v4, "Stage"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    sget-object v5, Llg/a;->a:Llg/a$a;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v4

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loaded item, packageName: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "StageTaskAd"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$filterAds$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$filterAds$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {p0, v6}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    sget-object v6, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p0, v5}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, p1, v5}, Lcom/transsion/rewardscenter/task/ad/u;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    sget-object v5, Llg/a;->a:Llg/a$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v4

    goto :goto_4

    :cond_6
    move-object v1, v3

    :goto_4
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " filtered item, packageName: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "StageTaskAd"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    return-object p2
.end method

.method private static final a0()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    const-string v1, "MemberTaskRegularNativeScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final b0()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    const-string v1, "MemberTaskStageNativeScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final Q(Lcom/transsion/rewardscenter/task/ad/v$a;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->n(Z)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "StageTaskAd"

    const-string v3, "MemberTaskAdHelper ----> bindRegularNativeAd"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->R()V

    :cond_1
    new-instance v0, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->p(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/d0;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/d0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->l(Lcom/transsion/ad/bidding/base/r;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/w;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->q(Lcom/transsion/ad/bidding/base/u;)V

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->h()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->d()Lcom/transsion/ad/bidding/base/r;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->j()Lcom/transsion/ad/bidding/base/u;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_2
    return-void
.end method

.method public final R()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    const-string v1, "MemberTaskRegularNativeScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->p:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    return-void
.end method

.method public final S()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    const-string v1, "MemberTaskStageNativeScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->o:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    return-void
.end method

.method public final X(Lkotlin/jvm/functions/Function1;)V
    .locals 6

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->l:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->u()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->t()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->T()V

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->R()V

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadRegularAd$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadRegularAd$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method public final Y(Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->n:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->U()V

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadRewardAd$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadRewardAd$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public final Z(Lkotlin/jvm/functions/Function1;)V
    .locals 6

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->j:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->v()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->V()V

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadStageAd$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadStageAd$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method public c(Lcom/transsion/rewardscenter/task/ad/v$c;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->n(Z)V

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->S()V

    :cond_1
    new-instance v0, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->p(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/d0;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/d0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->l(Lcom/transsion/ad/bidding/base/r;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/w;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->r(Lcom/transsion/ad/bidding/base/u;)V

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->h()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->d()Lcom/transsion/ad/bidding/base/r;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->k()Lcom/transsion/ad/bidding/base/u;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d()V

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_0
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_1
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->U()V

    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->j:Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->l:Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method
