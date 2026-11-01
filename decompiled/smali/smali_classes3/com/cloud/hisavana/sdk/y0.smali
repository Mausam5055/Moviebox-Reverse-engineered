.class public final Lcom/cloud/hisavana/sdk/y0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/y0;

.field private static b:Lcom/cloud/hisavana/sdk/z0;

.field private static c:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/y0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/y0;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/y0;->a:Lcom/cloud/hisavana/sdk/y0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/y0;->f(Ljava/lang/String;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/y0;->i(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic c()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/y0;->c:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic d(Lcom/cloud/hisavana/sdk/y0;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/y0;->k()V

    return-void
.end method

.method private final e(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/y0;->k()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_add_item_result_receiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/hisavana/sdk/z0;

    sget-object v2, Lcom/cloud/hisavana/sdk/y0$a;->a:Lcom/cloud/hisavana/sdk/y0$a;

    invoke-direct {v1, p1, v2}, Lcom/cloud/hisavana/sdk/z0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lcom/cloud/hisavana/sdk/y0;->b:Lcom/cloud/hisavana/sdk/z0;

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/y0;->j()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/cloud/hisavana/sdk/y0;->b:Lcom/cloud/hisavana/sdk/z0;

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/y0;->j()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/cloud/hisavana/sdk/y0;->b:Lcom/cloud/hisavana/sdk/z0;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register broadcast receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MiniApp"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static final f(Ljava/lang/String;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "$builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onAddResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Lcom/cloud/hisavana/sdk/y0;->a:Lcom/cloud/hisavana/sdk/y0;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/y0;->j()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_miniapp_default_icon:I

    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    :cond_2
    iput-object p0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Lcom/cloud/hisavana/sdk/b6;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/b6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public static final synthetic h(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/y0;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final i(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    const-string v0, "$icon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onAddResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/y5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/z5;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/cloud/hisavana/sdk/p5;->a(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/cloud/hisavana/sdk/y0;->a:Lcom/cloud/hisavana/sdk/y0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/y0;->j()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x63

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getAppId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "getAppId(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p3}, Lcom/cloud/hisavana/sdk/y0;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p2, p0, p1}, Lcom/cloud/hisavana/sdk/q5;->a(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to add to homescreen: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MiniApp"

    invoke-virtual {p1, p2, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method private final j()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private final k()V
    .locals 4

    sget-object v0, Lcom/cloud/hisavana/sdk/y0;->b:Lcom/cloud/hisavana/sdk/z0;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/y0;->a:Lcom/cloud/hisavana/sdk/y0;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/y0;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister broadcast receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiniApp"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/cloud/hisavana/sdk/y0;->b:Lcom/cloud/hisavana/sdk/z0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    const-string v0, "onAddResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/y0;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/y0;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/init/b;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/api/init/c;->a(Landroid/content/pm/ShortcutManager;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {v5}, Lcom/cloud/hisavana/sdk/s5;->a(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object v0

    const-string v2, "getPinnedShortcuts(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/t5;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/u5;->a(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/t5;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    sput-object p3, Lcom/cloud/hisavana/sdk/y0;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Lcom/cloud/hisavana/sdk/r5;->a()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/y0;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/o5;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/y0;->j()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/cloud/hisavana/sdk/common/activity/MiniAppSchemeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "deeplink"

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getDeepLinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/v5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/w5;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    const-string v3, "appId"

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extraAddHomeShowDialog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/x5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    const-string v0, "setExtras(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v8, Lcom/cloud/hisavana/sdk/a6;

    move-object v2, v8

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/a6;-><init>(Ljava/lang/String;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v8}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    :goto_1
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create shortcut: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiniApp"

    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void

    :cond_7
    :goto_4
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
