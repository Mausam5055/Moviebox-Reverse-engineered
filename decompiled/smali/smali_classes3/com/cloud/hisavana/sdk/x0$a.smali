.class public final Lcom/cloud/hisavana/sdk/x0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/x0$a;-><init>()V

    return-void
.end method

.method private final a(ILandroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Ljava/lang/String;)V
    .locals 7

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getIconUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/hisavana/sdk/x0$a$b;

    invoke-direct {v1, v2}, Lcom/cloud/hisavana/sdk/x0$a$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/x0$a;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "MiniApp"

    const-string v3, "Popup mini app guide."

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    new-instance v6, Lcom/cloud/hisavana/sdk/x0$a$c;

    move-object v0, v6

    move-object v1, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/x0$a$c;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, p4, p1, v6}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->Y(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;ILcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;)V

    return-void
.end method

.method private final b(ILcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    const/4 v0, -0x1

    const-string v1, "MiniApp"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "Existed in homescreen."

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/cloud/hisavana/sdk/R$string;->already_exists:I

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->e(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v3, "Succeed to add to homescreen."

    invoke-virtual {p1, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-static {p2, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    sget p1, Lcom/cloud/hisavana/sdk/R$string;->got_successfully:I

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->e(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v2, "Cancel to add to homescreen."

    invoke-virtual {p1, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    const/4 p1, 0x3

    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "Failed to add to homescreen."

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/cloud/hisavana/sdk/R$string;->failed_to_get:I

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->e(I)V

    :goto_0
    return-void
.end method

.method public static final synthetic c(Lcom/cloud/hisavana/sdk/x0$a;ILcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/x0$a;->b(ILcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method private final d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/x0$a$a;

    invoke-direct {v0, p2}, Lcom/cloud/hisavana/sdk/x0$a$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/16 p2, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v1, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "launcherdlt://"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/N0;->R(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string v4, "{\""

    invoke-static {p1, v4, v0, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    :cond_2
    :try_start_0
    const-class v4, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-static {p1, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getDeepLinkUrl()Ljava/lang/String;

    move-result-object p1

    const-string v4, "getDeepLinkUrl(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getDeepLinkUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getIntGuideMode()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v5, 0x2

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/cloud/hisavana/sdk/x0$a;->a(ILandroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v5, 0x1

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/cloud/hisavana/sdk/x0$a;->a(ILandroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_6
    invoke-static {p2, v9}, Lcom/cloud/hisavana/sdk/N0;->R(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    return v0

    :catch_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "MiniApp"

    const-string p3, "Parse mini app info failed."

    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return v0
.end method
