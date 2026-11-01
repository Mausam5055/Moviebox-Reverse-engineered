.class public final Lcom/transsion/version/update/UpdateManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/version/update/UpdateManager$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/version/update/UpdateManager$a;

.field private static volatile g:Lcom/transsion/version/update/UpdateManager;


# instance fields
.field private a:Lcom/transsion/version/update/UpdateVersionRequest;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/version/update/UpdateManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/version/update/UpdateManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/version/update/UpdateVersionRequest;

    invoke-direct {v0}, Lcom/transsion/version/update/UpdateVersionRequest;-><init>()V

    iput-object v0, p0, Lcom/transsion/version/update/UpdateManager;->a:Lcom/transsion/version/update/UpdateVersionRequest;

    const-string v0, "TECNO"

    iput-object v0, p0, Lcom/transsion/version/update/UpdateManager;->b:Ljava/lang/String;

    const-string v1, "INFINIX"

    iput-object v1, p0, Lcom/transsion/version/update/UpdateManager;->c:Ljava/lang/String;

    const-string v2, "ITEL"

    iput-object v2, p0, Lcom/transsion/version/update/UpdateManager;->d:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->g([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/version/update/UpdateManager;->e:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic a()Lcom/transsion/version/update/UpdateManager;
    .locals 1

    sget-object v0, Lcom/transsion/version/update/UpdateManager;->g:Lcom/transsion/version/update/UpdateManager;

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/version/update/UpdateManager;)V
    .locals 0

    sput-object p0, Lcom/transsion/version/update/UpdateManager;->g:Lcom/transsion/version/update/UpdateManager;

    return-void
.end method

.method private final f()Z
    .locals 5

    sget-object v0, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "key_last_installed_version_v2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    move-result v4

    if-eqz v1, :cond_0

    if-ge v1, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    return v3
.end method

.method public static synthetic j(Lcom/transsion/version/update/UpdateManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/version/update/UpdateManager;->i(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 6

    sget-object v0, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "key_last_installed_version_v2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v4, ""

    const-string v5, "key_user_clicked_dialog_type"

    invoke-virtual {v2, v5, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/transsion/version/update/UpdateManager;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    const-string v4, "action"

    const-string v5, "update_success"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, "last_version"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v5, "dialog_type"

    invoke-static {v5, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/Pair;

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x2

    aput-object v2, v5, v1

    invoke-static {v5}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/version/update/e;->b(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 9

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "phone_brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brand "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "update"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/version/update/UpdateManager;->e:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v0, v5, v2, v6, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v3

    :cond_4
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/version/update/UpdateManager;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->init(Landroid/app/Application;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 3

    sget-object v0, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "target_version_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final h(Ljava/lang/String;)V
    .locals 13

    sget-object v0, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "showed_target_version_name"

    invoke-virtual {v1, v2, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "update_dialog_showed_times"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v2, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v4, "update_dialog_show_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v7, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bb0\u5f55\u5c55\u793a\u7248\u672c\u4e3a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5df2\u5c55\u793a\u6b21\u6570\u4e3a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "update"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final i(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p6, Lcom/transsion/version/update/UpdateManager$startCheckUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lcom/transsion/version/update/UpdateManager$startCheckUpdate$1;

    iget v1, v0, Lcom/transsion/version/update/UpdateManager$startCheckUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/version/update/UpdateManager$startCheckUpdate$1;->label:I

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/version/update/UpdateManager$startCheckUpdate$1;

    invoke-direct {v0, p0, p6}, Lcom/transsion/version/update/UpdateManager$startCheckUpdate$1;-><init>(Lcom/transsion/version/update/UpdateManager;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p6, v7, Lcom/transsion/version/update/UpdateManager$startCheckUpdate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v7, Lcom/transsion/version/update/UpdateManager$startCheckUpdate$1;->label:I

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v8, :cond_1

    invoke-static {p6}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p6}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/version/update/UpdateManager;->a:Lcom/transsion/version/update/UpdateVersionRequest;

    if-eqz v1, :cond_4

    iput v8, v7, Lcom/transsion/version/update/UpdateManager$startCheckUpdate$1;->label:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/version/update/UpdateVersionRequest;->q(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p6, Ljava/lang/Boolean;

    goto :goto_3

    :cond_4
    const/4 p6, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/transsion/version/update/UpdateManager;->c()V

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
