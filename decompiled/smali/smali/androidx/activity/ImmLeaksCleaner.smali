.class public final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ImmLeaksCleaner$a;,
        Landroidx/activity/ImmLeaksCleaner$b;,
        Landroidx/activity/ImmLeaksCleaner$c;,
        Landroidx/activity/ImmLeaksCleaner$d;
    }
.end annotation


# static fields
.field public static final b:Landroidx/activity/ImmLeaksCleaner$b;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/ImmLeaksCleaner$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->b:Landroidx/activity/ImmLeaksCleaner$b;

    sget-object v0, Landroidx/activity/ImmLeaksCleaner$Companion$cleaner$2;->INSTANCE:Landroidx/activity/ImmLeaksCleaner$Companion$cleaner$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->a:Landroid/app/Activity;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->c:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->a:Landroid/app/Activity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->b:Landroidx/activity/ImmLeaksCleaner$b;

    invoke-virtual {p2}, Landroidx/activity/ImmLeaksCleaner$b;->a()Landroidx/activity/ImmLeaksCleaner$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/activity/ImmLeaksCleaner$a;->b(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p1}, Landroidx/activity/ImmLeaksCleaner$a;->c(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p2, p1}, Landroidx/activity/ImmLeaksCleaner$a;->a(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
