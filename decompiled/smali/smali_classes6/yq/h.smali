.class public final Lyq/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lyq/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyq/h;

    invoke-direct {v0}, Lyq/h;-><init>()V

    sput-object v0, Lyq/h;->a:Lyq/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Ljava/util/Map;
    .locals 4

    const-string v0, "hl"

    invoke-virtual {p0}, Lyq/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string v1, "client"

    const-string v2, "android"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final d(Ljava/lang/String;)Lcom/transsion/search/net/GoogleSuggestConfig;
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/search/net/GoogleSuggestConfig;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/net/GoogleSuggestConfig;

    invoke-virtual {p1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/transsion/search/net/GoogleSuggestConfig;

    invoke-virtual {p1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object p1

    :cond_2
    invoke-direct {v1, p1, v0}, Lcom/transsion/search/net/GoogleSuggestConfig;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    new-instance p1, Lcom/transsion/search/net/GoogleSuggestConfig;

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lyq/h;->a:Lyq/h;

    invoke-direct {v1}, Lyq/h;->b()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/transsion/search/net/GoogleSuggestConfig;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    :goto_4
    check-cast p1, Lcom/transsion/search/net/GoogleSuggestConfig;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {v0}, Lyg/b$a;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "en"

    :cond_1
    return-object v0
.end method

.method public final c()Lcom/transsion/search/net/GoogleSuggestConfig;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lak/g;->a:Lak/g;

    invoke-virtual {v1}, Lak/g;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "google_suggest_api_config_for_showbox"

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    const-string v1, "google_suggest_api_config"

    :goto_0
    sget-object v2, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v2}, Lsm/f$a;->a()Lsm/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    move-object v0, v1

    :goto_4
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_5

    :cond_3
    invoke-direct {p0, v0}, Lyq/h;->d(Ljava/lang/String;)Lcom/transsion/search/net/GoogleSuggestConfig;

    move-result-object v0

    goto :goto_6

    :cond_4
    :goto_5
    new-instance v0, Lcom/transsion/search/net/GoogleSuggestConfig;

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0}, Lyq/h;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/search/net/GoogleSuggestConfig;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    :goto_6
    return-object v0
.end method
