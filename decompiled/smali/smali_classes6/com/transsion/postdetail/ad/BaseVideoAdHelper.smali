.class public abstract Lcom/transsion/postdetail/ad/BaseVideoAdHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;
    }
.end annotation


# static fields
.field public static final R:Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private C:Lcom/tn/lib/view/bubbleview/BubbleTextView;

.field private D:Landroid/animation/AnimatorSet;

.field private E:I

.field private F:I

.field private final G:Lkotlin/Lazy;

.field private final H:Lkotlin/Lazy;

.field private final I:Lkotlin/Lazy;

.field private final J:Lkotlin/Lazy;

.field private final K:Lkotlin/Lazy;

.field private L:I

.field private final M:Lkotlin/Lazy;

.field private N:Lg4/a;

.field private O:Lcom/transsion/postdetail/ad/VideoFloatingView;

.field private P:Ljava/lang/String;

.field private Q:Z

.field private a:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private b:Ljava/lang/String;

.field private c:Lkotlin/jvm/functions/Function1;

.field private d:Lkotlin/jvm/functions/Function0;

.field private e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Z

.field private n:I

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/os/CountDownTimer;

.field private u:Landroid/os/CountDownTimer;

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R:Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    const-string v1, "bubble_tip_video_start"

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z:Ljava/lang/String;

    const-string v1, "bubble_tip_interpolate"

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A:Ljava/lang/String;

    const-string v1, "floating_show_time"

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B:Ljava/lang/String;

    new-instance v1, Lcom/transsion/postdetail/ad/q;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/q;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->G:Lkotlin/Lazy;

    new-instance v1, Lcom/transsion/postdetail/ad/r;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/r;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H:Lkotlin/Lazy;

    new-instance v1, Lcom/transsion/postdetail/ad/s;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/s;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I:Lkotlin/Lazy;

    new-instance v1, Lcom/transsion/postdetail/ad/t;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/t;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J:Lkotlin/Lazy;

    new-instance v1, Lcom/transsion/postdetail/ad/u;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/u;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K:Lkotlin/Lazy;

    new-instance v1, Lcom/transsion/postdetail/ad/v;

    invoke-direct {v1}, Lcom/transsion/postdetail/ad/v;-><init>()V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M:Lkotlin/Lazy;

    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c1()V

    return-void
.end method

.method public static final synthetic B(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public static final synthetic C(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M1(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public static final synthetic D(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->V1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public static final synthetic E(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Z1(Ljava/lang/String;)V

    return-void
.end method

.method private final E1(Landroid/view/ViewGroup;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "adVolumeImage"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    :cond_1
    if-eqz v0, :cond_6

    const p1, 0x800053

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p2, :cond_2

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_4

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    const/high16 p2, 0x41800000    # 16.0f

    if-eqz p1, :cond_3

    move p1, p2

    goto :goto_1

    :cond_3
    const/high16 p1, 0x41400000    # 12.0f

    :goto_1
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/high16 p2, 0x41200000    # 10.0f

    :goto_2
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz p1, :cond_5

    const/high16 p1, 0x42300000    # 44.0f

    goto :goto_3

    :cond_5
    const/high16 p1, 0x41e00000    # 28.0f

    :goto_3
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_6
    :goto_4
    return-void
.end method

.method public static final synthetic F(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e2()V

    return-void
.end method

.method private final F0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W()Lcom/transsion/postdetail/ui/view/AdCountDownView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/ad/d;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/d;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic G(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g2(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;

    move-result-object p0

    return-object p0
.end method

.method private static final G0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final G1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b2()V

    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private static final H0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k0()I

    move-result p0

    return p0
.end method

.method private static final H1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b2()V

    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F:I

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private static final I0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l0()I

    move-result p0

    return p0
.end method

.method private final I1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    new-instance v0, Lcom/transsion/postdetail/ad/g;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/g;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    new-instance v1, Lcom/transsion/postdetail/ad/h;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/h;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-direct {p0, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->U0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final J(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 1

    const-string v0, "VideoInterpolateBidScene"

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->X(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final J0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m0()I

    move-result p0

    return p0
.end method

.method private static final J1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c2()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final K(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 1

    const-string v0, "VideoStartBidScene"

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->X(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final K1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final L1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k:Z

    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r:Z

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic M(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L(ZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: checkMember"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final M1(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l:J

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcy/b;->a:Lcy/b;

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcy/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-virtual {v1, v2, v0, p2}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R0()V

    return-void
.end method

.method private final N0(IJ)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    int-to-long v0, p1

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final O1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final P1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final Q1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    if-eqz v0, :cond_0

    new-instance v7, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method static synthetic R1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showSceneAd"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final S()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    const-string v1, "VideoFloatingNativeScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "showMax"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method private final S0()Z
    .locals 2

    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n:I

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p0()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final T(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0xa47baab

    const/16 v2, 0xa

    if-eq v0, v1, :cond_4

    const v1, -0x462e08a

    if-eq v0, v1, :cond_2

    const v1, 0x7a28f02f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VideoEndBidScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {p1, v0}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "videoEndAdCountdownTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    goto :goto_1

    :cond_2
    const-string v0, "VideoStartBidScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {p1, v0}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "videoStartAdCountdownTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    goto :goto_1

    :cond_4
    const-string v0, "VideoInterpolateBidScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {p1, v0}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "videoInterpolateAdCountdownTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    :cond_6
    :goto_1
    return v2
.end method

.method private static final T1()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final U0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/ad/m;

    invoke-direct {v0, p1}, Lcom/transsion/postdetail/ad/m;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Lcom/transsion/postdetail/ad/n;

    invoke-direct {p1, p0, p2}, Lcom/transsion/postdetail/ad/n;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)V

    const-string p2, "VideoInterpolateBidScene"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final U1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b1()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final V0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final V1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k:Z

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcy/b;->a:Lcy/b;

    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v1, v3}, Lcy/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->V()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-virtual {v2, v3, v1, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g0()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s0()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/transsion/postdetail/ad/e;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/e;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    return-void
.end method

.method private static final W0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final W1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O()V

    return-void
.end method

.method private final X(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "bubbleFrequency"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method private static final Y1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b1()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final Z0(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, p2, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method private final Z1(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "VideoStartBidScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VideoInterpolateBidScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L:I

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h0()I

    move-result v0

    if-lt p1, v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N:Lg4/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lg4/a;->getRoot()Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_3

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance v1, Lcom/transsion/postdetail/ad/VideoFloatingView;

    sget-object v2, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3, v0}, Lcom/transsion/postdetail/ad/VideoFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O:Lcom/transsion/postdetail/ad/VideoFloatingView;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance v2, Lcom/transsion/postdetail/ad/p;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ad/p;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/transsion/postdetail/ad/VideoFloatingView;->show(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/constraintlayout/widget/ConstraintLayout;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_6
    return-void
.end method

.method public static synthetic a(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    return-void
.end method

.method private final a0(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final a2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 2

    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L:I

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Y1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final b1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final b2()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/wrapperad/R$id;->bubble_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tn/lib/view/bubbleview/BubbleTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x384

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iput-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D:Landroid/animation/AnimatorSet;

    :cond_1
    return-void

    :array_0
    .array-data 4
        -0x3df40000    # -35.0f
        0x41700000    # 15.0f
        -0x3df40000    # -35.0f
    .end array-data
.end method

.method public static synthetic c(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m1(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    return-void
.end method

.method private final c1()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    return-void
.end method

.method private final c2()V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o0()I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long v3, v0, v3

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/postdetail/ad/AdInterceptTimerView;->getBind()Lso/f;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Lso/f;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-direct {p0, v4, v5}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a0(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/postdetail/ad/AdInterceptTimerView;->getBind()Lso/f;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Lso/f;->f:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    new-instance v4, Lcom/transsion/postdetail/ad/k;

    invoke-direct {v4, p0}, Lcom/transsion/postdetail/ad/k;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;-><init>(JLcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/internal/Ref$LongRef;)V

    iput-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public static synthetic d()I
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->S()I

    move-result v0

    return v0
.end method

.method private final d1()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/transsion/wrapperad/R$id;->adChoicesViewCard:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x41800000    # 16.0f

    goto :goto_2

    :cond_2
    const/high16 v3, 0x41400000    # 12.0f

    :goto_2
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/hisavana/mediation/ad/TAdChoicesView;

    if-eqz v3, :cond_4

    check-cast v0, Lcom/hisavana/mediation/ad/TAdChoicesView;

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v3, :cond_6

    const/high16 v3, 0x41d00000    # 26.0f

    goto :goto_5

    :cond_6
    const/high16 v3, 0x41b00000    # 22.0f

    :goto_5
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    :cond_7
    if-eqz v1, :cond_8

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_8
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f1()V

    goto :goto_6

    :cond_9
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f1()V

    :cond_a
    :goto_6
    return-void
.end method

.method private static final d2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic e()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->T1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method private final e2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static synthetic f(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final f1()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W()Lcom/transsion/postdetail/ui/view/AdCountDownView;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x41400000    # 12.0f

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x41800000    # 16.0f

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v1, :cond_3

    const/high16 v2, 0x41600000    # 14.0f

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->getBind()Lso/q0;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v1, Lso/q0;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-boolean v4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v4, :cond_4

    const/high16 v4, 0x41e00000    # 28.0f

    goto :goto_2

    :cond_4
    const/high16 v4, 0x41c00000    # 24.0f

    :goto_2
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->getBind()Lso/q0;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v1, Lso/q0;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->getBind()Lso/q0;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Lso/q0;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v1, :cond_7

    const/high16 v1, 0x41900000    # 18.0f

    goto :goto_3

    :cond_7
    const/high16 v1, 0x41700000    # 15.0f

    :goto_3
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_8
    return-void
.end method

.method public static synthetic g(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->U1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final g2(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    move-result p0

    return p0
.end method

.method private final h1()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/wrapperad/R$id;->bubble_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tn/lib/view/bubbleview/BubbleTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41400000    # 12.0f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x42dc0000    # 110.0f

    goto :goto_2

    :cond_2
    const/high16 v1, 0x42b40000    # 90.0f

    :goto_2
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->setArrowPosition(F)V

    :cond_3
    return-void
.end method

.method public static synthetic i(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final j1()V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x41400000    # 12.0f

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x41800000    # 16.0f

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    iget-boolean v5, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v5, :cond_3

    const/high16 v5, 0x41600000    # 14.0f

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static synthetic k(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V

    return-void
.end method

.method private final k1()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B0()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    mul-double/2addr v1, v3

    const/16 v3, 0x10

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_3
    return-void
.end method

.method public static synthetic l(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    move-result p0

    return p0
.end method

.method private final l1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/wrapperad/R$id;->native_ad_media:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TMediaView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Lcom/transsion/postdetail/ad/o;

    invoke-direct {v1, v0, p0}, Lcom/transsion/postdetail/ad/o;-><init>(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public static synthetic m(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->G0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V

    return-void
.end method

.method private static final m1(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    iget-boolean p1, p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz p1, :cond_1

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const-string p1, "H,16:9"

    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TMediaView;->getMediaView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method public static synthetic n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->V0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->G1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    return-void
.end method

.method public static synthetic q(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    move-result p0

    return p0
.end method

.method private final q1()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B0()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    mul-double/2addr v1, v3

    const/16 v3, 0x10

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    return-void
.end method

.method public static synthetic r(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V

    return-void
.end method

.method private final r1()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    :cond_1
    const/high16 v2, 0x41800000    # 16.0f

    if-eqz v1, :cond_5

    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x42300000    # 44.0f

    goto :goto_1

    :cond_2
    const/high16 v3, 0x41e00000    # 28.0f

    :goto_1
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v3, :cond_3

    const/high16 v3, 0x42920000    # 73.0f

    goto :goto_2

    :cond_3
    const/high16 v3, 0x42500000    # 52.0f

    :goto_2
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    const/high16 v3, 0x41200000    # 10.0f

    :goto_3
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    const/high16 v1, 0x41400000    # 12.0f

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const/high16 v2, 0x40c00000    # 6.0f

    :goto_5
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    return-void
.end method

.method public static synthetic s(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final v1()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g0()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x43d50000    # 426.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x435b0000    # 219.0f

    :goto_0
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x43700000    # 240.0f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x42f60000    # 123.0f

    :goto_1
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    sget v1, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v2, :cond_3

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x42000000    # 32.0f

    goto :goto_3

    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    :goto_3
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x41600000    # 14.0f

    goto :goto_4

    :cond_6
    const/high16 v1, 0x41400000    # 12.0f

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_7
    return-void
.end method

.method public static final synthetic w(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a0(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic x(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic y(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Z0(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public static final synthetic z(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b1()V

    return-void
.end method

.method private final z0()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    const-string v1, "VideoStartBidScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "interval"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a0

    :goto_0
    const v1, 0xea60

    mul-int/2addr v0, v1

    return v0
.end method

.method private final z1()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y0()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x42300000    # 44.0f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41e00000    # 28.0f

    :goto_1
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    const/high16 v2, 0x41800000    # 16.0f

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    const/high16 v1, 0x41400000    # 12.0f

    :goto_2
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v2, 0x41200000    # 10.0f

    :goto_3
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_4
    return-void
.end method


# virtual methods
.method protected final A0()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    return-wide v0
.end method

.method protected final A1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j:Z

    return-void
.end method

.method protected abstract B0()Landroid/view/ViewGroup;
.end method

.method protected final B1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->i:Z

    return-void
.end method

.method protected final C0(JJ)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z0()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N0(IJ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->i:Z

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c0()I

    move-result p1

    invoke-direct {p0, p1, p3, p4}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N0(IJ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j:Z

    return-void
.end method

.method protected final C1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    return-void
.end method

.method protected final D0(Lg4/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N:Lg4/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg4/a;->getRoot()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F0()V

    sget-object p1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->s:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$Companion;

    sget-object p3, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    invoke-virtual {p3, p2}, Lcom/transsion/ad/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "VerticalPauseScene"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$Companion;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final D1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y:J

    return-void
.end method

.method protected final E0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "scene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->T0(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F:I

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L:I

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F:I

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L:I

    :goto_0
    return-void
.end method

.method protected final F1(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VideoStartBidScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x7d0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Z()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/transsion/postdetail/ad/b;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/b;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "VideoInterpolateBidScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F:I

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Y()I

    move-result v0

    if-lt p1, v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/transsion/postdetail/ad/c;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/c;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public H(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q:Z

    return-void
.end method

.method protected final I(Ljava/lang/String;)V
    .locals 7

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->T(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W()Lcom/transsion/postdetail/ui/view/AdCountDownView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->refreshCountDown(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q()V

    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long v5, v0, v4

    new-instance v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->t:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected final K0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    return v0
.end method

.method protected final L(ZLkotlin/jvm/functions/Function0;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-class p1, Lcom/transsion/commercializationapi/IInterceptReportApi;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercializationapi/IInterceptReportApi;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/commercializationapi/IInterceptReportApi;->h()V

    :cond_0
    const-class p1, Lcom/transsion/memberapi/IMemberApi;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/transsion/memberapi/MemberSource;->SOURCE_LANDSCAPE_PLAY:Lcom/transsion/memberapi/MemberSource;

    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;

    invoke-direct {v3, p0, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/memberapi/IMemberApi$a;->c(Lcom/transsion/memberapi/IMemberApi;Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected final L0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m:Z

    return v0
.end method

.method protected final M0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r:Z

    return v0
.end method

.method public final N(JLkotlin/jvm/functions/Function0;)V
    .locals 4

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y:J

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q:Z

    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->y:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;

    sget-object v1, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/ad/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "VideoEndBidScene"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x:J

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->S0()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x:J

    iget-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    :cond_3
    iget-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n0()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_4

    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I1()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected final N1()V
    .locals 13

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v0, :cond_0

    new-instance v4, Lcom/transsion/postdetail/ad/a;

    invoke-direct {v4, p0}, Lcom/transsion/postdetail/ad/a;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "LandscapePauseSceneNew"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/transsion/postdetail/ad/l;

    invoke-direct {v10, p0}, Lcom/transsion/postdetail/ad/l;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v8, "VerticalPauseScene"

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected final O()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    const-string v1, "LandscapePauseSceneNew"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    const-string v1, "VerticalPauseScene"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    :cond_1
    return-void
.end method

.method public final O0()Z
    .locals 1

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0}, Lox/e;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final P()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method protected final P0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k:Z

    return v0
.end method

.method protected final Q()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->t:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->t:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected final Q0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s:Z

    return v0
.end method

.method protected final R()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected final R0()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y0()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/baseui/R$mipmap;->ad_rotate:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y0()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/baseui/R$mipmap;->ad_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final S1(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    iget-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O0()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/transsion/postdetail/ad/i;

    invoke-direct {p1}, Lcom/transsion/postdetail/ad/i;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/ad/j;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/j;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    const-string v1, "VideoStartBidScene"

    invoke-direct {p0, v1, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b1()V

    :goto_0
    return-void
.end method

.method public final T0(Ljava/lang/String;Z)Z
    .locals 7

    const-string v0, "scene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zero_clock_timestamp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/common/util/l0;->c(J)J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    invoke-virtual {p2, p1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    return v1
.end method

.method protected final U()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    const-string v1, "VideoEndBidScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "threshold"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const v1, 0xea60

    mul-int/2addr v0, v1

    return v0
.end method

.method protected abstract V()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
.end method

.method protected abstract W()Lcom/transsion/postdetail/ui/view/AdCountDownView;
.end method

.method protected final X0(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 9

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g0()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    if-eqz v0, :cond_2

    new-instance v8, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;-><init>(Landroid/content/Context;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 p1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    move-object v6, v8

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    return-void
.end method

.method protected final X1(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->U()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O0()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/postdetail/ad/f;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/f;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    const-string v1, "VideoEndBidScene"

    invoke-direct {p0, v1, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b1()V

    :goto_1
    return-void
.end method

.method protected final Y()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected final Y0(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 9

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->V()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    if-eqz v0, :cond_2

    new-instance v8, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadNativeAd$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadNativeAd$1;-><init>(Landroid/content/Context;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 p1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    move-object v6, v8

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    return-void
.end method

.method protected final Z()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->G:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final a1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->w:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    sget-object v1, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/ad/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "LandscapePauseSceneNew"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O:Lcom/transsion/postdetail/ad/VideoFloatingView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/VideoFloatingView;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final b0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final c0()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    const-string v1, "VideoEndBidScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "interval"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a0

    :goto_0
    const v1, 0xea60

    mul-int/2addr v0, v1

    return v0
.end method

.method protected abstract d0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;
.end method

.method protected abstract e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
.end method

.method protected final e1(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method protected abstract f0()Landroid/view/ViewGroup;
.end method

.method public abstract f2()V
.end method

.method protected abstract g0()Landroid/view/ViewGroup;
.end method

.method protected final g1(Z)V
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v1()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->V()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E1(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z1()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E1(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h1()V

    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method protected final h0()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected final i0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final i1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    return-void
.end method

.method protected abstract j0()Landroid/view/View;
.end method

.method protected final k0()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    const-string v1, "VideoInterpolateBidScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "enterCountdown"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected final l0()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    const-string v1, "VideoInterpolateBidScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "frequency"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method protected final m0()I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    const-string v1, "VideoInterpolateBidScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "interval"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    const v1, 0xea60

    mul-int/2addr v0, v1

    return v0
.end method

.method public final n0()I
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q0()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o0()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final n1(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n:I

    return-void
.end method

.method protected final o0()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected final o1(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method protected final p0()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected final p1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m:Z

    return-void
.end method

.method protected final q0()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected final r0()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n:I

    return v0
.end method

.method protected abstract s0()Landroid/widget/ImageView;
.end method

.method protected final s1(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-void
.end method

.method protected final t0()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-object v0
.end method

.method protected final t1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r:Z

    return-void
.end method

.method protected final u0()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-object v0
.end method

.method protected final u1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    return-void
.end method

.method protected final v0()Landroidx/lifecycle/LifecycleCoroutineScope;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    return-object v0
.end method

.method protected final w0()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    return-wide v0
.end method

.method protected final w1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k:Z

    return-void
.end method

.method protected final x0()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p:I

    return v0
.end method

.method protected final x1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    return-void
.end method

.method protected abstract y0()Landroid/widget/ImageView;
.end method

.method protected final y1(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p:I

    return-void
.end method
