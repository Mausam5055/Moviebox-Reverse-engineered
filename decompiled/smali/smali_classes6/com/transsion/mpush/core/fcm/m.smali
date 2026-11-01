.class public final Lcom/transsion/mpush/core/fcm/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/mpush/core/fcm/m;

.field private static volatile b:Z

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static final e:Lkotlin/Lazy;

.field private static final f:Lkotlin/Lazy;

.field private static g:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mpush/core/fcm/m;

    invoke-direct {v0}, Lcom/transsion/mpush/core/fcm/m;-><init>()V

    sput-object v0, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    const-string v0, ""

    sput-object v0, Lcom/transsion/mpush/core/fcm/m;->c:Ljava/lang/String;

    sput-object v0, Lcom/transsion/mpush/core/fcm/m;->d:Ljava/lang/String;

    new-instance v0, Lcom/transsion/mpush/core/fcm/h;

    invoke-direct {v0}, Lcom/transsion/mpush/core/fcm/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/mpush/core/fcm/m;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/mpush/core/fcm/i;

    invoke-direct {v0}, Lcom/transsion/mpush/core/fcm/i;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/mpush/core/fcm/m;->f:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/fcm/m;->t(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic b()Lcom/transsion/mpush/core/fcm/FCMPushHelper;
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/fcm/m;->k()Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mpush/core/fcm/m;->y(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/mpush/core/fcm/m;->j(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic e()Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/fcm/m;->i()Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/mpush/core/fcm/m;)Lcom/transsion/mpush/core/fcm/FCMPushHelper;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mpush/core/fcm/m;->n()Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    move-result-object p0

    return-object p0
.end method

.method private static final i()Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    new-instance v0, Lcom/transsion/mpush/core/fcm/j;

    invoke-direct {v0}, Lcom/transsion/mpush/core/fcm/j;-><init>()V

    return-object v0
.end method

.method private static final j(Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    sput-object p0, Lcom/transsion/mpush/core/fcm/m;->d:Ljava/lang/String;

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firebase token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "FirebasePush"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-direct {v0}, Lcom/transsion/mpush/core/fcm/m;->n()Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firebase token getFailed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "FirebasePush"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final k()Lcom/transsion/mpush/core/fcm/FCMPushHelper;
    .locals 1

    new-instance v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    invoke-direct {v0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;-><init>()V

    return-object v0
.end method

.method private final m()Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    sget-object v0, Lcom/transsion/mpush/core/fcm/m;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/OnCompleteListener;

    return-object v0
.end method

.method private final n()Lcom/transsion/mpush/core/fcm/FCMPushHelper;
    .locals 1

    sget-object v0, Lcom/transsion/mpush/core/fcm/m;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    return-object v0
.end method

.method private static final t(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTopic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isSuccessful:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "FirebasePush"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final w(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    new-instance v1, Lcom/transsion/push/bean/PushNotification$Builder;

    invoke-direct {v1}, Lcom/transsion/push/bean/PushNotification$Builder;-><init>()V

    sget-object v2, Lln/a;->a:Lln/a;

    invoke-virtual {v2}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getSmallIconRes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/push/bean/PushNotification$Builder;->setSmallIcon(I)Lcom/transsion/push/bean/PushNotification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/push/bean/PushNotification$Builder;->setType(I)Lcom/transsion/push/bean/PushNotification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/push/bean/PushNotification$Builder;->setShowDefaultLargeIcon(Z)Lcom/transsion/push/bean/PushNotification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/push/bean/PushNotification$Builder;->build()Lcom/transsion/push/bean/PushNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/push/PushManager;->addCustomNotification(Lcom/transsion/push/bean/PushNotification;)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->p()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->s()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/mpush/core/fcm/m;->m()Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/push/PushManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object p1

    new-instance v0, Lcom/transsion/mpush/core/fcm/m$a;

    invoke-direct {v0}, Lcom/transsion/mpush/core/fcm/m$a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/push/PushManager;->registerPushListener(Lcom/transsion/push/TPushListener;)V

    return-void
.end method

.method private static final y(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterTopic "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isSuccessful:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "FirebasePush"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final g(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    sput-object p1, Lcom/transsion/mpush/core/fcm/m;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final h()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/mpush/core/fcm/m;->n()Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->p()V

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/mpush/core/fcm/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/mpush/core/fcm/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Lkotlin/jvm/functions/Function0;
    .locals 1

    sget-object v0, Lcom/transsion/mpush/core/fcm/m;->g:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final q(Landroid/app/Application;)Lcom/transsion/mpush/core/fcm/m;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/transsion/mpush/core/fcm/m;->b:Z

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "FirebasePush"

    const-string v3, "firebase already initialized"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/fcm/m;->w(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/transsion/mpush/core/fcm/m;->n()Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->t(Landroid/app/Application;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/transsion/mpush/core/fcm/m;->b:Z

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firebase onFailure error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "FirebasePush"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final r(Landroid/app/Application;Lkotlin/jvm/functions/Function0;)Lcom/transsion/mpush/core/fcm/m;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/mpush/core/fcm/m;->g(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Lcom/transsion/mpush/core/fcm/m;->q(Landroid/app/Application;)Lcom/transsion/mpush/core/fcm/m;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->p()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->O(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/transsion/mpush/core/fcm/l;

    invoke-direct {v1, p1, p2}, Lcom/transsion/mpush/core/fcm/l;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/mpush/core/fcm/m;->c:Ljava/lang/String;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/mpush/core/fcm/m;->d:Ljava/lang/String;

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->p()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->R(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/transsion/mpush/core/fcm/k;

    invoke-direct {v1, p1}, Lcom/transsion/mpush/core/fcm/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
