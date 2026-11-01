.class public final Lcom/transsnet/login/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/loginapi/ILoginApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/login/r$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsnet/login/r$a;

.field private static final h:Lkotlin/Lazy;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private volatile c:Lcom/transsnet/loginapi/bean/UserInfo;

.field private final d:Ljava/util/List;

.field private final e:Lkotlin/Lazy;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/login/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/login/r$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/login/r;->g:Lcom/transsnet/login/r$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsnet/login/o;

    invoke-direct {v1}, Lcom/transsnet/login/o;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/login/r;->h:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsnet/login/r;->b:Ljava/lang/Object;

    const-string v0, "create"

    invoke-direct {p0, v0}, Lcom/transsnet/login/r;->I(Ljava/lang/String;)Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsnet/login/r;->d:Ljava/util/List;

    new-instance v0, Lcom/transsnet/login/m;

    invoke-direct {v0}, Lcom/transsnet/login/m;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/login/r;->e:Lkotlin/Lazy;

    iget-object v0, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p0, v0}, Lcom/transsnet/login/r;->S(Lcom/transsnet/loginapi/bean/UserInfo;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "created"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/transsnet/login/r;->K(Lcom/transsnet/login/r;Ljava/lang/String;Lcom/transsnet/loginapi/bean/UserInfo;ILjava/lang/Object;)V

    const-string v0, "X-User"

    iput-object v0, p0, Lcom/transsnet/login/r;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic A(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->O(Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public static final synthetic B(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->T(Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method private final C(Ldz/a;)Ljava/lang/ref/WeakReference;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/login/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldz/a;

    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final D(Ljava/lang/String;)Lcom/transsnet/loginapi/bean/UserInfo;
    .locals 9

    iget-object v0, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/r;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->I(Ljava/lang/String;)Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p0, v1}, Lcom/transsnet/login/r;->S(Lcom/transsnet/loginapi/bean/UserInfo;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    const-string v3, "LoginProvider"

    invoke-direct {p0}, Lcom/transsnet/login/r;->G()I

    move-result v4

    invoke-direct {p0, v1}, Lcom/transsnet/login/r;->V(Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore memory from MMKV source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", instance="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", user="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private final E()Laz/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/r;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laz/a;

    return-object v0
.end method

.method private static final F()Laz/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Laz/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laz/a;

    return-object v0
.end method

.method private final G()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static final H()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final I(Ljava/lang/String;)Lcom/transsnet/loginapi/bean/UserInfo;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lvy/d;->a:Lvy/d;

    invoke-virtual {v2}, Lvy/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "login_user"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "null"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-class v2, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/bean/UserInfo;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsnet/login/r;->G()I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadUserInfo failed source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", instance="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", thread="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    const-string v5, "LoginProvider"

    invoke-virtual {v3, v5, p1, v2, v4}, Llg/a$a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, v0

    :goto_5
    check-cast v1, Lcom/transsnet/loginapi/bean/UserInfo;

    return-object v1
.end method

.method private final J(Ljava/lang/String;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 4

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsnet/login/r;->G()I

    move-result v1

    invoke-direct {p0, p2}, Lcom/transsnet/login/r;->V(Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instance="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", user="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-string v1, "LoginProvider"

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic K(Lcom/transsnet/login/r;Ljava/lang/String;Lcom/transsnet/loginapi/bean/UserInfo;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsnet/login/r;->J(Ljava/lang/String;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method private final M(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    iget-object v1, p0, Lcom/transsnet/login/r;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lvy/d;->a:Lvy/d;

    invoke-virtual {v2}, Lvy/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "login_user"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p0, v2}, Lcom/transsnet/login/r;->S(Lcom/transsnet/loginapi/bean/UserInfo;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v2, "LoginProvider"

    invoke-direct {p0}, Lcom/transsnet/login/r;->G()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/transsnet/login/r;->V(Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetData reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", instance="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", previous="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v1, v2, p1, v0}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p1, Lcom/transsnet/login/p;

    invoke-direct {p1, p0}, Lcom/transsnet/login/p;-><init>(Lcom/transsnet/login/r;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method private static final N(Lcom/transsnet/login/r;)V
    .locals 1

    iget-object p0, p0, Lcom/transsnet/login/r;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldz/a;->onLogout()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final O(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsnet/login/r;->c(Lcom/transsnet/loginapi/bean/UserInfo;)V

    new-instance v0, Lcom/transsnet/login/n;

    invoke-direct {v0, p0, p1}, Lcom/transsnet/login/n;-><init>(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final P(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/transsnet/login/r;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ldz/a;->onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final Q()V
    .locals 8

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/transsion/baseui/R$layout;->base_layout_new_warn_toast:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsnet/login/R$string;->login_signed_out_toast:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Luh/b$a;->h(Luh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string v1, "toast"

    const-string v2, "signed_out"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/baselib/helper/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final S(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, p1}, Lbh/a$a;->h(Ljava/lang/String;)V

    return-void
.end method

.method private final T(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsnet/login/r;->c(Lcom/transsnet/loginapi/bean/UserInfo;)V

    new-instance v0, Lcom/transsnet/login/q;

    invoke-direct {v0, p0, p1}, Lcom/transsnet/login/q;-><init>(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final U(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/transsnet/login/r;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ldz/a;->onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final V(Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getToken()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    xor-int/2addr p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hasToken="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public static synthetic q(Lcom/transsnet/login/r;)V
    .locals 0

    invoke-static {p0}, Lcom/transsnet/login/r;->N(Lcom/transsnet/login/r;)V

    return-void
.end method

.method public static synthetic r()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/login/r;->H()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s()Laz/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/login/r;->F()Laz/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic t(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/login/r;->P(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public static synthetic u(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/login/r;->U(Lcom/transsnet/login/r;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public static final synthetic v(Lcom/transsnet/login/r;Ljava/lang/String;)Lcom/transsnet/loginapi/bean/UserInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->D(Ljava/lang/String;)Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic w(Lcom/transsnet/login/r;)Laz/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/login/r;->E()Laz/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic x()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsnet/login/r;->h:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic y(Lcom/transsnet/login/r;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/login/r;->G()I

    move-result p0

    return p0
.end method

.method public static final synthetic z(Lcom/transsnet/login/r;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->M(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final L()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lcom/transsnet/login/r$d;->a:Lcom/transsnet/login/r$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->u(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsnet/login/r$e;

    invoke-direct {v1, p0}, Lcom/transsnet/login/r$e;-><init>(Lcom/transsnet/login/r;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->n(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsnet/login/r$f;

    invoke-direct {v1, p0}, Lcom/transsnet/login/r$f;-><init>(Lcom/transsnet/login/r;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public R()V
    .locals 1

    const-string v0, "token_expired"

    invoke-direct {p0, v0}, Lcom/transsnet/login/r;->M(Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 3

    const-string v0, "isLogin"

    invoke-direct {p0, v0}, Lcom/transsnet/login/r;->D(Ljava/lang/String;)Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/login/R$string;->login_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/transsnet/login/r;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->S(Lcom/transsnet/loginapi/bean/UserInfo;)V

    sget-object v1, Lvy/d;->a:Lvy/d;

    invoke-virtual {v1}, Lvy/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "login_user"

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-string v0, "saveUserInfo"

    invoke-direct {p0, v0, p1}, Lcom/transsnet/login/r;->J(Ljava/lang/String;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public d()V
    .locals 1

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "logout_without_network"

    invoke-direct {p0, v0}, Lcom/transsnet/login/r;->M(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/login/r;->L()V

    return-void
.end method

.method public e()Lcom/transsnet/loginapi/bean/Country;
    .locals 1

    sget-object v0, Lyy/a;->a:Lyy/a;

    invoke-virtual {v0}, Lyy/a;->b()Lcom/transsnet/loginapi/bean/Country;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchUserInfo start requestUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/transsnet/login/r;->K(Lcom/transsnet/login/r;Ljava/lang/String;Lcom/transsnet/loginapi/bean/UserInfo;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsnet/login/r;->E()Laz/a;

    move-result-object v0

    invoke-static {v0, p1, v1, v2, v1}, Laz/a$a;->c(Laz/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsnet/login/r$b;

    invoke-direct {v1, p0}, Lcom/transsnet/login/r$b;-><init>(Lcom/transsnet/login/r;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->u(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsnet/login/r$c;

    invoke-direct {v1, p1, p0}, Lcom/transsnet/login/r$c;-><init>(Ljava/lang/String;Lcom/transsnet/login/r;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public g(Ldz/a;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->C(Ldz/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsnet/login/r;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public h(Lokhttp3/Response;)V
    .locals 11

    const-string v0, "LoginProvider"

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    iget-object v3, p0, Lcom/transsnet/login/r;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const-class v3, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/loginapi/bean/UserInfo;

    iget-object v3, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/transsnet/login/r;->O(Lcom/transsnet/loginapi/bean/UserInfo;)V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :cond_1
    iget-object v3, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsnet/loginapi/bean/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsnet/loginapi/bean/UserInfo;->setToken(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-virtual {p0, v2}, Lcom/transsnet/login/r;->c(Lcom/transsnet/loginapi/bean/UserInfo;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_5

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsnet/login/r;->G()I

    move-result v3

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsnet/login/r;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p0, v7}, Lcom/transsnet/login/r;->V(Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP 401 force logout, instance="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", request="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", user="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", thread="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsnet/login/r;->R()V

    invoke-direct {p0}, Lcom/transsnet/login/r;->Q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-direct {p0}, Lcom/transsnet/login/r;->G()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTokenExpired failed code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", instance="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1, v2, v1}, Llg/a$a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public i()Lcom/transsnet/loginapi/bean/UserInfo;
    .locals 1

    const-string v0, "getUserInfo"

    invoke-direct {p0, v0}, Lcom/transsnet/login/r;->D(Ljava/lang/String;)Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsnet/login/LoginLikeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/login/r;->a:Landroid/content/Context;

    const-string p1, "initialize"

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->D(Ljava/lang/String;)Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->S(Lcom/transsnet/loginapi/bean/UserInfo;)V

    const-string v0, "initialized"

    invoke-direct {p0, v0, p1}, Lcom/transsnet/login/r;->J(Ljava/lang/String;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public l(Lcom/transsnet/loginapi/bean/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->O(Lcom/transsnet/loginapi/bean/UserInfo;)V

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsnet/login/r;->f(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public m(J)V
    .locals 2

    sget-object v0, Lvy/d;->a:Lvy/d;

    invoke-virtual {v0}, Lvy/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "login_launch_first_state"

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public n()J
    .locals 4

    sget-object v0, Lvy/d;->a:Lvy/d;

    invoke-virtual {v0}, Lvy/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "login_launch_first_state"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public o(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsnet/login/LoginLikeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public p(Ldz/a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/login/r;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lcom/transsnet/login/r;->C(Ldz/a;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
