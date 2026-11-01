.class public final Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/spwaitkiller/test/TestSpWaitActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "init",
        "mockInsertHeavyWorkToQueuedWork",
        "blockSeconds",
        "",
        "Companion",
        "SpWaitKiller_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/spwaitkiller/test/TestSpWaitActivity$Companion;

.field public static final TAG:Ljava/lang/String; = "SpWaitKillerTest"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;->Companion:Lcom/transsion/spwaitkiller/test/TestSpWaitActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic R(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;->mockInsertHeavyWorkToQueuedWork$lambda$2(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;->init$lambda$0(Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;->init$lambda$1(Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;Landroid/view/View;)V

    return-void
.end method

.method private final init()V
    .locals 2

    sget v0, Lcom/transsion/spwaitkiller/R$id;->btn_mode_case1:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/spwaitkiller/test/a;

    invoke-direct {v1, p0}, Lcom/transsion/spwaitkiller/test/a;-><init>(Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/spwaitkiller/R$id;->mock:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/spwaitkiller/test/b;

    invoke-direct {v1, p0}, Lcom/transsion/spwaitkiller/test/b;-><init>(Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final init$lambda$0(Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/transsion/spwaitkiller/SpWaitKiller;->Companion:Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v0, "getApplication(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;->builder(Landroid/content/Context;)Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->build()Lcom/transsion/spwaitkiller/SpWaitKiller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/spwaitkiller/SpWaitKiller;->work()V

    return-void
.end method

.method private static final init$lambda$1(Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;Landroid/view/View;)V
    .locals 1

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;->mockInsertHeavyWorkToQueuedWork(I)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/spwaitkiller/test/TestSpWait2Activity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final mockInsertHeavyWorkToQueuedWork(I)V
    .locals 6

    const-string v0, "null cannot be cast to non-null type java.util.LinkedList<java.lang.Runnable>"

    :try_start_0
    const-string v1, "android.app.QueuedWork"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getHandler"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type android.os.Handler"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v5, "getLooper(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sWork"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/LinkedList;

    const-string v5, "sFinishers"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/transsion/spwaitkiller/test/c;

    invoke-direct {v3, v0}, Lcom/transsion/spwaitkiller/test/c;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity$mockInsertHeavyWorkToQueuedWork$1;

    invoke-direct {v1, p1, v0}, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity$mockInsertHeavyWorkToQueuedWork$1;-><init>(ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string p1, "test"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "k"

    const-string v1, "v"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static final mockInsertHeavyWorkToQueuedWork$lambda$2(Ljava/util/concurrent/CountDownLatch;)V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, " true"

    goto :goto_0

    :cond_0
    const-string v2, " false"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait runnable run on thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", is MainThread ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpWaitKillerTest"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-string p0, "wait runnable end"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/spwaitkiller/R$layout;->activity_test_sp_wait:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    const-string p1, ""

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lsposed/hiddenapibypass/l;->b([Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;->init()V

    return-void
.end method
