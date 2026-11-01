.class public final Lxm/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lxm/k;

.field private static final b:Lcom/transsnet/loginapi/ILoginApi;

.field private static final c:Ljava/util/List;

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:J

.field private static final h:Ljava/util/List;

.field private static final i:Lcom/transsion/fissionapi/IFissionProvider;

.field private static j:Z

.field private static k:Lcom/transsion/memberapi/MemberTaskItem;

.field private static l:J

.field private static final m:Lxm/k$b;

.field private static final n:Lxm/k$c;

.field private static final o:Landroid/os/Handler;

.field private static final p:Ljava/lang/Runnable;

.field public static final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lxm/k;

    invoke-direct {v0}, Lxm/k;-><init>()V

    sput-object v0, Lxm/k;->a:Lxm/k;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v3, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/loginapi/ILoginApi;

    sput-object v2, Lxm/k;->b:Lcom/transsnet/loginapi/ILoginApi;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lxm/k;->c:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lxm/k;->h:Ljava/util/List;

    const-class v2, Lcom/transsion/fissionapi/IFissionProvider;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/fissionapi/IFissionProvider;

    sput-object v1, Lxm/k;->i:Lcom/transsion/fissionapi/IFissionProvider;

    invoke-direct {v0}, Lxm/k;->K()V

    new-instance v0, Lxm/k$b;

    invoke-direct {v0}, Lxm/k$b;-><init>()V

    sput-object v0, Lxm/k;->m:Lxm/k$b;

    new-instance v0, Lxm/k$c;

    invoke-direct {v0}, Lxm/k$c;-><init>()V

    sput-object v0, Lxm/k;->n:Lxm/k$c;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lxm/k;->o:Landroid/os/Handler;

    new-instance v0, Lxm/d;

    invoke-direct {v0}, Lxm/d;-><init>()V

    sput-object v0, Lxm/k;->p:Ljava/lang/Runnable;

    const/16 v0, 0x8

    sput v0, Lxm/k;->q:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final A()V
    .locals 1

    sget-object v0, Lxm/k;->a:Lxm/k;

    invoke-direct {v0}, Lxm/k;->z()V

    return-void
.end method

.method private final B(Ljava/lang/String;Z)Z
    .locals 3

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v1, Lxm/k;->b:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final E(Ljava/lang/String;I)I
    .locals 3

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v1, Lxm/k;->b:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private final F(Ljava/lang/String;J)J
    .locals 3

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v1, Lxm/k;->b:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private final J()J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xb

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private final K()V
    .locals 2

    sget-object v0, Lak/z;->b:Lak/z$a;

    invoke-virtual {v0}, Lak/z$a;->a()Lak/z;

    move-result-object v0

    new-instance v1, Lxm/g;

    invoke-direct {v1}, Lxm/g;-><init>()V

    invoke-virtual {v0, v1}, Lak/z;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final L()V
    .locals 8

    sget-object v0, Lxm/k;->a:Lxm/k;

    invoke-direct {v0}, Lxm/k;->J()J

    move-result-wide v1

    const-string v3, "kv_watch_remember_time"

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v1

    if-lez v3, :cond_0

    sput-wide v1, Lxm/k;->e:J

    const-string v1, "kv_watch_today_time"

    invoke-direct {v0, v1, v4, v5}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lxm/k;->d:J

    sput-wide v0, Lxm/k;->g:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    sget-wide v0, Lxm/k;->d:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init watch time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "TaskManager"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final M()V
    .locals 2

    sget-object v0, Lxm/k;->i:Lcom/transsion/fissionapi/IFissionProvider;

    if-eqz v0, :cond_0

    sget-boolean v1, Lxm/k;->j:Z

    invoke-interface {v0, v1}, Lcom/transsion/fissionapi/IFissionProvider;->b(Z)V

    :cond_0
    return-void
.end method

.method private final P(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v1, Lxm/k;->b:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private final Q(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v1, Lxm/k;->b:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private final R(Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v1, Lxm/k;->b:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private final U()V
    .locals 2

    sget-object v0, Lak/z;->b:Lak/z$a;

    invoke-virtual {v0}, Lak/z$a;->a()Lak/z;

    move-result-object v0

    new-instance v1, Lxm/f;

    invoke-direct {v1}, Lxm/f;-><init>()V

    invoke-virtual {v0, v1}, Lak/z;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final V()V
    .locals 12

    sget-object v0, Lxm/k;->a:Lxm/k;

    invoke-direct {v0}, Lxm/k;->J()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "kv_watch_remember_time"

    invoke-direct {v0, v5, v3, v4}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v6, 0x1

    cmp-long v6, v6, v3

    if-gtz v6, :cond_0

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    sget-object v6, Llg/a;->a:Llg/a$a;

    sget-wide v3, Lxm/k;->d:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear last day time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "TaskManager"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-wide/16 v3, 0x7530

    sput-wide v3, Lxm/k;->d:J

    :cond_0
    invoke-direct {v0}, Lxm/k;->s()V

    sput-wide v1, Lxm/k;->e:J

    sget-wide v1, Lxm/k;->d:J

    sput-wide v1, Lxm/k;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v5, v1, v2}, Lxm/k;->R(Ljava/lang/String;J)V

    const-string v1, "kv_watch_today_time"

    sget-wide v2, Lxm/k;->d:J

    invoke-direct {v0, v1, v2, v3}, Lxm/k;->R(Ljava/lang/String;J)V

    sget-object v4, Llg/a;->a:Llg/a$a;

    sget-wide v0, Lxm/k;->d:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save watch time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "TaskManager"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final Z()V
    .locals 3

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v1

    sget-object v2, Lxm/k;->m:Lxm/k$b;

    invoke-interface {v1, v2}, Lcom/transsnet/downloader/manager/g;->x(Llj/m0;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/transsnet/downloader/manager/g;->e(Llj/m0;)V

    sget-object v0, Lxm/k;->b:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v0, :cond_0

    sget-object v1, Lxm/k;->n:Lxm/k$c;

    invoke-interface {v0, v1}, Lcom/transsnet/loginapi/ILoginApi;->p(Ldz/a;)V

    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, Lxm/k;->n:Lxm/k$c;

    invoke-interface {v0, v1}, Lcom/transsnet/loginapi/ILoginApi;->g(Ldz/a;)V

    :cond_1
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lxm/k;->A()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lxm/k;->L()V

    return-void
.end method

.method private final b0(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getStatus()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lxm/k;->j:Z

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lxm/k;->V()V

    return-void
.end method

.method private final c0(I)V
    .locals 1

    sget-boolean v0, Lxm/k;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lxm/k;->i:Lcom/transsion/fissionapi/IFissionProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/transsion/fissionapi/IFissionProvider;->f(I)V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 0

    invoke-static {p0}, Lxm/k;->t(Lcom/transsion/memberapi/MemberTaskItem;)V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lxm/k;->p()V

    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lxm/k;->n()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 0

    invoke-static {p0}, Lxm/k;->r(Lcom/transsion/memberapi/MemberTaskItem;)V

    return-void
.end method

.method public static final synthetic h(Lxm/k;)V
    .locals 0

    invoke-direct {p0}, Lxm/k;->m()V

    return-void
.end method

.method public static final synthetic i(Lxm/k;)V
    .locals 0

    invoke-direct {p0}, Lxm/k;->x()V

    return-void
.end method

.method public static final synthetic j(Lxm/k;)V
    .locals 0

    invoke-direct {p0}, Lxm/k;->y()V

    return-void
.end method

.method public static final synthetic k(Lxm/k;)V
    .locals 0

    invoke-direct {p0}, Lxm/k;->K()V

    return-void
.end method

.method public static final synthetic l(Lxm/k;I)V
    .locals 0

    invoke-direct {p0, p1}, Lxm/k;->c0(I)V

    return-void
.end method

.method private final m()V
    .locals 2

    sget-object v0, Lak/z;->b:Lak/z$a;

    invoke-virtual {v0}, Lak/z$a;->a()Lak/z;

    move-result-object v0

    new-instance v1, Lxm/i;

    invoke-direct {v1}, Lxm/i;-><init>()V

    invoke-virtual {v0, v1}, Lak/z;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final n()V
    .locals 15

    sget-object v0, Lxm/k;->a:Lxm/k;

    invoke-direct {v0}, Lxm/k;->J()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "kv_watch_download_save_time"

    invoke-direct {v0, v5, v3, v4}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v6, "kv_watch_download_count"

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lxm/k;->E(Ljava/lang/String;I)I

    move-result v8

    const-wide/16 v9, 0x1

    cmp-long v9, v9, v3

    if-gtz v9, :cond_0

    cmp-long v1, v3, v1

    if-gez v1, :cond_0

    sget-object v9, Llg/a;->a:Llg/a$a;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "TaskManager"

    const-string v11, "clear download count"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    invoke-direct {v0, v7}, Lxm/k;->q(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v5, v1, v2}, Lxm/k;->R(Ljava/lang/String;J)V

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v0, v6, v7}, Lxm/k;->Q(Ljava/lang/String;I)V

    sget-object v8, Llg/a;->a:Llg/a$a;

    sget-wide v0, Lxm/k;->d:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save download count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "TaskManager"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final o()V
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lxm/k;->l:J

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    cmp-long v3, v1, v5

    if-gtz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct/range {p0 .. p0}, Lxm/k;->J()J

    move-result-wide v3

    const-string v7, "kv_game_browse_remember_time"

    invoke-direct {v0, v7, v5, v6}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v10, "kv_game_browse_today_time"

    invoke-direct {v0, v10, v5, v6}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v11

    add-long/2addr v1, v11

    const-string v11, "kv_game_browse_complete"

    const/4 v12, 0x0

    invoke-direct {v0, v11, v12}, Lxm/k;->B(Ljava/lang/String;Z)Z

    move-result v13

    cmp-long v3, v3, v8

    if-lez v3, :cond_1

    invoke-direct {v0, v11, v12}, Lxm/k;->P(Ljava/lang/String;Z)V

    move v13, v12

    goto :goto_0

    :cond_1
    move-wide v5, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v7, v1, v2}, Lxm/k;->R(Ljava/lang/String;J)V

    const/4 v1, 0x0

    if-nez v13, :cond_6

    sget-object v2, Lxm/k;->k:Lcom/transsion/memberapi/MemberTaskItem;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskItem;->isClaimCompleted()Z

    move-result v2

    if-ne v2, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    sget-object v2, Lxm/k;->k:Lcom/transsion/memberapi/MemberTaskItem;

    const/16 v4, 0x3e8

    if-eqz v2, :cond_4

    int-to-long v7, v4

    div-long v7, v5, v7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskItem;->getDurationCondition()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    const v2, 0x493e0

    :goto_1
    int-to-long v13, v2

    cmp-long v2, v7, v13

    if-ltz v2, :cond_4

    invoke-direct {v0, v11, v3}, Lxm/k;->P(Ljava/lang/String;Z)V

    sget-object v13, Llg/a;->a:Llg/a$a;

    const-string v2, "\u6e38\u620f\uff0c\u7edf\u8ba1\u6d4f\u89c8\u65f6\u957f\uff0c\u4efb\u52a1\u5b8c\u6210"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, "TaskManager"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lxm/e;

    invoke-direct {v3}, Lxm/e;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Lxm/k;->o:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v13, Llg/a;->a:Llg/a$a;

    int-to-long v2, v4

    div-long v2, v5, v2

    sget-object v4, Lxm/k;->k:Lcom/transsion/memberapi/MemberTaskItem;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberTaskItem;->getDurationCondition()Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6e38\u620f\uff0c\u7edf\u8ba1\u6d4f\u89c8\u65f6\u957f\uff0c\u4efb\u52a1\u672a\u5b8c\u6210\uff0ccurDuration:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", target:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, "TaskManager"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {v0, v11, v12}, Lxm/k;->P(Ljava/lang/String;Z)V

    :goto_2
    invoke-direct {v0, v10, v5, v6}, Lxm/k;->R(Ljava/lang/String;J)V

    return-void

    :cond_6
    :goto_3
    sget-object v19, Llg/a;->a:Llg/a$a;

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "TaskManager"

    const-string v21, "\u6e38\u620f\uff0c\u7edf\u8ba1\u6d4f\u89c8\u65f6\u957f\u4efb\u52a1\u5df2\u7ecf\u5b8c\u6210"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lxm/k;->o:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private static final p()V
    .locals 2

    new-instance v0, Lxm/c;

    invoke-direct {v0}, Lxm/c;-><init>()V

    sget-object v1, Lxm/k;->k:Lcom/transsion/memberapi/MemberTaskItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lxm/c;->g(I)V

    return-void
.end method

.method private final q(I)V
    .locals 4

    sget-object v0, Lxm/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getTimesCondition()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lxm/j;

    invoke-direct {v3, v1}, Lxm/j;-><init>(Lcom/transsion/memberapi/MemberTaskItem;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final r(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 2

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lxm/k$a;

    invoke-direct {v1, p0}, Lxm/k$a;-><init>(Lcom/transsion/memberapi/MemberTaskItem;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/report/l;->g(Lcom/transsion/baselib/report/l$a;)Z

    goto :goto_1

    :cond_0
    new-instance v0, Lxm/c;

    invoke-direct {v0}, Lxm/c;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lxm/c;->g(I)V

    :goto_1
    return-void
.end method

.method private final s()V
    .locals 9

    sget-wide v0, Lxm/k;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lxm/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getDurationCondition()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sget-wide v3, Lxm/k;->g:J

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    int-to-long v7, v2

    cmp-long v2, v3, v7

    if-gez v2, :cond_1

    sget-wide v2, Lxm/k;->d:J

    div-long/2addr v2, v5

    cmp-long v2, v2, v7

    if-ltz v2, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lxm/h;

    invoke-direct {v3, v1}, Lxm/h;-><init>(Lcom/transsion/memberapi/MemberTaskItem;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static final t(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 1

    new-instance v0, Lxm/c;

    invoke-direct {v0}, Lxm/c;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/memberapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lxm/c;->g(I)V

    return-void
.end method

.method private final x()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lxm/k;->d:J

    sput-wide v0, Lxm/k;->e:J

    sput-wide v0, Lxm/k;->f:J

    sput-wide v0, Lxm/k;->g:J

    return-void
.end method

.method private final y()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/memberapi/IMemberApi;->h()V

    :cond_0
    return-void
.end method

.method private final z()V
    .locals 4

    invoke-direct {p0}, Lxm/k;->o()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lxm/k;->l:J

    sget-object v0, Lxm/k;->o:Landroid/os/Handler;

    sget-object v1, Lxm/k;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final C()I
    .locals 13

    const-string v0, "kv_game_download_app_claim"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lxm/k;->E(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lxm/k;->J()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "kv_game_download_app_remember_time"

    invoke-direct {p0, v6, v4, v5}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v7, v7, v4

    if-gtz v7, :cond_0

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    sget-object v7, Llg/a;->a:Llg/a$a;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "TaskManager"

    const-string v9, "\u6e38\u620fapp\u4e0b\u8f7d\uff0c\u8de8\u5929\u4e86\uff0c\u91cd\u7f6e\u72b6\u6001"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v6, v2, v3}, Lxm/k;->R(Ljava/lang/String;J)V

    move v0, v1

    :cond_1
    return v0
.end method

.method public final D()J
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lxm/k;->l:J

    sub-long/2addr v0, v2

    const-string v2, "kv_game_browse_today_time"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v5

    sget-wide v7, Lxm/k;->l:J

    cmp-long v2, v7, v3

    if-lez v2, :cond_0

    cmp-long v2, v0, v3

    if-gtz v2, :cond_1

    :cond_0
    move-wide v0, v3

    :cond_1
    add-long/2addr v0, v5

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final G()I
    .locals 6

    const-string v0, "kv_watch_download_save_time"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "kv_watch_download_count"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lxm/k;->E(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0}, Lxm/k;->J()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lxm/k;->u()V

    return v3

    :cond_0
    return v2
.end method

.method public final H()I
    .locals 7

    const-string v0, "kv_play_save_game_time"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "kv_play_game_time"

    invoke-direct {p0, v0, v1, v2}, Lxm/k;->F(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0}, Lxm/k;->J()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lxm/k;->w()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final I()I
    .locals 4

    invoke-direct {p0}, Lxm/k;->J()J

    move-result-wide v0

    sget-wide v2, Lxm/k;->e:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-wide v0, Lxm/k;->d:J

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final N(J)V
    .locals 4

    sget-wide v0, Lxm/k;->d:J

    sget-wide v2, Lxm/k;->f:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    sput-wide v0, Lxm/k;->d:J

    const-wide/16 p1, 0x0

    sput-wide p1, Lxm/k;->f:J

    invoke-direct {p0}, Lxm/k;->U()V

    return-void
.end method

.method public final O(J)V
    .locals 4

    sget-wide v0, Lxm/k;->f:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sget-wide v2, Lxm/k;->d:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    sput-wide v2, Lxm/k;->d:J

    :cond_0
    sput-wide p1, Lxm/k;->f:J

    sget-wide p1, Lxm/k;->d:J

    sget-wide v0, Lxm/k;->g:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    invoke-direct {p0}, Lxm/k;->U()V

    :cond_1
    return-void
.end method

.method public final S(Lcom/transsion/memberapi/MemberTaskInfo;)V
    .locals 5

    sget-object v0, Lxm/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lxm/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskInfo;->getList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/MemberTaskGroup;

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskGroup;->getTaskItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/transsion/member/constants/TaskType;->WATCH:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v3}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_5

    sget-object v2, Lxm/k;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    sget-object v3, Lcom/transsion/member/constants/TaskType;->DOWNLOAD_MOVIE:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v3}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v3

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_7

    sget-object v2, Lxm/k;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    :goto_2
    sget-object v3, Lcom/transsion/member/constants/TaskType;->GAME_RES_BROWSE:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v3}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v3

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    sput-object v1, Lxm/k;->k:Lcom/transsion/memberapi/MemberTaskItem;

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lxm/k;->Z()V

    return-void
.end method

.method public final T(Ljava/util/List;)V
    .locals 9

    sget-object v0, Lxm/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lxm/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/transsion/member/constants/TaskType;->WATCH:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v2}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2

    sget-object v1, Lxm/k;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v2, Lcom/transsion/member/constants/TaskType;->DOWNLOAD_MOVIE:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v2}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v2

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    sget-object v1, Lxm/k;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_2
    sget-object v2, Lcom/transsion/member/constants/TaskType;->PALM_PAY:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v2}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v2

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-direct {p0, v0}, Lxm/k;->b0(Lcom/transsion/memberapi/MemberTaskItem;)V

    goto :goto_0

    :cond_6
    :goto_3
    sget-object v2, Lcom/transsion/member/constants/TaskType;->GAME_RES_BROWSE:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v2}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v2

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_8

    sput-object v0, Lxm/k;->k:Lcom/transsion/memberapi/MemberTaskItem;

    goto :goto_0

    :cond_8
    :goto_4
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " that is not support now, please check it."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "TaskManager"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lxm/k;->M()V

    invoke-direct {p0}, Lxm/k;->Z()V

    return-void
.end method

.method public final W()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "TaskManager"

    const-string v2, "\u6e38\u620f\u4e0b\u8f7d\u4efb\u52a1\u5b8c\u6210"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "kv_game_download_app_remember_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lxm/k;->R(Ljava/lang/String;J)V

    const-string v0, "kv_game_download_app_claim"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lxm/k;->Q(Ljava/lang/String;I)V

    return-void
.end method

.method public final X(J)V
    .locals 3

    invoke-virtual {p0}, Lxm/k;->H()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-string v0, "kv_play_save_game_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lxm/k;->R(Ljava/lang/String;J)V

    const-string v0, "kv_play_game_time"

    invoke-direct {p0, v0, p1, p2}, Lxm/k;->R(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final Y()V
    .locals 7

    sget-object v0, Lxm/k;->k:Lcom/transsion/memberapi/MemberTaskItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "TaskManager"

    const-string v3, "\u6e38\u620f\uff0cstartGameResDurationTracking"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lxm/k;->l:J

    sget-object v0, Lxm/k;->o:Landroid/os/Handler;

    sget-object v1, Lxm/k;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a0()V
    .locals 7

    sget-object v0, Lxm/k;->k:Lcom/transsion/memberapi/MemberTaskItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "TaskManager"

    const-string v3, "\u6e38\u620f\uff0cstopGameResDurationTracking"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lxm/k;->o()V

    sget-object v0, Lxm/k;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final u()V
    .locals 3

    const-string v0, "kv_watch_download_save_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lxm/k;->R(Ljava/lang/String;J)V

    const-string v0, "kv_watch_download_count"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lxm/k;->Q(Ljava/lang/String;I)V

    return-void
.end method

.method public final v()V
    .locals 3

    const-string v0, "kv_game_download_app_remember_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lxm/k;->R(Ljava/lang/String;J)V

    const-string v0, "kv_game_download_app_claim"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lxm/k;->Q(Ljava/lang/String;I)V

    return-void
.end method

.method public final w()V
    .locals 3

    const-string v0, "kv_play_save_game_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lxm/k;->R(Ljava/lang/String;J)V

    const-string v0, "kv_play_game_time"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lxm/k;->R(Ljava/lang/String;J)V

    return-void
.end method
