.class public final Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;
.super Lcom/cloud/tmc/miniapp/ui/WebViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;,
        Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;
    }
.end annotation


# static fields
.field public static final OooOOo0:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;


# instance fields
.field public OooO:I

.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:I

.field public OooO0OO:I

.field public final OooO0Oo:Ljava/lang/String;

.field public final OooO0o:Ljava/lang/String;

.field public final OooO0o0:Ljava/lang/String;

.field public final OooO0oO:I

.field public OooO0oo:Ljava/lang/String;

.field public OooOO0:Ljava/lang/String;

.field public OooOO0O:Ljava/lang/String;

.field public OooOO0o:Ljava/lang/String;

.field public OooOOO:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

.field public OooOOO0:Landroid/os/Bundle;

.field public OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

.field public OooOOOo:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOo0:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;-><init>()V

    const-string v0, "WebviewAdFormActivity"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0O0:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0OO:I

    const-string v0, "sspWebView"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0Oo:Ljava/lang/String;

    const-string v0, "height"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0o0:Ljava/lang/String;

    const-string v0, "formId"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0o:Ljava/lang/String;

    const/16 v0, 0x320

    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oO:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOo:J

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOo:J

    sub-long/2addr v1, v3

    const-string v3, "web_duration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOo:J

    const-string v3, "event_ts"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oo:Ljava/lang/String;

    const-string v2, "web_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->ad_web_callback:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    const-string v4, ""

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/ad/bean/FormBean;)V
    .locals 8

    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_FORM()Ljava/lang/String;

    move-result-object v2

    const-string v0, "Accept-Timezone"

    const-string v3, "UTC"

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v7, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;

    invoke-direct {v7, p0, p1}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;-><init>(Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;Lcom/cloud/tmc/ad/bean/FormBean;)V

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    const-string v2, "formPage"

    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "ad_click"

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "adFromPage"

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_0
    return-void
.end method

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public initData()V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_web_form_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_web_ad_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "adsDTO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pointData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0O:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v2, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$initData$gson$1;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$initData$gson$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;

    invoke-direct {v3}, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$initData$_dataMap$1;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$initData$_dataMap$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/cloud/tmc/integration/utils/BundleUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/BundleUtil;

    const-string v2, "_dataMap"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/BundleUtil;->parse(Ljava/util/Map;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0O:Ljava/lang/String;

    const-class v1, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0:Ljava/lang/String;

    const-class v1, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse AdForm info fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oO:I

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oo:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v0, Lcom/cloud/tmc/integration/utils/UrlUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/UrlUtil;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/cloud/tmc/integration/utils/UrlUtil;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "0"

    :cond_1
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0o:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/cloud/tmc/integration/utils/UrlUtil;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oO:I

    goto :goto_2

    :cond_3
    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/cloud/tmc/integration/utils/DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    iget v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oO:I

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMFlWb()Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    instance-of v4, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_6

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_5

    :cond_6
    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMFlWb()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getWb()Lcom/cloud/tmc/kernel/render/IWebView;

    move-result-object v0

    instance-of v2, v0, Lcom/cloud/tmc/render/system/SystemWebView;

    if-eqz v2, :cond_9

    check-cast v0, Lcom/cloud/tmc/render/system/SystemWebView;

    goto :goto_7

    :cond_9
    move-object v0, v3

    :goto_7
    const/4 v2, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    new-instance v4, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;

    iget v5, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO:I

    invoke-direct {v4, p0, v5}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;-><init>(Landroid/app/Activity;I)V

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    if-nez v0, :cond_b

    move-object v0, v4

    :cond_b
    invoke-static {v0}, Lcom/cloud/tmc/ad/TrackingManager;->isEagllwinLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/cloud/tmc/ad/TrackingManager;->INSTANCE:Lcom/cloud/tmc/ad/TrackingManager;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v6, Lcom/cloud/tmc/ad/bean/AdExtraBean;

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    if-nez v7, :cond_c

    goto :goto_8

    :cond_c
    move-object v4, v7

    :goto_8
    const-class v7, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-interface {v7}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "get(\n                   \u2026             ).sdkVersion"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v4, v1, v7}, Lcom/cloud/tmc/ad/bean/AdExtraBean;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v3, v5, v6, v2}, Lcom/cloud/tmc/ad/TrackingManager;->reportServerJoinField(Lcom/cloud/tmc/ad/bean/DownUpPointBean;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Lcom/cloud/tmc/ad/bean/AdExtraBean;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    move-result-object v3

    :cond_e
    if-nez v3, :cond_f

    goto :goto_9

    :cond_f
    move-object v4, v3

    :goto_9
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Ljava/lang/String;)V

    :cond_10
    :goto_a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oo:Ljava/lang/String;

    const-string v2, "pageUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->initData()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onDestroy()V

    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    const-string v2, "formPage"

    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "finish"

    const-string v3, "true"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v2, "adFromPage"

    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedTitle(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "super.shouldOverrideUrlLoading(view, request)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
