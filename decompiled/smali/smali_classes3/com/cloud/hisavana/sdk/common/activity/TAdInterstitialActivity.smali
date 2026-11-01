.class public Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;,
        Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;,
        Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$k;
    }
.end annotation


# static fields
.field private static c0:Ljava/lang/ref/WeakReference;


# instance fields
.field private A:J

.field private B:I

.field private C:Z

.field private final D:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;

.field private E:Lcom/cloud/hisavana/sdk/r;

.field private F:Lcom/cloud/hisavana/sdk/common/util/v;

.field private G:Le7/e;

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:I

.field private M:I

.field private N:Z

.field private O:I

.field P:Z

.field private Q:Le7/d;

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

.field private a0:Landroid/animation/ObjectAnimator;

.field private b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

.field private b0:Ljava/lang/Runnable;

.field private c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

.field private d:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

.field private e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

.field private f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

.field private p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

.field private q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private r:Ljava/lang/String;

.field private s:F

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;

    invoke-direct {v1, p0, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->D:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;

    const/4 v1, -0x1

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N:Z

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y:I

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z:I

    return-void
.end method

.method private A()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :goto_0
    return-void
.end method

.method static synthetic A0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    return p1
.end method

.method private A1()V
    .locals 5

    const-string v0, "TAdInterstitialActivity"

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BroadCastPrefix"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mAdBean"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/util/b;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "TAdInterstitialActivity --> adMediaType == INVALID_TYPE"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_INVALID_TYPE:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbc6

    invoke-direct {p0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V0()V

    goto :goto_3

    :cond_3
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "TAdInterstitialActivity --> null == mAdBean || null == mAdBean.materialStyle"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_INTERSTITIAL_MISS_ELEMENT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbc5

    invoke-direct {p0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private B(F)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "I1107"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    sget v2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close_i1107:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open_i1107:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    sget p1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open:I

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method private B0()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/v2;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/v2;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setEndCardType(I)V

    return-void
.end method

.method private C(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "error_code"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "_error"

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic C0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    return-void
.end method

.method private D(Landroid/view/View;FFFF)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    new-array v2, v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    const/4 v4, 0x1

    aget v2, v2, v4

    iput v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v0

    iput v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/2addr p1, v0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    :try_start_2
    iget p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y:I

    int-to-float p1, p1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    iget p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z:I

    int-to-float p1, p1

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_4

    :cond_3
    iget p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    if-eq p1, v1, :cond_4

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    if-eq v0, v1, :cond_4

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    int-to-float p2, v0

    add-float/2addr p3, p2

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    add-float/2addr p4, p1

    iput p4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    add-float/2addr p5, p2

    iput p5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setLocationInfo error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TAdInterstitialActivity"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private D0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h1()V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/a0;

    invoke-direct {v1, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/a0;-><init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/16 p1, 0xbbd

    const-string v0, "interactive file not exists "

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method private E(Landroid/view/View;I)V
    .locals 12

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->close_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "I01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->count_down_view:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->iv_reward_rest:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    :try_start_0
    sget v5, Lcom/cloud/hisavana/sdk/R$id;->ad_close_container:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Lcom/cloud/hisavana/sdk/common/activity/n;

    invoke-direct {v6}, Lcom/cloud/hisavana/sdk/common/activity/n;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :goto_0
    move-object v8, v2

    move-object v11, v4

    goto :goto_1

    :cond_1
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->count_down_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->skip_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_d

    if-eqz v8, :cond_d

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-boolean v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v9, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v9, v1

    :goto_2
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/u;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/u;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "TAdInterstitialActivity"

    if-lez p2, :cond_b

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    if-nez v2, :cond_4

    goto/16 :goto_6

    :cond_4
    if-lez v2, :cond_5

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, p2

    :goto_3
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    :cond_6
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    const-string v4, "I91602"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->new_ad_progress:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_7
    iput-boolean v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*----> TAdInterstitialActivity --> get screen orientation error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Le7/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Le7/e;->d()V

    :cond_9
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->new_ad_progress:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    if-eqz v0, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    if-lez v0, :cond_a

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    sub-int/2addr v0, v1

    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_a
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;

    int-to-long v1, v2

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-object v10, p1

    invoke-direct/range {v1 .. v11}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;JJLandroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Le7/e;

    invoke-virtual {v0}, Le7/e;->g()Le7/e;

    return-void

    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "current close delay time is 0, do not count down."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_7
    return-void
.end method

.method static synthetic E0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v:Z

    return p0
.end method

.method private F(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic F0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t:Z

    return p1
.end method

.method static synthetic G(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic G0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic H(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;FFFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->D(Landroid/view/View;FFFF)V

    return-void
.end method

.method private H0()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i0(Landroid/view/View;Z)I

    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic I0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i0(Landroid/view/View;Z)I

    return-void
.end method

.method static synthetic J(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private J0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/v2;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->NO_MAIN_VIDEO_DATA_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t1()V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setVolumeView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b0(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic K(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private K0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*----> TAdInterstitialActivity --> get screen orientation error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TAdInterstitialActivity"

    invoke-virtual {v2, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/cloud/hisavana/sdk/R$style;->InterstitialFullscreenStyle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    sget p1, Lcom/cloud/hisavana/sdk/R$style;->AppCompatTranscutes:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    goto :goto_1

    :cond_2
    sget p1, Lcom/cloud/hisavana/sdk/R$style;->InterstitialStyle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    :goto_1
    return v0
.end method

.method private L(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRetentionEndCardRatio()I

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    if-ltz p1, :cond_8

    const/16 v0, 0x64

    if-le p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B0()V

    return-void

    :cond_6
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_7

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B0()V

    :cond_7
    return-void

    :cond_8
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRetentionEndCardRatio error,value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TAdInterstitialActivity"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    return-void
.end method

.method public static M(Lcom/cloud/hisavana/sdk/s3;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c0:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private synthetic M0(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/r;->s(Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U(Landroid/view/View;ZZ)I

    :goto_0
    return-void
.end method

.method private N(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/r;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/r;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/r;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/r;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/r;->j(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/r;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v3, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;

    invoke-direct {v3, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/r;->d(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/s4;)V

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    const-string v8, "utf-8"

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v7, "text/html"

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic N0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T:Z

    return p0
.end method

.method private O(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "mAdBean"

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "TAdInterstitialActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcast action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic O0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    return p0
.end method

.method private synthetic P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private P0()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    invoke-static {v0, v3, v2, v4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    const/4 v5, 0x3

    invoke-static {v0, v3, v5, v2, v4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/x;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/x;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method static synthetic Q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    return p0
.end method

.method private synthetic Q0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/N0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method static synthetic R(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    return p1
.end method

.method static synthetic R0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    return p0
.end method

.method private S(Landroid/view/View;)[I
    .locals 3

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/f0;->a(I)Lcom/cloud/hisavana/sdk/common/activity/f0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget p1, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    iget v0, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    return-object p1

    :cond_1
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->close_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_area_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->download_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->download_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->download_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->download_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->line_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ff_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ff_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ff_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ff_ps_mark_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget p1, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    iget v0, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method private S0()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private T(Landroid/view/View;Z)I
    .locals 11

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    const-string v3, "TAdInterstitialActivity"

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->btn_pop_confirm:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->btn:I

    if-eq v0, v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string v0, "pslink half setClickType, click_img"

    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string v0, "pslink half setClickType, click_install"

    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance p2, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    iget v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    iget v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    iget v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAllowTrackingADClick()Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    const-string v1, "_click"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1, v2, p2, v0, p1}, Lcom/cloud/hisavana/sdk/N0;->c(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;ZZ)I

    move-result p1

    return p1
.end method

.method private synthetic T0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    return-void
.end method

.method private U(Landroid/view/View;ZZ)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V(Landroid/view/View;ZZZ)I

    move-result p1

    return p1
.end method

.method static synthetic U0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    return p0
.end method

.method private V(Landroid/view/View;ZZZ)I
    .locals 8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    iget-boolean p4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N:Z

    if-nez p4, :cond_3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p3, :cond_1

    sget-object p4, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    new-instance v7, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    iget v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    invoke-virtual {p4, p3, v7}, Lcom/cloud/hisavana/sdk/common/util/r;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Le7/d;

    if-nez p1, :cond_2

    new-instance p1, Le7/d;

    new-instance p3, Lcom/cloud/hisavana/sdk/common/activity/s;

    invoke-direct {p3, p0, p2}, Lcom/cloud/hisavana/sdk/common/activity/s;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)V

    invoke-direct {p1, p0, p3}, Le7/d;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Le7/d;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, p2}, Le7/d;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Le7/d;

    invoke-virtual {p1}, Le7/d;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, La7/c;->j()Z

    move-result p4

    if-eqz p4, :cond_4

    sget p4, Lcom/cloud/hisavana/sdk/R$string;->hs_download_in_palm_store:I

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    :cond_4
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s(Landroid/view/View;ZZ)I

    move-result p1

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    if-eqz p2, :cond_8

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t(Landroid/view/View;ZZZ)I

    move-result p1

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    move-result p1

    :cond_8
    :goto_1
    return p1
.end method

.method private V0()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TAdInterstitialActivity"

    const-string v2, "TAdInterstitialActivity --> null == mAdBean |"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q1()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w1()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P0()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j0()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v0()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e1()V

    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/manager/a;->s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic W(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;Z)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i0(Landroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method private synthetic W0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    return-void
.end method

.method private X(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic X0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    return p0
.end method

.method private Y(Landroid/view/View;I)V
    .locals 11

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->close_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->count_down_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v9, :cond_6

    if-eqz v7, :cond_6

    if-nez v10, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    if-eqz v0, :cond_1

    :try_start_0
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->hs_btn_skip:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SKIP"

    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/r;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/r;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    if-lez p2, :cond_5

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Le7/e;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Le7/e;->d()V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$d;

    int-to-long v1, p2

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$d;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;JJLandroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Le7/e;

    invoke-virtual {v0}, Le7/e;->g()Le7/e;

    return-void

    :cond_5
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string v1, "TAdInterstitialActivity"

    const-string v2, "current close delay time is 0, do not count down."

    invoke-virtual {p2, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const-string p2, "#222222"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v9, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x8

    invoke-virtual {v7, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_6
    :goto_2
    return-void
.end method

.method private Y0()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "I91602"

    const-string v3, "I16902"

    const-string v4, "I16901"

    const-string v6, "I1107"

    const-string v8, "I1106"

    const-string v10, "I1103"

    const-string v11, "I1102"

    const-string v12, "I1101"

    const-string v14, "FA14"

    const-string v15, "I01"

    const/16 v16, -0x1

    const-string v5, "I91601"

    :try_start_0
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {v0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->content_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    new-instance v9, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    const/4 v7, 0x0

    invoke-direct {v9, v0, v7}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v7, Lcom/cloud/hisavana/sdk/common/activity/z;

    invoke-direct {v7, v0}, Lcom/cloud/hisavana/sdk/common/activity/z;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->llRoot:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v2

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    new-instance v9, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;

    invoke-direct {v9, v0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvDescription:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvSourceSize:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v7, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v7

    if-eqz v7, :cond_2f

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    if-nez v7, :cond_2

    goto/16 :goto_d

    :cond_2
    sget-object v7, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v9, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v7, v9}, Lcom/cloud/hisavana/sdk/common/util/r;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v9

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-object/from16 v17, v9

    const-string v9, " \u00b7 "

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_0
    move/from16 v13, v16

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_0

    :cond_3
    const/16 v13, 0xa

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_0

    :cond_4
    const/16 v13, 0x9

    goto :goto_1

    :sswitch_2
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_0

    :cond_5
    const/16 v13, 0x8

    goto :goto_1

    :sswitch_3
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_0

    :cond_6
    const/4 v13, 0x7

    goto :goto_1

    :sswitch_4
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_0

    :cond_7
    const/4 v13, 0x6

    goto :goto_1

    :sswitch_5
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_0

    :cond_8
    const/4 v13, 0x5

    goto :goto_1

    :sswitch_6
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_0

    :cond_9
    const/4 v13, 0x4

    goto :goto_1

    :sswitch_7
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    goto :goto_0

    :cond_a
    const/4 v13, 0x3

    goto :goto_1

    :sswitch_8
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_0

    :cond_b
    const/4 v13, 0x2

    goto :goto_1

    :sswitch_9
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_0

    :cond_c
    const/4 v13, 0x1

    goto :goto_1

    :sswitch_a
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_0

    :cond_d
    const/4 v13, 0x0

    :goto_1
    packed-switch v13, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z1()V

    goto :goto_2

    :pswitch_1
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z1()V

    :goto_2
    move-object/from16 v18, v14

    move-object/from16 v1, v17

    const/4 v6, 0x0

    const/4 v13, 0x3

    goto/16 :goto_a

    :pswitch_2
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    move-object/from16 v18, v14

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v13

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/common/util/r;->j()Ljava/lang/String;

    move-result-object v13

    :cond_e
    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v14, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    if-eqz v13, :cond_10

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    :cond_f
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v13

    const-string v14, "9:16"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_10
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/4 v13, 0x3

    goto/16 :goto_6

    :cond_12
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_3

    :cond_13
    move-object/from16 v3, v17

    const/4 v6, 0x0

    const/4 v13, 0x3

    goto/16 :goto_8

    :cond_14
    :goto_3
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    if-eqz v6, :cond_17

    invoke-virtual {v7, v6}, Lcom/cloud/hisavana/sdk/common/util/r;->g(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4

    :cond_15
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    if-eqz v6, :cond_17

    sget v6, Lcom/cloud/hisavana/sdk/R$id;->view_animator_bg_color:I

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_16

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    const-string v14, "#260052E2"

    invoke-virtual {v7, v13, v6, v14}, Lcom/cloud/hisavana/sdk/common/util/r;->p(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v6

    iput-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b0:Ljava/lang/Runnable;

    goto :goto_4

    :cond_16
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    const-string v14, "#4DFFFFFF"

    invoke-virtual {v7, v13, v6, v14}, Lcom/cloud/hisavana/sdk/common/util/r;->p(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v6

    iput-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b0:Ljava/lang/Runnable;

    :cond_17
    :goto_4
    iget v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    const/4 v13, 0x3

    if-ne v6, v13, :cond_1b

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    sget v7, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_btn_pull_live:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    if-eqz v3, :cond_19

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v7}, Lcom/cloud/hisavana/sdk/v2;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    move-result v7

    invoke-static {v7}, Lcom/cloud/hisavana/sdk/v2;->b(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1a
    :goto_5
    move-object/from16 v3, v17

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1b
    const/4 v14, 0x2

    if-ne v6, v14, :cond_1e

    if-eqz v3, :cond_1c

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    if-eqz v1, :cond_1d

    :try_start_2
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getSourceSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cloud/hisavana/sdk/common/util/r;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_1d
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    sget v3, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_btn_pull_new:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_1e
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    sget v3, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_btn_pull_live:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :goto_6
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_22

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v6}, Lcom/cloud/hisavana/sdk/v2;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/v2;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    move-result v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/v2;->b(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_1a

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_1f
    move-object/from16 v3, v17

    move-object v1, v3

    :goto_7
    invoke-direct {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_9

    :cond_20
    move-object/from16 v3, v17

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_21
    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_22
    move-object/from16 v3, v17

    const/4 v6, 0x0

    if-eqz v2, :cond_23

    invoke-direct {v0, v2, v3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_23
    :goto_8
    move-object v1, v3

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z1()V

    :goto_a
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :goto_b
    move/from16 v5, v16

    goto :goto_c

    :sswitch_b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_b

    :cond_24
    const/4 v5, 0x6

    goto :goto_c

    :sswitch_c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_b

    :cond_25
    const/4 v5, 0x5

    goto :goto_c

    :sswitch_d
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_b

    :cond_26
    const/4 v5, 0x4

    goto :goto_c

    :sswitch_e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_b

    :cond_27
    move v5, v13

    goto :goto_c

    :sswitch_f
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_b

    :cond_28
    const/4 v5, 0x2

    goto :goto_c

    :sswitch_10
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_b

    :cond_29
    const/4 v5, 0x1

    goto :goto_c

    :sswitch_11
    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_b

    :cond_2a
    move v5, v6

    :goto_c
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_3
    iget v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    if-eqz v2, :cond_2f

    invoke-direct {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_d

    :cond_2b
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2c
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :pswitch_4
    iget v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2e

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2d
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_2e
    if-eqz v2, :cond_2f

    invoke-direct {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_5
    if-eqz v2, :cond_2f

    invoke-direct {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_2f
    :goto_d
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1180a -> :sswitch_a
        0x20cc1e -> :sswitch_9
        0x41bb7ea -> :sswitch_8
        0x41bb7eb -> :sswitch_7
        0x41bb7ec -> :sswitch_6
        0x41bb7ef -> :sswitch_5
        0x41bb7f0 -> :sswitch_4
        0x7f5dad0c -> :sswitch_3
        0x7f5dad0d -> :sswitch_2
        0x7fcc17f6 -> :sswitch_1
        0x7fcc17f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x20cc1e -> :sswitch_11
        0x41bb7ea -> :sswitch_10
        0x41bb7eb -> :sswitch_f
        0x41bb7ec -> :sswitch_e
        0x41bb7ef -> :sswitch_d
        0x7f5dad0c -> :sswitch_c
        0x7fcc17f6 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic Z(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B(F)V

    return-void
.end method

.method private static synthetic Z0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c1(Landroid/view/View;)V

    return-void
.end method

.method private a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setProgressBarVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setAutoReset(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/q4;)V

    :cond_2
    return-void
.end method

.method static synthetic a1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/util/v;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    return-object p0
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i1(Landroid/view/View;)V

    return-void
.end method

.method private b0(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "setMediaData "

    const-string v2, "TAdInterstitialActivity"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X(Landroid/view/View;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v1, v4, :cond_2

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v3, "I91602"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/v2;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "9:16"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/v2;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v3

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v5}, Lcom/cloud/hisavana/sdk/v2;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v5

    if-lez v3, :cond_1

    if-lez v5, :cond_1

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->getDuration()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->seekToPosition(J)V

    :cond_3
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u:Z

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    if-eqz v1, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaData filePath "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    move v0, v4

    :cond_5
    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZ)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "I01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/w;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/w;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setCompanionSize(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private b1()V
    .locals 5

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ivCancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCloseDelayTime()I

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCloseDelayTime()I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCloseDelayTime()I

    move-result v1

    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current close delay time is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAdInterstitialActivity"

    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "close_button"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z0(Landroid/view/View;)V

    return-void
.end method

.method private c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/v;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/util/v$a;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/v;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    invoke-virtual {p1, p3}, Lcom/cloud/hisavana/sdk/common/util/v;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/v;->j(Z)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showRuDialog error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TAdInterstitialActivity"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic c1(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->D:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;

    invoke-virtual {v0, v1, p1, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C0(Landroid/view/View;)V

    return-void
.end method

.method private d0()Z
    .locals 12

    const/4 v0, 0x5

    const/4 v1, 0x0

    const-string v2, "I01"

    const/4 v3, 0x3

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v5

    iput v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v10, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_0
    move v0, v10

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "I91602"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "I91601"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "I16902"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "I16901"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    :sswitch_4
    const-string v0, "I1107"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_1

    :sswitch_5
    const-string v2, "I1106"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :sswitch_6
    const-string v0, "I1103"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_1

    :sswitch_7
    const-string v0, "I1102"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_1

    :sswitch_8
    const-string v0, "I1101"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v9

    goto :goto_1

    :sswitch_9
    const-string v0, "FA14"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v8

    goto :goto_1

    :sswitch_a
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v1

    :cond_a
    :goto_1
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_AD_MATERIAL_STYLE_NOT_MATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAdTemplateActivity --> \u6ca1\u6709\u5339\u914d\u5230 materialStyle --> \u914d\u7f6e\u9519\u8bef materialStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAdInterstitialActivity"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :pswitch_0
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_91602_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_b

    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :cond_b
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :pswitch_1
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_91601_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_c

    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :cond_c
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :pswitch_2
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_16902_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_d

    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :cond_d
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :pswitch_3
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_16901_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_e

    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :cond_e
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :pswitch_4
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1107_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_f

    iput v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto :goto_2

    :cond_f
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    :goto_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    goto/16 :goto_4

    :pswitch_5
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1106_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_10

    iput v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :cond_10
    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :pswitch_6
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1103_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_11

    iput v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :cond_11
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :pswitch_7
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1102_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_12

    iput v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :cond_12
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :pswitch_8
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1101_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_13

    iput v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :cond_13
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto/16 :goto_4

    :pswitch_9
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1104_1105_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_14

    iput v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto :goto_4

    :cond_14
    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto :goto_4

    :pswitch_a
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_01_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_15

    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto :goto_3

    :cond_15
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    :goto_3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N:Z

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    goto :goto_4

    :cond_16
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iput-boolean v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N:Z

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_01_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v0, v9, :cond_17

    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto :goto_4

    :cond_17
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto :goto_4

    :cond_18
    sget v2, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_adm_layout:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    if-ne v2, v9, :cond_19

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    goto :goto_4

    :cond_19
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    :goto_4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1180a -> :sswitch_a
        0x20cc1e -> :sswitch_9
        0x41bb7ea -> :sswitch_8
        0x41bb7eb -> :sswitch_7
        0x41bb7ec -> :sswitch_6
        0x41bb7ef -> :sswitch_5
        0x41bb7f0 -> :sswitch_4
        0x7f5dad0c -> :sswitch_3
        0x7f5dad0d -> :sswitch_2
        0x7fcc17f6 -> :sswitch_1
        0x7fcc17f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method static synthetic d1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    return-object p0
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    return p0
.end method

.method private e1()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->content_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    return p1
.end method

.method private synthetic f1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i0(Landroid/view/View;Z)I

    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    return p1
.end method

.method static synthetic g1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    return-object p0
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v1()V

    return-void
.end method

.method private h0(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T(Landroid/view/View;Z)I

    move-result p1

    return p1
.end method

.method private h1()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create webview error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAdInterstitialActivity"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j1()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "I1107"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "I91601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "I91602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "I16902"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "I01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "I16901"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v0, ""

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v2, :cond_6

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X(Landroid/view/View;)V

    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    return-void
.end method

.method public static synthetic i(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w0(Landroid/view/View;)V

    return-void
.end method

.method private i0(Landroid/view/View;Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V(Landroid/view/View;ZZZ)I

    move-result p1

    return p1
.end method

.method private synthetic i1(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T:Z

    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/r;->s(Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U(Landroid/view/View;ZZ)I

    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f1(Landroid/view/View;)V

    return-void
.end method

.method private j0()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/p;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/p;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setListener(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView$b;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$dimen;->ad_disclaimer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/q;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/q;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v0()V

    :cond_3
    :goto_0
    return-void
.end method

.method private j1()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$k;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$k;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    return-void
.end method

.method public static synthetic k(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M0(Landroid/view/View;)V

    return-void
.end method

.method private k0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private k1(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static synthetic l(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic l0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    return p0
.end method

.method static synthetic l1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H0()V

    return-void
.end method

.method public static synthetic m(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u:Z

    return p1
.end method

.method private m1()V
    .locals 3

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_choices_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/v;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/v;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_badge_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->d:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/f0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v1

    sget-object v2, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/t2;->p()Lcom/cloud/hisavana/sdk/t2;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, p0, v1, p0, v2}, Lcom/cloud/hisavana/sdk/t2;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    const-string v2, "I1107"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const-string v1, "#FFFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const v2, -0x878788

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public static synthetic n(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r0(Landroid/view/View;)V

    return-void
.end method

.method private n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "I91601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "I16901"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "I91602"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "I16902"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "I01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method static synthetic n1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x1()V

    return-void
.end method

.method public static synthetic o(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    return p1
.end method

.method static synthetic o1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    return p0
.end method

.method public static synthetic p(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method static synthetic p0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    return-object p0
.end method

.method private p1()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->ad_interstitial_end_card_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S(Landroid/view/View;)[I

    move-result-object v1

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->close_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$e;

    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$e;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/high16 v5, 0x40800000    # 4.0f

    const/16 v6, 0x8

    const/4 v7, -0x1

    if-eqz v3, :cond_0

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k1(Landroid/view/View;)V

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v3

    const/4 v8, 0x4

    if-ne v3, v8, :cond_1

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-direct {v3, p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v8, v9, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    sget v8, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Lcom/cloud/hisavana/sdk/common/activity/b0;

    invoke-direct {v8, p0}, Lcom/cloud/hisavana/sdk/common/activity/b0;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-direct {v3, p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v8, v9, v4, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    sget v8, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Lcom/cloud/hisavana/sdk/common/activity/c0;

    invoke-direct {v8, p0}, Lcom/cloud/hisavana/sdk/common/activity/c0;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->btn:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v8

    iget-object v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$f;

    invoke-direct {v8, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$f;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ff_btn:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ff_ps_mark_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    sget v8, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-direct {p0, v8}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k1(Landroid/view/View;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/v2;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/v2;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v5}, Lcom/cloud/hisavana/sdk/v2;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    move-result v5

    invoke-static {v5}, Lcom/cloud/hisavana/sdk/v2;->b(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->download_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v5}, Lcom/cloud/hisavana/sdk/v2;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/cloud/hisavana/sdk/common/util/c0;->b(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    goto/16 :goto_4

    :cond_7
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_area_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/v2;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    const/high16 v10, 0x3f000000    # 0.5f

    if-lez v6, :cond_8

    cmpg-float v6, v3, v10

    if-gez v6, :cond_8

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon1:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_8
    cmpl-float v6, v3, v10

    const/high16 v10, 0x3f800000    # 1.0f

    if-ltz v6, :cond_9

    cmpg-float v6, v3, v10

    if-gez v6, :cond_9

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon1:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_9
    cmpl-float v6, v3, v10

    const/high16 v10, 0x3fc00000    # 1.5f

    if-ltz v6, :cond_a

    cmpg-float v6, v3, v10

    if-gez v6, :cond_a

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_a
    cmpl-float v6, v3, v10

    const/high16 v10, 0x40000000    # 2.0f

    if-ltz v6, :cond_b

    cmpg-float v6, v3, v10

    if-gez v6, :cond_b

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_b
    cmpl-float v6, v3, v10

    const/high16 v10, 0x40200000    # 2.5f

    if-ltz v6, :cond_c

    cmpg-float v6, v3, v10

    if-gez v6, :cond_c

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_c
    cmpl-float v6, v3, v10

    const/high16 v10, 0x40400000    # 3.0f

    if-ltz v6, :cond_d

    cmpg-float v6, v3, v10

    if-gez v6, :cond_d

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_d
    cmpl-float v6, v3, v10

    const/high16 v10, 0x40600000    # 3.5f

    if-ltz v6, :cond_e

    cmpg-float v6, v3, v10

    if-gez v6, :cond_e

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_e
    cmpl-float v6, v3, v10

    if-ltz v6, :cond_f

    cmpg-float v6, v3, v5

    if-gez v6, :cond_f

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_f
    cmpl-float v5, v3, v5

    const/high16 v6, 0x40900000    # 4.5f

    if-ltz v5, :cond_10

    cmpg-float v5, v3, v6

    if-gez v5, :cond_10

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_10
    cmpl-float v5, v3, v6

    if-ltz v5, :cond_11

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_11

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    :goto_3
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    goto :goto_4

    :cond_12
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x3

    iput v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    :goto_4
    new-instance v3, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    invoke-direct {v3, p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/o;

    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/common/activity/o;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_6

    :cond_13
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->content_layout:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_15

    if-eqz v1, :cond_14

    array-length v3, v1

    if-ne v3, v8, :cond_14

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    aget v5, v1, v9

    aget v1, v1, v4

    invoke-direct {v3, v5, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    goto :goto_5

    :cond_14
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v3, v7, v7}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_15
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    iput-boolean v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setEndCardType(I)V

    return-void
.end method

.method static synthetic q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    return p1
.end method

.method private q0()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const-string v1, "TAdInterstitialActivity"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "attachAdmView adBean is null"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v2, "attachAdmView scale is empty,finish"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v3, :cond_4

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<script>   window.addEventListener(\n          \"error\",\n          function (e) {\n            var target = e.srcElement;\n            var tagName = target.tagName || \"\";\n            if (tagName && tagName.toUpperCase() === \"IMG\" && target) {\n              const isShow = window.getComputedStyle(target).display != \"none\";\n              const isShow1 = window.getComputedStyle(target).visibility != \"hidden\";\n              const { width, height } = target.getBoundingClientRect();\n              const hasWidth = typeof width == \"number\" && width > 1;\n              const hasHeight = typeof height == \"number\" && height > 1;\n              if (hasWidth && hasHeight && isShow && isShow1) {\n                 window.loadError&&window.loadError.loadMaterialError&&window.loadError.loadMaterialError(target.src);\n              }\n            }\n          },\n          true\n        );\n        </script>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    if-nez v2, :cond_5

    :try_start_0
    new-instance v2, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create webview error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    return-void

    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X(Landroid/view/View;)V

    return-void
.end method

.method private q1()V
    .locals 1

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->iv_main_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b1()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m1()V

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p1()V

    :cond_0
    return-void
.end method

.method private r(Landroid/view/View;Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s(Landroid/view/View;ZZ)I

    move-result p1

    return p1
.end method

.method private static synthetic r0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic r1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    return p0
.end method

.method private s(Landroid/view/View;ZZ)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t(Landroid/view/View;ZZZ)I

    move-result p1

    return p1
.end method

.method private s0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$g;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$g;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use image to show ad is:= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAdInterstitialActivity"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method private t(Landroid/view/View;ZZZ)I
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "TAdInterstitialActivity"

    const-string v3, "asyncAction"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    if-eqz p4, :cond_4

    :cond_0
    if-eqz p2, :cond_2

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p1()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "_close"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T(Landroid/view/View;Z)I

    move-result v0

    :cond_3
    :goto_0
    iput-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v0
.end method

.method static synthetic t0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v:Z

    return p1
.end method

.method private t1()V
    .locals 2

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->im_volume:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B(F)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    return p1
.end method

.method static synthetic u0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    return p1
.end method

.method static synthetic u1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Le7/e;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Le7/e;

    return-object p0
.end method

.method static synthetic v(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h0(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private v0()V
    .locals 1

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_flag:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method private synthetic v1()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/f0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/common/util/f0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic w(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;Z)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method private synthetic w0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    return-void
.end method

.method private w1()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->D0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q0()V

    :goto_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y1()V

    return-void
.end method

.method static synthetic x(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;ZZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U(Landroid/view/View;ZZ)I

    move-result p0

    return p0
.end method

.method private x0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    const/4 v3, 0x2

    invoke-static {v0, p1, v3, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use image to show ad is:= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAdInterstitialActivity"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private x1()V
    .locals 4

    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/s3;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->d:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->v()Lcom/cloud/hisavana/sdk/J0;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v1}, Lcom/cloud/hisavana/sdk/m0;->a(Lcom/cloud/hisavana/sdk/J0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic y(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;ZZZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V(Landroid/view/View;ZZZ)I

    move-result p0

    return p0
.end method

.method static synthetic y0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u:Z

    return p0
.end method

.method private y1()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/y;

    invoke-direct {v1, p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/y;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private synthetic z(Z)Lkotlin/Unit;
    .locals 2

    invoke-static {}, La7/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/cloud/hisavana/sdk/R$string;->hs_download_in_palm_store:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s(Landroid/view/View;ZZ)I

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method static synthetic z0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T:Z

    return p1
.end method

.method private z1()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/t;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/t;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public L0()V
    .locals 2

    const-string v0, "_close"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TAdInterstitialActivity"

    const-string v2, "sendBroadcast(TAG_CLOSE);"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "_close"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, La7/c;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, La7/c;->n()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "mAdBean"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/e;->g(Landroid/content/Context;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INIT_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1782

    invoke-direct {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    invoke-static {}, La7/c;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A1()V

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "_close"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    const-string v0, "_destroy"

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;->destroy()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/r;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/r;->c()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/r;

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->release()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    :cond_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    if-eqz v0, :cond_6

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    :cond_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    :cond_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Le7/e;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Le7/e;->d()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Le7/e;

    :cond_8
    sput-object v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c0:Ljava/lang/ref/WeakReference;

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Le7/d;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Le7/d;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Le7/d;

    invoke-virtual {v0}, Le7/d;->dismiss()V

    :cond_9
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Le7/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0:Landroid/animation/ObjectAnimator;

    :cond_b
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b0:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/cloud/hisavana/sdk/common/util/r;->n(Landroid/view/View;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_c
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TAdInterstitialActivity"

    const-string v2, "onNewIntent ----------------------->"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A1()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Le7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le7/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Le7/d;

    invoke-virtual {v0}, Le7/d;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause dismiss bubble dialog failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAdInterstitialActivity"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A()V

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P:Z

    invoke-static {}, La7/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/cloud/hisavana/sdk/R$string;->hs_interstitial_breadk_ended:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
