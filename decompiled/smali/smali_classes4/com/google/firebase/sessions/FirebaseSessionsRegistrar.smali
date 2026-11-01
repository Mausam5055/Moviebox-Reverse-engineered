.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0001\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J=\u0010\u0008\u001a0\u0012,\u0012*\u0012\u000e\u0008\u0001\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006 \u0007*\u0014\u0012\u000e\u0008\u0001\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00050\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;",
        "Lcom/google/firebase/components/ComponentRegistrar;",
        "<init>",
        "()V",
        "",
        "Lmb/c;",
        "",
        "kotlin.jvm.PlatformType",
        "getComponents",
        "()Ljava/util/List;",
        "Companion",
        "a",
        "com.google.firebase-firebase-sessions"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-sessions"

.field private static final backgroundDispatcher:Lmb/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/b0;"
        }
    .end annotation
.end field

.field private static final blockingDispatcher:Lmb/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/b0;"
        }
    .end annotation
.end field

.field private static final firebaseApp:Lmb/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/b0;"
        }
    .end annotation
.end field

.field private static final firebaseInstallationsApi:Lmb/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/b0;"
        }
    .end annotation
.end field

.field private static final sessionLifecycleServiceBinder:Lmb/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/b0;"
        }
    .end annotation
.end field

.field private static final sessionsSettings:Lmb/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/b0;"
        }
    .end annotation
.end field

.field private static final transportFactory:Lmb/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb/b0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

    const-class v0, Lcom/google/firebase/f;

    invoke-static {v0}, Lmb/b0;->b(Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const-string v1, "unqualified(FirebaseApp::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lmb/b0;

    const-class v0, Ljc/e;

    invoke-static {v0}, Lmb/b0;->b(Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const-string v1, "unqualified(FirebaseInstallationsApi::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lmb/b0;

    const-class v0, Llb/a;

    const-class v1, Lkotlinx/coroutines/i0;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const-string v2, "qualified(Background::cl\u2026neDispatcher::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lmb/b0;

    const-class v0, Llb/b;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const-string v1, "qualified(Blocking::clas\u2026neDispatcher::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lmb/b0;

    const-class v0, Lr8/i;

    invoke-static {v0}, Lmb/b0;->b(Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const-string v1, "unqualified(TransportFactory::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lmb/b0;

    const-class v0, Lcom/google/firebase/sessions/settings/SessionsSettings;

    invoke-static {v0}, Lmb/b0;->b(Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const-string v1, "unqualified(SessionsSettings::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lmb/b0;

    const-class v0, Lcom/google/firebase/sessions/y;

    invoke-static {v0}, Lmb/b0;->b(Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const-string v1, "unqualified(SessionLifec\u2026erviceBinder::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionLifecycleServiceBinder:Lmb/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmb/e;)Lcom/google/firebase/sessions/s;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$4(Lmb/e;)Lcom/google/firebase/sessions/s;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lmb/e;)Lcom/google/firebase/sessions/y;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$5(Lmb/e;)Lcom/google/firebase/sessions/y;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lmb/e;)Lcom/google/firebase/sessions/settings/SessionsSettings;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$3(Lmb/e;)Lcom/google/firebase/sessions/settings/SessionsSettings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lmb/e;)Lcom/google/firebase/sessions/w;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$2(Lmb/e;)Lcom/google/firebase/sessions/w;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lmb/e;)Lcom/google/firebase/sessions/SessionGenerator;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$1(Lmb/e;)Lcom/google/firebase/sessions/SessionGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lmb/e;)Lcom/google/firebase/sessions/FirebaseSessions;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$0(Lmb/e;)Lcom/google/firebase/sessions/FirebaseSessions;

    move-result-object p0

    return-object p0
.end method

.method private static final getComponents$lambda$0(Lmb/e;)Lcom/google/firebase/sessions/FirebaseSessions;
    .locals 5

    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessions;

    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lmb/b0;

    invoke-interface {p0, v1}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "container[firebaseApp]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firebase/f;

    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lmb/b0;

    invoke-interface {p0, v2}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "container[sessionsSettings]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/firebase/sessions/settings/SessionsSettings;

    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lmb/b0;

    invoke-interface {p0, v3}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "container[backgroundDispatcher]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionLifecycleServiceBinder:Lmb/b0;

    invoke-interface {p0, v4}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    const-string v4, "container[sessionLifecycleServiceBinder]"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/firebase/sessions/y;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/sessions/FirebaseSessions;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/y;)V

    return-object v0
.end method

.method private static final getComponents$lambda$1(Lmb/e;)Lcom/google/firebase/sessions/SessionGenerator;
    .locals 3

    new-instance p0, Lcom/google/firebase/sessions/SessionGenerator;

    sget-object v0, Lcom/google/firebase/sessions/c0;->a:Lcom/google/firebase/sessions/c0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/google/firebase/sessions/SessionGenerator;-><init>(Lcom/google/firebase/sessions/b0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method private static final getComponents$lambda$2(Lmb/e;)Lcom/google/firebase/sessions/w;
    .locals 7

    new-instance v6, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lmb/b0;

    invoke-interface {p0, v0}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "container[firebaseApp]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/f;

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lmb/b0;

    invoke-interface {p0, v0}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "container[firebaseInstallationsApi]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljc/e;

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lmb/b0;

    invoke-interface {p0, v0}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "container[sessionsSettings]"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/sessions/settings/SessionsSettings;

    new-instance v4, Lcom/google/firebase/sessions/f;

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lmb/b0;

    invoke-interface {p0, v0}, Lmb/e;->g(Lmb/b0;)Lic/b;

    move-result-object v0

    const-string v5, "container.getProvider(transportFactory)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lcom/google/firebase/sessions/f;-><init>(Lic/b;)V

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lmb/b0;

    invoke-interface {p0, v0}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "container[backgroundDispatcher]"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;-><init>(Lcom/google/firebase/f;Ljc/e;Lcom/google/firebase/sessions/settings/SessionsSettings;Lcom/google/firebase/sessions/g;Lkotlin/coroutines/CoroutineContext;)V

    return-object v6
.end method

.method private static final getComponents$lambda$3(Lmb/e;)Lcom/google/firebase/sessions/settings/SessionsSettings;
    .locals 5

    new-instance v0, Lcom/google/firebase/sessions/settings/SessionsSettings;

    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lmb/b0;

    invoke-interface {p0, v1}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "container[firebaseApp]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firebase/f;

    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lmb/b0;

    invoke-interface {p0, v2}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "container[blockingDispatcher]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lmb/b0;

    invoke-interface {p0, v3}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "container[backgroundDispatcher]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lmb/b0;

    invoke-interface {p0, v4}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    const-string v4, "container[firebaseInstallationsApi]"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljc/e;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/sessions/settings/SessionsSettings;-><init>(Lcom/google/firebase/f;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Ljc/e;)V

    return-object v0
.end method

.method private static final getComponents$lambda$4(Lmb/e;)Lcom/google/firebase/sessions/s;
    .locals 3

    new-instance v0, Lcom/google/firebase/sessions/SessionDatastoreImpl;

    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lmb/b0;

    invoke-interface {p0, v1}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/f;

    invoke-virtual {v1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "container[firebaseApp].applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lmb/b0;

    invoke-interface {p0, v2}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "container[backgroundDispatcher]"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/sessions/SessionDatastoreImpl;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method

.method private static final getComponents$lambda$5(Lmb/e;)Lcom/google/firebase/sessions/y;
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/z;

    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lmb/b0;

    invoke-interface {p0, v1}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "container[firebaseApp]"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/firebase/f;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/z;-><init>(Lcom/google/firebase/f;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmb/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/firebase/sessions/FirebaseSessions;

    invoke-static {v0}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v0

    const-string v1, "fire-sessions"

    invoke-virtual {v0, v1}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lmb/b0;

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lmb/b0;

    invoke-static {v3}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lmb/b0;

    invoke-static {v4}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    sget-object v5, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionLifecycleServiceBinder:Lmb/b0;

    invoke-static {v5}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    new-instance v5, Lcom/google/firebase/sessions/j;

    invoke-direct {v5}, Lcom/google/firebase/sessions/j;-><init>()V

    invoke-virtual {v0, v5}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->e()Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    const-class v5, Lcom/google/firebase/sessions/SessionGenerator;

    invoke-static {v5}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v5

    const-string v6, "session-generator"

    invoke-virtual {v5, v6}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/sessions/k;

    invoke-direct {v6}, Lcom/google/firebase/sessions/k;-><init>()V

    invoke-virtual {v5, v6}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v5

    invoke-virtual {v5}, Lmb/c$b;->d()Lmb/c;

    move-result-object v5

    const-class v6, Lcom/google/firebase/sessions/w;

    invoke-static {v6}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v6

    const-string v7, "session-publisher"

    invoke-virtual {v6, v7}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v6

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lmb/b0;

    invoke-static {v7}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v6

    invoke-static {v3}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v3

    invoke-virtual {v6, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v3

    sget-object v6, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lmb/b0;

    invoke-static {v6}, Lmb/r;->n(Lmb/b0;)Lmb/r;

    move-result-object v6

    invoke-virtual {v3, v6}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v3

    invoke-static {v4}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v6

    invoke-virtual {v3, v6}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v3

    new-instance v6, Lcom/google/firebase/sessions/l;

    invoke-direct {v6}, Lcom/google/firebase/sessions/l;-><init>()V

    invoke-virtual {v3, v6}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v3

    invoke-virtual {v3}, Lmb/c$b;->d()Lmb/c;

    move-result-object v3

    const-class v6, Lcom/google/firebase/sessions/settings/SessionsSettings;

    invoke-static {v6}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v6

    const-string v8, "sessions-settings"

    invoke-virtual {v6, v8}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v6

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v6

    sget-object v8, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lmb/b0;

    invoke-static {v8}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v6

    invoke-static {v4}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v6

    invoke-static {v7}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/sessions/m;

    invoke-direct {v7}, Lcom/google/firebase/sessions/m;-><init>()V

    invoke-virtual {v6, v7}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v6

    invoke-virtual {v6}, Lmb/c$b;->d()Lmb/c;

    move-result-object v6

    const-class v7, Lcom/google/firebase/sessions/s;

    invoke-static {v7}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v7

    const-string v8, "sessions-datastore"

    invoke-virtual {v7, v8}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v7

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v7

    invoke-static {v4}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v4

    invoke-virtual {v7, v4}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v4

    new-instance v7, Lcom/google/firebase/sessions/n;

    invoke-direct {v7}, Lcom/google/firebase/sessions/n;-><init>()V

    invoke-virtual {v4, v7}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c$b;->d()Lmb/c;

    move-result-object v4

    const-class v7, Lcom/google/firebase/sessions/y;

    invoke-static {v7}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v7

    const-string v8, "sessions-service-binder"

    invoke-virtual {v7, v8}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v7

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v2

    invoke-virtual {v7, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v2

    new-instance v7, Lcom/google/firebase/sessions/o;

    invoke-direct {v7}, Lcom/google/firebase/sessions/o;-><init>()V

    invoke-virtual {v2, v7}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lmb/c$b;->d()Lmb/c;

    move-result-object v2

    const-string v7, "2.0.7"

    invoke-static {v1, v7}, Lxc/h;->b(Ljava/lang/String;Ljava/lang/String;)Lmb/c;

    move-result-object v1

    const/4 v7, 0x7

    new-array v7, v7, [Lmb/c;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v5, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v2, v7, v0

    const/4 v0, 0x6

    aput-object v1, v7, v0

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
