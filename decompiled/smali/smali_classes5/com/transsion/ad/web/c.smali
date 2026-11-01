.class public final Lcom/transsion/ad/web/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/web/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/web/c;

    invoke-direct {v0}, Lcom/transsion/ad/web/c;-><init>()V

    sput-object v0, Lcom/transsion/ad/web/c;->a:Lcom/transsion/ad/web/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/ad/web/b;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/transsion/ad/web/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/ad/web/H5AdStateEnum;

    invoke-virtual {p1}, Lcom/transsion/ad/web/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adConfig is empty"

    invoke-interface {p2, p1, v0}, Lcom/transsion/ad/web/b;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lorg/json/JSONObject;

    if-nez p1, :cond_1

    const-string p1, "{}"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "sceneId"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/transsion/ad/web/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/ad/web/H5AdStateEnum;

    invoke-virtual {p1}, Lcom/transsion/ad/web/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sceneId is empty"

    invoke-interface {p2, p1, v0}, Lcom/transsion/ad/web/b;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "adType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/transsion/ad/web/H5InterstitialAdProvider;->a:Lcom/transsion/ad/web/H5InterstitialAdProvider;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/ad/web/H5InterstitialAdProvider;->f(Ljava/lang/String;Lcom/transsion/ad/web/b;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/transsion/ad/web/H5VideoAdProvider;->a:Lcom/transsion/ad/web/H5VideoAdProvider;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/ad/web/H5VideoAdProvider;->h(Ljava/lang/String;Lcom/transsion/ad/web/b;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/transsion/ad/web/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/ad/web/H5AdStateEnum;

    invoke-virtual {v0}, Lcom/transsion/ad/web/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/transsion/ad/web/b;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
