.class public final Lcom/transsion/baselib/config/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/config/e$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/baselib/config/e$a;

.field private static final d:Lkotlin/Lazy;


# instance fields
.field private a:Lcom/google/firebase/remoteconfig/a;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baselib/config/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/baselib/config/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/baselib/config/e;->c:Lcom/transsion/baselib/config/e$a;

    new-instance v0, Lcom/transsion/baselib/config/b;

    invoke-direct {v0}, Lcom/transsion/baselib/config/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/baselib/config/e;->d:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lyc/j$b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/config/e;->f(Lyc/j$b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/baselib/config/e;Lkotlin/jvm/functions/Function2;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/config/e;->g(Lcom/transsion/baselib/config/e;Lkotlin/jvm/functions/Function2;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic c()Lcom/transsion/baselib/config/e;
    .locals 1

    invoke-static {}, Lcom/transsion/baselib/config/e;->h()Lcom/transsion/baselib/config/e;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/config/e;->d:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final f(Lyc/j$b;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$remoteConfigSettings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xe10

    invoke-virtual {p0, v0, v1}, Lyc/j$b;->e(J)Lyc/j$b;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final g(Lcom/transsion/baselib/config/e;Lkotlin/jvm/functions/Function2;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/baselib/config/e;->b:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/baselib/config/e;->a:Lcom/google/firebase/remoteconfig/a;

    if-nez p0, :cond_0

    const-string p0, "remoteConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p1, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final h()Lcom/transsion/baselib/config/e;
    .locals 1

    new-instance v0, Lcom/transsion/baselib/config/e;

    invoke-direct {v0}, Lcom/transsion/baselib/config/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final e(Lkotlin/jvm/functions/Function2;)V
    .locals 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    invoke-static {v0}, Lyc/n;->a(Lcom/google/firebase/c;)Lcom/google/firebase/remoteconfig/a;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/baselib/config/e;->a:Lcom/google/firebase/remoteconfig/a;

    const/4 v1, 0x0

    const-string v2, "remoteConfig"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Lcom/transsion/baselib/config/c;

    invoke-direct {v3}, Lcom/transsion/baselib/config/c;-><init>()V

    invoke-static {v3}, Lyc/n;->b(Lkotlin/jvm/functions/Function1;)Lyc/j;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firebase/remoteconfig/a;->w(Lyc/j;)Lcom/google/android/gms/tasks/Task;

    iget-object v0, p0, Lcom/transsion/baselib/config/e;->a:Lcom/google/firebase/remoteconfig/a;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/a;->h()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/transsion/baselib/config/d;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/config/d;-><init>(Lcom/transsion/baselib/config/e;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
