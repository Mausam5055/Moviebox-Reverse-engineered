.class public final Lcom/transsion/push/f;
.super Ljava/lang/Object;

# interfaces
.implements Ldz/a;


# static fields
.field public static final a:Lcom/transsion/push/f;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static volatile d:Z

.field private static final e:Ljava/lang/Object;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/push/f;

    invoke-direct {v0}, Lcom/transsion/push/f;-><init>()V

    sput-object v0, Lcom/transsion/push/f;->a:Lcom/transsion/push/f;

    new-instance v0, Lcom/transsion/push/c;

    invoke-direct {v0}, Lcom/transsion/push/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/push/f;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/push/d;

    invoke-direct {v0}, Lcom/transsion/push/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/push/f;->c:Lkotlin/Lazy;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/push/f;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/transsion/push/f;->j()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/push/f;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/push/f;->i()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method private final e()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    sget-object v0, Lcom/transsion/push/f;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final f()Z
    .locals 1

    sget-object v0, Lcom/transsion/push/f;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/push/f;->a:Lcom/transsion/push/f;

    invoke-direct {v0}, Lcom/transsion/push/f;->e()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private static final i()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final j()Z
    .locals 5

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_notification_refresh"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lsm/f;->d(Lsm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v0, "false"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final k()V
    .locals 1

    sget-boolean v0, Lcom/transsion/push/f;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/push/f;->e()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/transsnet/loginapi/ILoginApi;->g(Ldz/a;)V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/push/f;->f:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    sget-object v0, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-virtual {v0}, Lcom/transsion/mpush/core/fcm/m;->h()V

    return-void
.end method

.method public final g(Landroid/app/Application;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v1, Lcom/transsion/push/f;->d:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/push/f;->k()V

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/push/f;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/transsion/push/f;->d:Z

    if-eqz v2, :cond_1

    sget-object v0, Lcom/transsion/push/f;->a:Lcom/transsion/push/f;

    invoke-direct {v0}, Lcom/transsion/push/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    :cond_1
    :try_start_1
    sget-object v2, Lln/a;->a:Lln/a;

    invoke-virtual {v2, v0}, Lln/a;->j(Landroid/content/Context;)Lln/a;

    move-result-object v2

    new-instance v3, Lcom/transsion/mpush/core/features/LocalPushFeature;

    invoke-direct {v3}, Lcom/transsion/mpush/core/features/LocalPushFeature;-><init>()V

    invoke-virtual {v2, v3}, Lln/a;->a(Lcom/transsion/mpush/api/IPushFeature;)Lln/a;

    move-result-object v2

    new-instance v3, Lcom/transsion/mpush/core/features/PermanentPushFeature;

    invoke-direct {v3}, Lcom/transsion/mpush/core/features/PermanentPushFeature;-><init>()V

    invoke-virtual {v2, v3}, Lln/a;->a(Lcom/transsion/mpush/api/IPushFeature;)Lln/a;

    move-result-object v2

    new-instance v3, Lcom/transsion/push/feature/seek/SeekPushFeature;

    invoke-direct {v3}, Lcom/transsion/push/feature/seek/SeekPushFeature;-><init>()V

    invoke-virtual {v2, v3}, Lln/a;->a(Lcom/transsion/mpush/api/IPushFeature;)Lln/a;

    move-result-object v2

    new-instance v3, Lrp/a;

    invoke-direct {v3}, Lrp/a;-><init>()V

    invoke-virtual {v2, v3}, Lln/a;->a(Lcom/transsion/mpush/api/IPushFeature;)Lln/a;

    move-result-object v2

    new-instance v3, Lcom/transsion/push/feature/activate/ActivatePushFeature;

    invoke-direct {v3}, Lcom/transsion/push/feature/activate/ActivatePushFeature;-><init>()V

    invoke-virtual {v2, v3}, Lln/a;->a(Lcom/transsion/mpush/api/IPushFeature;)Lln/a;

    move-result-object v2

    new-instance v3, Lcom/transsion/mpush/core/features/FcmPushFeature;

    invoke-direct {v3}, Lcom/transsion/mpush/core/features/FcmPushFeature;-><init>()V

    new-instance v4, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;

    invoke-direct {v4}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;-><init>()V

    invoke-virtual {v3, v4}, Lcom/transsion/mpush/core/features/FcmPushFeature;->d(Lcom/transsion/mpush/api/IFcmMessageInterceptor;)V

    invoke-virtual {v2, v3}, Lln/a;->a(Lcom/transsion/mpush/api/IPushFeature;)Lln/a;

    move-result-object v2

    new-instance v3, Lsp/a;

    invoke-direct {v3}, Lsp/a;-><init>()V

    invoke-virtual {v2, v3}, Lln/a;->o(Lcom/transsion/mpush/api/IPushReportInterceptor;)Lln/a;

    move-result-object v2

    new-instance v3, Lqp/b;

    const-string v4, "oneroom://com.community.oneroom?type=/main/tab"

    invoke-direct {v3, v4}, Lqp/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lln/a;->p(Lcom/transsion/mpush/api/IPushRouteHandler;)Lln/a;

    move-result-object v2

    sget v5, Lcom/tn/lib/widget/R$drawable;->push_small_logo:I

    sget v7, Lcom/transsion/lib/push/R$mipmap;->ic_default_push:I

    sget-object v14, Lcom/transsion/push/f;->a:Lcom/transsion/push/f;

    invoke-direct {v14}, Lcom/transsion/push/f;->f()Z

    move-result v4

    new-instance v3, Lcom/transsion/push/utils/b;

    invoke-direct {v3}, Lcom/transsion/push/utils/b;-><init>()V

    invoke-virtual {v3}, Lcom/transsion/push/utils/b;->a()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/transsion/mpush/core/config/PushSdkConfig;

    const-string v6, "oneroom://com.community.oneroom?type=/main/tab"

    const/16 v12, 0x30

    const/4 v13, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v15

    invoke-direct/range {v3 .. v13}, Lcom/transsion/mpush/core/config/PushSdkConfig;-><init>(ZILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v15}, Lln/a;->q(Lcom/transsion/mpush/core/config/PushSdkConfig;)Lln/a;

    invoke-direct {v14}, Lcom/transsion/push/f;->k()V

    sget-object v2, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    new-instance v3, Lcom/transsion/push/e;

    invoke-direct {v3}, Lcom/transsion/push/e;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/transsion/mpush/core/fcm/m;->r(Landroid/app/Application;Lkotlin/jvm/functions/Function0;)Lcom/transsion/mpush/core/fcm/m;

    sget-object v2, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->a:Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;

    invoke-virtual {v2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->i()V

    sget-object v2, Lcom/transsion/push/feature/toolbar/NotificationReceiver;->a:Lcom/transsion/push/feature/toolbar/NotificationReceiver$a;

    invoke-virtual {v2, v0}, Lcom/transsion/push/feature/toolbar/NotificationReceiver$a;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/push/f;->d:Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1

    throw v0
.end method

.method public final l(Lcom/transsion/pushapi/TriggerSource;)V
    .locals 4

    const-string v0, "triggerSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->a:Lcom/transsion/mpush/core/trigger/PushTriggerManager;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host_trigger_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/mpush/core/trigger/PushTriggerManager;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 7

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ldz/a$a;->a(Ldz/a;Lcom/transsnet/loginapi/bean/UserInfo;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLogin, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "PushRegisterManager"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-virtual {p1}, Lcom/transsion/mpush/core/fcm/m;->h()V

    return-void
.end method

.method public onLogout()V
    .locals 0

    invoke-static {p0}, Ldz/a$a;->b(Ldz/a;)V

    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Ldz/a$a;->c(Ldz/a;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method
