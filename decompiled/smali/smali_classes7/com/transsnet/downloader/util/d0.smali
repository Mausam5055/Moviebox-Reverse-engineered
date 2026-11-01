.class public final Lcom/transsnet/downloader/util/d0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/util/d0;

.field private static final b:Lkotlin/Lazy;

.field private static c:I

.field private static d:I

.field private static final e:I

.field private static final f:I

.field private static g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final h:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/util/d0;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/d0;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/d0;->a:Lcom/transsnet/downloader/util/d0;

    new-instance v0, Lcom/transsnet/downloader/util/c0;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/c0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/util/d0;->b:Lkotlin/Lazy;

    const/16 v0, 0x14

    sput v0, Lcom/transsnet/downloader/util/d0;->e:I

    const/4 v0, 0x3

    sput v0, Lcom/transsnet/downloader/util/d0;->f:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/d0;->h:Landroidx/lifecycle/b0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/util/d0;->f()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final b()I
    .locals 3

    sget v0, Lcom/transsnet/downloader/util/d0;->c:I

    if-gtz v0, :cond_1

    :try_start_0
    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "shorts_unlock_config"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "maxUnlockCount"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsnet/downloader/util/d0;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v0, Lcom/transsnet/downloader/util/d0;->e:I

    :goto_0
    sput v0, Lcom/transsnet/downloader/util/d0;->c:I

    :cond_1
    sget v0, Lcom/transsnet/downloader/util/d0;->c:I

    return v0
.end method

.method private final d()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/util/d0;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method private static final f()Lcom/tencent/mmkv/MMKV;
    .locals 2

    const-string v0, "short_tv"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkvWithID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)I
    .locals 2

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/util/d0;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsnet/downloader/util/d0;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final e()I
    .locals 3

    sget v0, Lcom/transsnet/downloader/util/d0;->d:I

    if-gtz v0, :cond_1

    :try_start_0
    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "shorts_unlock_config"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "perUnlockCount"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsnet/downloader/util/d0;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v0, Lcom/transsnet/downloader/util/d0;->f:I

    :goto_0
    sput v0, Lcom/transsnet/downloader/util/d0;->d:I

    :cond_1
    sget v0, Lcom/transsnet/downloader/util/d0;->d:I

    return v0
.end method

.method public final g(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/util/d0;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/transsnet/downloader/util/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
