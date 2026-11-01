.class public final Lyv/f;
.super Ljava/lang/Object;


# static fields
.field public static final o:Lyv/d;

.field public static volatile p:Lyv/f;


# instance fields
.field public a:Lvv/b;

.field public b:Lcom/transsion/upgradesdk/bean/UpgradeData;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

.field public g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

.field public h:Z

.field public i:Lcom/transsion/upgradesdk/page/f;

.field public j:Law/i;

.field public k:J

.field public l:Z

.field public m:Ljava/util/List;

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyv/d;

    invoke-direct {v0}, Lyv/d;-><init>()V

    sput-object v0, Lyv/f;->o:Lyv/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyv/f;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    sget-object v0, Lbw/i;->b:Lbw/h;

    sget-object v1, Lxv/a;->a:Landroid/app/Application;

    const/4 v2, 0x0

    const-string v3, "application"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v1

    const-string v4, "KV_UPGRADE_LAST_SUCCESS_VERSION"

    const-string v5, "key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4, v6, v7}, Lcom/tencent/mmkv/MMKV;->h(Ljava/lang/String;J)J

    move-result-wide v6

    :cond_1
    invoke-virtual {p0}, Lyv/f;->e()Lvv/b;

    move-result-object v1

    iget-wide v8, v1, Lvv/b;->d:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_9

    sget-object v1, Lxv/a;->a:Landroid/app/Application;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v1

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4, v8, v9}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    :cond_3
    sget-object v1, Lxv/a;->a:Landroid/app/Application;

    if-eqz v1, :cond_4

    move-object v2, v1

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, v2}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v0

    const-string v1, "KV_UPGRADE_POPUP_TIMES"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->s(Ljava/lang/String;I)Z

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u68c0\u6d4b\u5230\u7248\u672c\u53d8\u5316\uff0c\u66f4\u65b0\u5b58\u50a8\u7248\u672c: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    const-string v2, "UpgradeSdkManager"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    sget-wide v2, Lbw/g;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    goto :goto_3

    :cond_7
    sput-wide v0, Lbw/g;->b:J

    const-string v0, "upgradeSdkLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    sput-boolean v0, Lbw/g;->a:Z

    :cond_8
    :goto_3
    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    iget-boolean v0, v0, Lyv/f;->d:Z

    :cond_9
    return-void
.end method

.method public final b(I)V
    .locals 10

    const-string v0, "UpgradeSdkManager"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    sget-object v2, Lxv/a;->a:Landroid/app/Application;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "application"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_7

    :catch_0
    :cond_2
    :goto_1
    const-string p1, "tag"

    const-string v2, "msg"

    const-string v4, "requestCdnConfig error: \u7f51\u7edc\u672a\u94fe\u63a5"

    invoke-static {v0, p1, v4, v2}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    sget-boolean p1, Lbw/g;->a:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    sget-wide v6, Lbw/g;->b:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1388

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    sput-wide v4, Lbw/g;->b:J

    const-string p1, "upgradeSdkLog"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    sput-boolean v1, Lbw/g;->a:Z

    :cond_5
    sget-boolean p1, Lbw/g;->a:Z

    :goto_2
    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    iget-boolean v0, v0, Lyv/f;->d:Z

    const-string p1, "1"

    const/16 v0, 0x14

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {v1, v2, v3, p1, v0}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz p1, :cond_6

    const-string v0, "INTERNET_ERROR"

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/16 v9, 0x70

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v5, "1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {p0}, Lyv/f;->e()Lvv/b;

    move-result-object v2

    const-string v3, "requestCdnConfig \u5f00\u59cb\u8bf7\u6c42CDN\u914d\u7f6e"

    invoke-static {v0, v3}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lzv/d;->d:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzv/d;

    iget-object v2, v2, Lvv/b;->a:Ljava/lang/String;

    new-instance v4, Lcom/transsion/upgradesdk/manager/g;

    invoke-direct {v4, p0, p1}, Lcom/transsion/upgradesdk/manager/g;-><init>(Lyv/f;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "pkgName"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput v1, v3, Lzv/d;->c:I

    sget-object p1, Lyv/c;->d:Lyv/a;

    invoke-virtual {p1}, Lyv/a;->a()Lyv/c;

    move-result-object v5

    iget-object v5, v5, Lyv/c;->b:Ljava/lang/String;

    sget-object v6, Lyv/f;->o:Lyv/d;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CDN - gslbCountryCode1 : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    invoke-virtual {v5}, Lyv/f;->e()Lvv/b;

    move-result-object v5

    iget-object v5, v5, Lvv/b;->h:Ljava/lang/String;

    :cond_8
    invoke-virtual {p1}, Lyv/a;->a()Lyv/c;

    move-result-object p1

    iput-object v5, p1, Lyv/c;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "CDN - gslbCountryCode2 : "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_9

    const-string p1, "IN"

    invoke-static {v5, p1, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v1, :cond_9

    const-string p1, "\u4f7f\u7528\u5370\u5ea6CDN\u63a5\u53e3"

    invoke-static {v0, p1}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v3, Lzv/d;->a:Lzv/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lzv/i;->a(Ljava/lang/String;J)Lretrofit2/d;

    move-result-object p1

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_a

    const-string p1, "RU"

    invoke-static {v5, p1, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v1, :cond_a

    const-string p1, "\u4f7f\u7528EE1CDN\u63a5\u53e3"

    invoke-static {v0, p1}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v3, Lzv/d;->a:Lzv/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lzv/i;->b(Ljava/lang/String;J)Lretrofit2/d;

    move-result-object p1

    goto :goto_3

    :cond_a
    const-string p1, "\u4f7f\u7528\u9ed8\u8ba4CDN\u63a5\u53e3"

    invoke-static {v0, p1}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v3, Lzv/d;->a:Lzv/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lzv/i;->c(Ljava/lang/String;J)Lretrofit2/d;

    move-result-object p1

    :goto_3
    new-instance v0, Lzv/b;

    invoke-direct {v0, v3, v4}, Lzv/b;-><init>(Lzv/d;Lcom/transsion/upgradesdk/manager/g;)V

    invoke-interface {p1, v0}, Lretrofit2/d;->h(Lretrofit2/f;)V

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v3, "key"

    const-string v4, "toJson(...)"

    const-string v5, "obj"

    const-string v10, "application"

    const-string v11, "UpgradeSdkManager"

    const-string v13, "upgradeSdkLog"

    const-wide/16 v14, 0x1388

    const-string v6, "msg"

    const-string v7, "tag"

    const/4 v2, 0x3

    if-eqz v1, :cond_30

    sget-object v9, Lbw/i;->b:Lbw/h;

    sget-object v18, Lxv/a;->a:Landroid/app/Application;

    if-eqz v18, :cond_0

    move-object/from16 v12, v18

    goto :goto_0

    :cond_0
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v9, v12}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v9

    sget-object v12, Lbw/f;->a:Lcom/google/gson/Gson;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lbw/f;->a:Lcom/google/gson/Gson;

    invoke-virtual {v12, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "KV_UPGRADE_LOCAL_CDN_DATA"

    invoke-virtual {v9, v8, v12}, Lbw/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CDN\u6570\u636e\u5f00\u59cb\u6821\u9a8c  step1-1: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-boolean v12, Lbw/g;->a:Z

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    sget-wide v19, Lbw/g;->b:J

    sub-long v19, v8, v19

    cmp-long v19, v19, v14

    if-gez v19, :cond_2

    goto :goto_1

    :cond_2
    sput-wide v8, Lbw/g;->b:J

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    sput-boolean v8, Lbw/g;->a:Z

    :cond_3
    sget-boolean v12, Lbw/g;->a:Z

    :goto_1
    sget-object v8, Lyv/f;->o:Lyv/d;

    invoke-virtual {v8}, Lyv/d;->a()Lyv/f;

    move-result-object v8

    iget-boolean v8, v8, Lyv/f;->d:Z

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-eqz v8, :cond_9

    sget-object v9, Lyv/f;->o:Lyv/d;

    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v12

    iget-boolean v12, v12, Lyv/f;->e:Z

    const-string v2, "filter  ->> \u5f53\u524d\u7248\u672c\u5df2\u662f\u6700\u65b0\u7248\u672c"

    const-string v14, "ValidateCheckUtils"

    if-eqz v12, :cond_b

    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v12

    invoke-virtual {v12}, Lyv/f;->e()Lvv/b;

    move-result-object v12

    move-object v15, v4

    move-object/from16 v22, v5

    iget-wide v4, v12, Lvv/b;->d:J

    invoke-virtual {v8, v4, v5}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkNeedUpgrade(J)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v14, v7, v2, v6}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    sget-wide v23, Lbw/g;->b:J

    sub-long v23, v4, v23

    const-wide/16 v20, 0x1388

    cmp-long v8, v23, v20

    if-gez v8, :cond_5

    goto :goto_3

    :cond_5
    sput-wide v4, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_6
    sget-boolean v2, Lbw/g;->a:Z

    :goto_3
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v4

    iget-boolean v4, v4, Lyv/f;->d:Z

    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v2

    const/4 v4, 0x0

    iput-boolean v4, v2, Lyv/f;->e:Z

    sget-object v2, Lbw/i;->b:Lbw/h;

    sget-object v4, Lxv/a;->a:Landroid/app/Application;

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2, v4}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v2

    const-string v4, "KV_UPGRADE_IS_FORCE"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v2, :cond_8

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Z)Z

    :cond_8
    move-object v4, v15

    move-object/from16 v5, v22

    :cond_9
    const/4 v2, 0x3

    :goto_5
    const-wide/16 v14, 0x1388

    goto/16 :goto_2

    :cond_a
    move-object v4, v6

    move-object v12, v10

    move-object/from16 v23, v11

    goto/16 :goto_10

    :cond_b
    move-object v15, v4

    move-object/from16 v22, v5

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getTaskStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x18

    if-nez v4, :cond_f

    const-string v2, "filter  ->> \u5f00\u5173 taskStatus"

    invoke-static {v14, v7, v2, v6}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v23

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    sget-wide v25, Lbw/g;->b:J

    sub-long v25, v23, v25

    const-wide/16 v20, 0x1388

    cmp-long v4, v25, v20

    if-gez v4, :cond_d

    goto :goto_6

    :cond_d
    sput-wide v23, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_e
    sget-boolean v2, Lbw/g;->a:Z

    :goto_6
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v4

    iget-boolean v4, v4, Lyv/f;->d:Z

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-static {v9, v4, v2, v8, v5}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    move v2, v9

    move-object v4, v15

    move-object/from16 v5, v22

    goto :goto_5

    :cond_f
    move-object v4, v6

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getValidStartDate()J

    move-result-wide v5

    move-object v12, v10

    move-object/from16 v23, v11

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getValidEndDate()J

    move-result-wide v10

    invoke-virtual {v8, v5, v6, v10, v11}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkDateRange(JJ)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v2, "filter  ->> validStartDate or validEndDate"

    invoke-static {v14, v7, v2, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_10

    goto :goto_7

    :cond_10
    sget-wide v10, Lbw/g;->b:J

    sub-long v10, v5, v10

    const-wide/16 v20, 0x1388

    cmp-long v10, v10, v20

    if-gez v10, :cond_11

    goto :goto_7

    :cond_11
    sput-wide v5, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_12
    sget-boolean v2, Lbw/g;->a:Z

    :goto_7
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    iget-boolean v5, v5, Lyv/f;->d:Z

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/16 v8, 0x18

    invoke-static {v6, v6, v2, v5, v8}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    move v2, v6

    move-object v10, v12

    move-object/from16 v5, v22

    move-object/from16 v11, v23

    move-object v6, v4

    move-object v4, v15

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    invoke-virtual {v5}, Lyv/f;->e()Lvv/b;

    move-result-object v5

    iget-wide v5, v5, Lvv/b;->d:J

    invoke-virtual {v8, v5, v6}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkNeedUpgrade(J)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {v14, v7, v2, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_14

    goto :goto_8

    :cond_14
    sget-wide v10, Lbw/g;->b:J

    sub-long v10, v5, v10

    const-wide/16 v20, 0x1388

    cmp-long v10, v10, v20

    if-gez v10, :cond_15

    goto :goto_8

    :cond_15
    sput-wide v5, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_16
    sget-boolean v2, Lbw/g;->a:Z

    :goto_8
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    iget-boolean v5, v5, Lyv/f;->d:Z

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/16 v9, 0x18

    invoke-static {v8, v5, v2, v6, v9}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    :goto_9
    move-object v6, v4

    move v2, v8

    move-object v10, v12

    move-object v4, v15

    move-object/from16 v5, v22

    move-object/from16 v11, v23

    goto/16 :goto_5

    :cond_17
    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkBrand()Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "filter  ->> \u54c1\u724c"

    invoke-static {v14, v7, v2, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_18

    goto :goto_a

    :cond_18
    sget-wide v10, Lbw/g;->b:J

    sub-long v10, v5, v10

    const-wide/16 v20, 0x1388

    cmp-long v10, v10, v20

    if-gez v10, :cond_19

    goto :goto_a

    :cond_19
    sput-wide v5, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_1a
    sget-boolean v2, Lbw/g;->a:Z

    :goto_a
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    iget-boolean v5, v5, Lyv/f;->d:Z

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/16 v9, 0x18

    invoke-static {v8, v5, v2, v6, v9}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_9

    :cond_1b
    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkModel()Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "filter  ->> \u673a\u578b"

    invoke-static {v14, v7, v2, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_1c

    goto :goto_b

    :cond_1c
    sget-wide v10, Lbw/g;->b:J

    sub-long v10, v5, v10

    const-wide/16 v20, 0x1388

    cmp-long v10, v10, v20

    if-gez v10, :cond_1d

    goto :goto_b

    :cond_1d
    sput-wide v5, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_1e
    sget-boolean v2, Lbw/g;->a:Z

    :goto_b
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    iget-boolean v5, v5, Lyv/f;->d:Z

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/16 v9, 0x18

    invoke-static {v8, v5, v2, v6, v9}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_1f
    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkAndroidVersion()Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "filter  ->> \u5b89\u5353\u7248\u672c"

    invoke-static {v14, v7, v2, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_20

    goto :goto_c

    :cond_20
    sget-wide v10, Lbw/g;->b:J

    sub-long v10, v5, v10

    const-wide/16 v20, 0x1388

    cmp-long v10, v10, v20

    if-gez v10, :cond_21

    goto :goto_c

    :cond_21
    sput-wide v5, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_22
    sget-boolean v2, Lbw/g;->a:Z

    :goto_c
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    iget-boolean v5, v5, Lyv/f;->d:Z

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/16 v9, 0x18

    invoke-static {v8, v5, v2, v6, v9}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_23
    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkCountry()Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "filter  ->> \u56fd\u5bb6"

    invoke-static {v14, v7, v2, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_24

    goto :goto_d

    :cond_24
    sget-wide v10, Lbw/g;->b:J

    sub-long v10, v5, v10

    const-wide/16 v20, 0x1388

    cmp-long v10, v10, v20

    if-gez v10, :cond_25

    goto :goto_d

    :cond_25
    sput-wide v5, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_26
    sget-boolean v2, Lbw/g;->a:Z

    :goto_d
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    iget-boolean v5, v5, Lyv/f;->d:Z

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/16 v9, 0x18

    invoke-static {v8, v5, v2, v6, v9}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_27
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v2

    invoke-virtual {v2}, Lyv/f;->e()Lvv/b;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-wide v5, v2, Lvv/b;->d:J

    goto :goto_e

    :cond_28
    const-wide/16 v5, 0x0

    :goto_e
    invoke-virtual {v8, v5, v6}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkVersionRange(J)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "filter  ->> \u7248\u672c\u8303\u56f4"

    invoke-static {v14, v7, v2, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_29

    goto :goto_f

    :cond_29
    sget-wide v10, Lbw/g;->b:J

    sub-long v10, v5, v10

    const-wide/16 v20, 0x1388

    cmp-long v10, v10, v20

    if-gez v10, :cond_2a

    goto :goto_f

    :cond_2a
    sput-wide v5, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_2b
    sget-boolean v2, Lbw/g;->a:Z

    :goto_f
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    iget-boolean v5, v5, Lyv/f;->d:Z

    invoke-virtual {v8}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/16 v9, 0x18

    invoke-static {v8, v5, v2, v6, v9}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_2c
    :goto_10
    iput-object v8, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CDN\u6570\u636e \u5339\u914d\u6210\u529f step1-2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-boolean v1, Lbw/g;->a:Z

    if-eqz v1, :cond_2d

    goto :goto_11

    :cond_2d
    sget-wide v10, Lbw/g;->b:J

    sub-long v10, v5, v10

    const-wide/16 v20, 0x1388

    cmp-long v8, v10, v20

    if-gez v8, :cond_2e

    goto :goto_11

    :cond_2e
    sput-wide v5, Lbw/g;->b:J

    const/4 v1, 0x3

    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v1, 0x1

    sput-boolean v1, Lbw/g;->a:Z

    :cond_2f
    sget-boolean v1, Lbw/g;->a:Z

    :goto_11
    invoke-virtual {v9}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    iget-boolean v5, v5, Lyv/f;->d:Z

    goto :goto_12

    :cond_30
    move-object v15, v4

    move-object/from16 v22, v5

    move-object v4, v6

    move-object v12, v10

    move-object v2, v11

    :goto_12
    iget-object v1, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpdateTime()Ljava/lang/String;

    move-result-object v25

    const/16 v29, 0x0

    const/16 v30, 0x78

    const/16 v23, 0x3

    const/16 v24, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v30}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    iget-object v1, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez v1, :cond_31

    iget-object v1, v0, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz v1, :cond_48

    new-instance v2, Lcom/transsion/upgradesdk/bean/UpgradeInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v3, v3, v4}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;-><init>(ZZZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V

    goto/16 :goto_1d

    :cond_31
    iget-boolean v5, v0, Lyv/f;->e:Z

    if-eqz v5, :cond_36

    const-string v1, "requestUpgradeStatus : \u5f3a\u66f4\u4efb\u52a1\u8fdb\u884c\u4e2d\uff0c\u4e0d\u8bf7\u6c42\u670d\u52a1\u7aef\u914d\u7f6e"

    invoke-static {v2, v7, v1, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    sget-boolean v3, Lbw/g;->a:Z

    if-eqz v3, :cond_32

    goto :goto_13

    :cond_32
    sget-wide v4, Lbw/g;->b:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gez v4, :cond_33

    goto :goto_13

    :cond_33
    sput-wide v1, Lbw/g;->b:J

    const/4 v1, 0x3

    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    sput-boolean v1, Lbw/g;->a:Z

    :cond_34
    sget-boolean v3, Lbw/g;->a:Z

    :goto_13
    sget-object v1, Lyv/f;->o:Lyv/d;

    invoke-virtual {v1}, Lyv/d;->a()Lyv/f;

    move-result-object v1

    iget-boolean v1, v1, Lyv/f;->d:Z

    iget-object v1, v0, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz v1, :cond_48

    new-instance v2, Lcom/transsion/upgradesdk/bean/UpgradeInfo;

    iget-object v3, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersionName()Ljava/lang/String;

    move-result-object v3

    :goto_14
    const/4 v4, 0x1

    goto :goto_15

    :cond_35
    const/4 v3, 0x0

    goto :goto_14

    :goto_15
    invoke-direct {v2, v4, v4, v4, v3}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;-><init>(ZZZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V

    goto/16 :goto_1d

    :cond_36
    invoke-virtual {v1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getReqInterval()I

    move-result v5

    const-string v8, "2"

    if-lez v5, :cond_3b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "requestUpgradeStatus : \u4e0a\u6b21\u5f39\u7a97 - ReqInterval - "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getReqInterval()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v9, v0, Lyv/f;->k:J

    const-wide/16 v16, 0x0

    cmp-long v5, v9, v16

    if-gtz v5, :cond_39

    sget-object v5, Lbw/i;->b:Lbw/h;

    sget-object v9, Lxv/a;->a:Landroid/app/Application;

    if-eqz v9, :cond_37

    goto :goto_16

    :cond_37
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_16
    invoke-virtual {v5, v9}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v5

    const-string v9, "KV_UPGRADE_LAST_REQUEST_SERVER"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v5, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    const-wide/16 v10, 0x0

    if-eqz v3, :cond_38

    invoke-virtual {v3, v9, v10, v11}, Lcom/tencent/mmkv/MMKV;->h(Ljava/lang/String;J)J

    move-result-wide v9

    goto :goto_17

    :cond_38
    move-wide v9, v10

    :goto_17
    iput-wide v9, v0, Lyv/f;->k:J

    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v3, v7

    iget-wide v6, v0, Lyv/f;->k:J

    sub-long/2addr v9, v6

    invoke-virtual {v1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getReqInterval()I

    move-result v5

    mul-int/lit16 v5, v5, 0xe10

    int-to-long v5, v5

    const-wide/16 v16, 0x3e8

    mul-long v5, v5, v16

    cmp-long v5, v9, v5

    if-gtz v5, :cond_3c

    const-string v3, "requestUpgradeStatus : \u4e0a\u6b21\u5f39\u7a97\u8303\u56f4\u5185\uff0c\u4e0d\u8bf7\u6c42\u63a5\u53e3"

    invoke-static {v2, v3}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-static {v3, v2, v4, v8, v5}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v0, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz v2, :cond_48

    new-instance v3, Lcom/transsion/upgradesdk/bean/UpgradeInfo;

    iget-boolean v4, v0, Lyv/f;->c:Z

    if-eqz v4, :cond_3a

    invoke-static {v1}, Lwv/a;->a(Lcom/transsion/upgradesdk/bean/UpgradeData;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v8, 0x1

    goto :goto_18

    :cond_3a
    const/4 v8, 0x0

    :goto_18
    invoke-virtual {v1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersionName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v8, v5, v1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;-><init>(ZZZLjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V

    goto/16 :goto_1d

    :cond_3b
    move-object v3, v7

    :cond_3c
    sget-object v1, Lxv/a;->a:Landroid/app/Application;

    if-eqz v1, :cond_3d

    goto :goto_19

    :cond_3d
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_43

    const-string v5, "connectivity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_3e

    goto/16 :goto_1b

    :cond_3e
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3f

    goto/16 :goto_1b

    :cond_3f
    const/16 v29, 0x0

    const/16 v30, 0x74

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    const-string v26, "2"

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v30}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    sget-object v1, Lzv/d;->d:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv/d;

    new-instance v5, Lcom/transsion/upgradesdk/manager/h;

    invoke-direct {v5, v0}, Lcom/transsion/upgradesdk/manager/h;-><init>(Lyv/f;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "callback"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    iput v6, v1, Lzv/d;->c:I

    invoke-static {}, Lvv/c;->a()Lcom/transsion/upgradesdk/bean/RequestBean;

    move-result-object v6

    sget-object v7, Lbw/f;->a:Lcom/google/gson/Gson;

    move-object/from16 v7, v22

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lbw/f;->a:Lcom/google/gson/Gson;

    invoke-virtual {v7, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v15

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u8bf7\u6c42\u670d\u52a1\u7aef\u63a5\u53e3 \u5f00\u59cb\u8bf7\u6c42\uff0c \u53c2\u6570\uff1a "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-boolean v4, Lbw/g;->a:Z

    if-eqz v4, :cond_40

    goto :goto_1a

    :cond_40
    sget-wide v7, Lbw/g;->b:J

    sub-long v7, v2, v7

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-gez v7, :cond_41

    goto :goto_1a

    :cond_41
    sput-wide v2, Lbw/g;->b:J

    const/4 v2, 0x3

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    sput-boolean v2, Lbw/g;->a:Z

    :cond_42
    sget-boolean v4, Lbw/g;->a:Z

    :goto_1a
    sget-object v2, Lyv/f;->o:Lyv/d;

    invoke-virtual {v2}, Lyv/d;->a()Lyv/f;

    move-result-object v2

    iget-boolean v2, v2, Lyv/f;->d:Z

    iget-object v2, v1, Lzv/d;->b:Lzv/h;

    invoke-virtual {v6}, Lcom/transsion/upgradesdk/bean/RequestBean;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lzv/h;->a(Lcom/transsion/upgradesdk/bean/RequestBean;Ljava/lang/String;)Lretrofit2/d;

    move-result-object v2

    new-instance v3, Lzv/c;

    invoke-direct {v3, v1, v5}, Lzv/c;-><init>(Lzv/d;Lcom/transsion/upgradesdk/manager/h;)V

    invoke-interface {v2, v3}, Lretrofit2/d;->h(Lretrofit2/f;)V

    goto :goto_1d

    :catch_0
    :cond_43
    :goto_1b
    const-string v1, "requestServer error: \u7f51\u7edc\u672a\u94fe\u63a5"

    invoke-static {v2, v3, v1, v4}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    sget-boolean v3, Lbw/g;->a:Z

    if-eqz v3, :cond_44

    goto :goto_1c

    :cond_44
    sget-wide v4, Lbw/g;->b:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gez v4, :cond_45

    goto :goto_1c

    :cond_45
    sput-wide v1, Lbw/g;->b:J

    const/4 v1, 0x3

    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x1

    sput-boolean v1, Lbw/g;->a:Z

    :cond_46
    sget-boolean v3, Lbw/g;->a:Z

    :goto_1c
    sget-object v1, Lyv/f;->o:Lyv/d;

    invoke-virtual {v1}, Lyv/d;->a()Lyv/f;

    move-result-object v1

    iget-boolean v1, v1, Lyv/f;->d:Z

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {v2, v1, v3, v8, v4}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, v0, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz v1, :cond_48

    const-string v2, "INTERNET_ERROR"

    invoke-interface {v1, v2}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    goto :goto_1d

    :cond_47
    const/4 v9, 0x0

    const/16 v10, 0x7c

    const/4 v3, 0x3

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    iget-object v1, v0, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz v1, :cond_48

    new-instance v2, Lcom/transsion/upgradesdk/bean/UpgradeInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v3, v3, v4}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;-><init>(ZZZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V

    :cond_48
    :goto_1d
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lyv/f;->i:Lcom/transsion/upgradesdk/page/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    iget-object v0, p0, Lyv/f;->j:Law/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public final e()Lvv/b;
    .locals 1

    iget-object v0, p0, Lyv/f;->a:Lvv/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "currentPackageInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 10

    sget-object v0, Lbw/i;->b:Lbw/h;

    sget-object v1, Lxv/a;->a:Landroid/app/Application;

    const-string v2, "application"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v0

    const-string v1, "KV_UPGRADE_LOCAL_CDN_DATA"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lbw/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLocalUpgradeInfo step1 : \u8bf7\u6c42\u672c\u5730CDN\u6570\u636e"

    const-string v4, "UpgradeSdkManager"

    invoke-static {v4, v1}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "getLocalUpgradeInfo step1-1: \u672c\u5730\u65e0\u6570\u636e"

    invoke-static {v4, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    sget-object v1, Lbw/f;->a:Lcom/google/gson/Gson;

    new-instance v1, Lcom/transsion/upgradesdk/manager/UpgradeRealManager$getLocalUpgradeInfo$$inlined$fromJsonToList$1;

    invoke-direct {v1}, Lcom/transsion/upgradesdk/manager/UpgradeRealManager$getLocalUpgradeInfo$$inlined$fromJsonToList$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v5, "getType(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lbw/f;->a:Lcom/google/gson/Gson;

    invoke-virtual {v5, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-boolean v1, p0, Lyv/f;->e:Z

    const-string v5, "key"

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    const-string v1, "upgradeData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/upgradesdk/bean/UpgradeData;

    invoke-virtual {v7}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lyv/f;->o:Lyv/d;

    invoke-virtual {v8}, Lyv/d;->a()Lyv/f;

    move-result-object v8

    invoke-virtual {v8}, Lyv/f;->e()Lvv/b;

    move-result-object v8

    iget-wide v8, v8, Lvv/b;->d:J

    invoke-virtual {v7, v8, v9}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkNeedUpgrade(J)Z

    move-result v7

    if-nez v7, :cond_3

    iput-boolean v6, p0, Lyv/f;->e:Z

    sget-object v1, Lbw/i;->b:Lbw/h;

    sget-object v7, Lxv/a;->a:Landroid/app/Application;

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v7, v3

    :goto_1
    invoke-virtual {v1, v7}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v1

    const-string v7, "KV_UPGRADE_IS_FORCE"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v7, v6}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Z)Z

    :cond_5
    iput-object v0, p0, Lyv/f;->m:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/upgradesdk/bean/UpgradeData;

    sget-object v6, Lbw/i;->b:Lbw/h;

    sget-object v7, Lxv/a;->a:Landroid/app/Application;

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v7, v3

    :goto_2
    invoke-virtual {v6, v7}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v2

    const-string v6, "KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2, v6, v7, v8}, Lcom/tencent/mmkv/MMKV;->h(Ljava/lang/String;J)J

    move-result-wide v7

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v7

    invoke-virtual {v1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getSdkRefreshTime()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v1, v7

    cmp-long v1, v5, v1

    if-gez v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "tag"

    const-string v1, "msg"

    const-string v2, "getLocalUpgradeInfo step1-3: \u672c\u5730\u6570\u636e\u8fc7\u671f"

    invoke-static {v4, v0, v2, v1}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    sget-boolean v2, Lbw/g;->a:Z

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    sget-wide v4, Lbw/g;->b:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v2, v4, v6

    if-gez v2, :cond_a

    goto :goto_3

    :cond_a
    sput-wide v0, Lbw/g;->b:J

    const-string v0, "upgradeSdkLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    sput-boolean v0, Lbw/g;->a:Z

    :cond_b
    :goto_3
    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    iget-boolean v0, v0, Lyv/f;->d:Z

    return-object v3

    :cond_c
    :goto_4
    const-string v0, "getLocalUpgradeInfo step1-2: \u672c\u5730\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v4, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
