.class public Lcom/cloud/hisavana/sdk/t2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/t2$c;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/t2;->a:J

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/t2;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/t2;->h(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/t2;)J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/t2;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/t2;J)J
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/t2;->a:J

    return-wide p1
.end method

.method private synthetic h(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/cloud/hisavana/sdk/t2;->l(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V

    return-void
.end method

.method private i(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tag_ad_bean"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_0
    const-string p3, "close_hash_code"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    instance-of p3, p1, Landroid/app/Activity;

    if-nez p3, :cond_1

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/t2;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t2;->m(Ljava/lang/Object;)V

    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/t2$b;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p1, "clipboard"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p4, p1, Landroid/content/ClipboardManager;

    if-eqz p4, :cond_4

    check-cast p1, Landroid/content/ClipboardManager;

    sget p4, Lcom/cloud/hisavana/sdk/R$string;->copy_link:I

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Lcom/cloud/hisavana/sdk/common/util/f0;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p1, p3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    sget p1, Lcom/cloud/hisavana/sdk/R$string;->copy_successfully:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ssp"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lcom/cloud/hisavana/sdk/common/util/f0;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/t2;->j(Landroid/content/Context;Ljava/lang/String;)V

    instance-of p1, p4, Lcom/cloud/hisavana/sdk/i1;

    if-eqz p1, :cond_4

    check-cast p4, Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/i1;->O()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p4, p3}, Lcom/cloud/hisavana/sdk/t2;->i(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    instance-of p1, p4, Lcom/cloud/hisavana/sdk/i1;

    if-eqz p1, :cond_4

    check-cast p4, Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/i1;->O()V

    :cond_4
    :goto_0
    return-void
.end method

.method private m(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/i1;->B0()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/p3;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/cloud/hisavana/sdk/p3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->P()V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/u3;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t2;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/cloud/hisavana/sdk/u3;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/u3;->R(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static p()Lcom/cloud/hisavana/sdk/t2;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/t2$c;->a:Lcom/cloud/hisavana/sdk/t2;

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t2;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/t2;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t2;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/t2;->m(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/t2;->g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    return-void
.end method

.method public g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 8

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp"

    const-string v2, "AdCloseManager -------> registerCloseAd ---- >"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/cloud/hisavana/sdk/t2$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/t2$a;-><init>(Lcom/cloud/hisavana/sdk/t2;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLandroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t2;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t2;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public o(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/t2$b;->a:[I

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p4, 0x2

    if-eq v1, p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/t2;->i(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lcom/cloud/hisavana/sdk/common/util/f0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/s2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/cloud/hisavana/sdk/s2;-><init>(Lcom/cloud/hisavana/sdk/t2;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V

    invoke-static {p4, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->i(Landroid/view/View;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)Landroid/widget/PopupWindow;

    move-result-object p1

    instance-of p3, p2, Lcom/cloud/hisavana/sdk/i1;

    if-eqz p3, :cond_4

    check-cast p2, Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/i1;->c0(Landroid/widget/PopupWindow;)V

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method public q(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t2;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public r()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/t2;->a:J

    return-wide v0
.end method
