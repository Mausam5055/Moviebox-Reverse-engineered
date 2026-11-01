.class public Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;
.super Lcom/cloud/tmc/miniapp/base/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

.field public static final TAG:Ljava/lang/String; = "AppBrandProfileActivity"


# instance fields
.field private appDesc:Ljava/lang/String;

.field private appDeveloper:Ljava/lang/String;

.field private appLogoUrl:Ljava/lang/String;

.field private appModel:Lcom/cloud/tmc/integration/model/AppModel;

.field private appName:Ljava/lang/String;

.field private appRegisterType:Ljava/lang/String;

.field private appReleaseTime:J

.field private appVersion:Ljava/lang/String;

.field private final ivLogo$delegate:Lkotlin/Lazy;

.field private final mLayoutTitle$delegate:Lkotlin/Lazy;

.field private final sbAccountType$delegate:Lkotlin/Lazy;

.field private final sbDeveloperName$delegate:Lkotlin/Lazy;

.field private final sbUpdate$delegate:Lkotlin/Lazy;

.field private final sbVersion$delegate:Lkotlin/Lazy;

.field private final tvDesc$delegate:Lkotlin/Lazy;

.field private final tvName$delegate:Lkotlin/Lazy;

.field private final tvPrivacyPolicy$delegate:Lkotlin/Lazy;

.field private final tvUserAgreement$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$mLayoutTitle$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$mLayoutTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->mLayoutTitle$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$ivLogo$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$ivLogo$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->ivLogo$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvName$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvName$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvName$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvDesc$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvDesc$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvDesc$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbDeveloperName$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbDeveloperName$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbDeveloperName$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbVersion$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbVersion$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbVersion$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbUpdate$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbUpdate$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbUpdate$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbAccountType$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbAccountType$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbAccountType$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvPrivacyPolicy$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvPrivacyPolicy$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvPrivacyPolicy$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvUserAgreement$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvUserAgreement$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvUserAgreement$delegate:Lkotlin/Lazy;

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    return-void
.end method

.method private final getIvLogo()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->ivLogo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->mLayoutTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    return-object v0
.end method

.method private final getSbAccountType()Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbAccountType$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;

    return-object v0
.end method

.method private final getSbDeveloperName()Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbDeveloperName$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;

    return-object v0
.end method

.method private final getSbUpdate()Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbUpdate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;

    return-object v0
.end method

.method private final getSbVersion()Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbVersion$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;

    return-object v0
.end method

.method private final getTvDesc()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvDesc$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvName()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvName$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvPrivacyPolicy()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvPrivacyPolicy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvUserAgreement()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvUserAgreement$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static final launch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;->launch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final toDate(J)Ljava/lang/String;
    .locals 5

    const-string v0, "ar"

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd"

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "dd MMM, yyyy"

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "millis2String(releaseTime, formatter)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_1
    const-string p2, "Tmc"

    const-string v0, "appModel is null"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method


# virtual methods
.method public final getAppDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppDeveloper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppModel()Lcom/cloud/tmc/integration/model/AppModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppRegisterType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppReleaseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    return-wide v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_app_brand_profile:I

    return v0
.end method

.method public hideStatusLoading()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 10

    const-string v0, "appId"

    const-string v1, "AppBrandProfileActivity"

    const-string v2, ""

    :try_start_0
    const-string v3, "initData"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "miniAppName"

    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    const-string v0, "appinfoDesc"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    const-string v0, "appinfoLogo"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_2
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    const-string v0, "appinfoRegisterType"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    const-string v0, "appinfoDeveloper"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v2

    :cond_4
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    const-string v0, "appinfoReleaseTime"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-class v4, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v3

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "appModel is null"

    if-nez v3, :cond_9

    :try_start_1
    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appId is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/cloud/tmc/kernel/constants/TmcConstants;->INSTANCE:Lcom/cloud/tmc/kernel/constants/TmcConstants;

    invoke-virtual {v5}, Lcom/cloud/tmc/kernel/constants/TmcConstants;->getKEY_MINIAPP_INFO_ADD_HOME()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p0, v0, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addHomeInfo -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    const-class v5, Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v3, v0, v5}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/AppModel;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    return-void

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    move-object v3, v2

    :cond_a
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v3, v5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move-object v3, v2

    :cond_b
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDesc()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move-object v3, v2

    :cond_c
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move-object v3, v2

    :cond_d
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getRegisterType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    move-object v3, v2

    :cond_e
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloper()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move-object v3, v2

    :cond_f
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getReleaseTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_3
    :try_start_2
    invoke-static {v1, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_5
    :try_start_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getIvLogo()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v6

    if-eqz v6, :cond_11

    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v7

    sget v9, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    move-object v4, p0

    move v8, v9

    invoke-interface/range {v3 .. v9}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V

    :cond_11
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvName()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_6

    :cond_12
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_13

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvDesc()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->setMultilingualText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    const-string v3, "1"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_15

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbDeveloperName()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbAccountType()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_brand_individual:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_15
    const-string v3, "2"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbDeveloperName()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbDeveloperName()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbAccountType()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_brand_business:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_18
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbAccountType()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_9

    :cond_19
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    :goto_9
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbVersion()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    iget-wide v6, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbUpdate()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_b

    :cond_1c
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_1d
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbUpdate()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_a

    :cond_1e
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbUpdate()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    invoke-direct {p0, v3, v4}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->toDate(J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_b

    :catchall_2
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_b
    return-void
.end method

.method public initView()V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$initView$1;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$initView$1;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setonBackClickListener(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setTitleLineHeight(I)V

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvPrivacyPolicy()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvUserAgreement()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getIvLogo()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->setOnClickListener([Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvPrivacyPolicy()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    const-string p1, "https://h5.dlight-app.com/outside/privacy-policy?lang="

    invoke-static {p1, p0}, Lcom/cloud/tmc/integration/net/UrlKt;->appendCommonParamUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;->launch$default(Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvUserAgreement()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    const-string p1, "https://h5.dlight-app.com/outside/user-agreement?lang="

    invoke-static {p1, p0}, Lcom/cloud/tmc/integration/net/UrlKt;->appendCommonParamUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;->launch$default(Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getIvLogo()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/cloud/tmc/miniapp/FwDevDownloadUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/FwDevDownloadUtils;

    invoke-virtual {p1, p0}, Lcom/cloud/tmc/miniapp/FwDevDownloadUtils;->init(Lcom/cloud/tmc/miniapp/base/BaseActivity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "AppBrandProfileActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    const-string v0, "AppBrandProfileActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "AppBrandProfileActivity"

    const-string v0, "onNewIntent"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->initData()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onStart()V

    const-string v0, "AppBrandProfileActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onStop()V

    const-string v0, "AppBrandProfileActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAppDesc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    return-void
.end method

.method public final setAppDeveloper(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    return-void
.end method

.method public final setAppLogoUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public final setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setAppRegisterType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    return-void
.end method

.method public final setAppReleaseTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public showStatusLoading()V
    .locals 0

    return-void
.end method
