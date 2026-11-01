.class public final Lcom/blankj/utilcode/util/PermissionUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/PermissionUtils$c;,
        Lcom/blankj/utilcode/util/PermissionUtils$b;,
        Lcom/blankj/utilcode/util/PermissionUtils$a;,
        Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;
    }
.end annotation


# static fields
.field private static h:Lcom/blankj/utilcode/util/PermissionUtils;

.field private static i:Lcom/blankj/utilcode/util/PermissionUtils$b;

.field private static j:Lcom/blankj/utilcode/util/PermissionUtils$b;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Lcom/blankj/utilcode/util/PermissionUtils$b;

.field private c:Ljava/util/Set;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;


# direct methods
.method private varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->a:[Ljava/lang/String;

    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Lcom/blankj/utilcode/util/PermissionUtils;

    return-void
.end method

.method private A(Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private static B(Landroid/app/Activity;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/blankj/utilcode/util/e0;->A(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->v()V

    return-void

    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private C()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    return-void
.end method

.method private static D(Landroid/app/Activity;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/blankj/utilcode/util/e0;->A(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->v()V

    return-void

    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/blankj/utilcode/util/PermissionUtils;Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/PermissionUtils;->A(Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->w(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic c()Lcom/blankj/utilcode/util/PermissionUtils$b;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->i:Lcom/blankj/utilcode/util/PermissionUtils$b;

    return-object v0
.end method

.method static synthetic d(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils$b;
    .locals 0

    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->i:Lcom/blankj/utilcode/util/PermissionUtils$b;

    return-object p0
.end method

.method static synthetic e()Lcom/blankj/utilcode/util/PermissionUtils$b;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->j:Lcom/blankj/utilcode/util/PermissionUtils$b;

    return-object v0
.end method

.method static synthetic f(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils$b;
    .locals 0

    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->j:Lcom/blankj/utilcode/util/PermissionUtils$b;

    return-object p0
.end method

.method static synthetic g()Lcom/blankj/utilcode/util/PermissionUtils;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Lcom/blankj/utilcode/util/PermissionUtils;

    return-object v0
.end method

.method static synthetic h(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$c;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic j(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$a;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic k(Landroid/app/Activity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->D(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic l(Landroid/app/Activity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->B(Landroid/app/Activity;I)V

    return-void
.end method

.method public static n()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static o(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private p(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static varargs q([Ljava/lang/String;)Landroid/util/Pair;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->n()Ljava/util/List;

    move-result-object v2

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, p0, v5

    invoke-static {v6}, Ls5/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v4

    move v10, v9

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v11, v7, v9

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-nez v10, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "U should add the permission of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in manifest."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PermissionUtils"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static r(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs s([Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->q([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static t()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static v()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/e0;->o(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/e0;->A(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private w(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->p(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->z()V

    return-void
.end method

.method public static varargs x([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;
    .locals 1

    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/PermissionUtils;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils$b;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$b;->onGranted()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils$b;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$b;->onDenied()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils$b;

    :cond_1
    return-void
.end method


# virtual methods
.method public m(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils;
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils$b;

    return-object p0
.end method

.method public y()V
    .locals 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->a:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->q([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Ljava/util/Set;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->z()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->C()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string v0, "PermissionUtils"

    const-string v1, "No permissions to request."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
