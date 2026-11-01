.class public final Lcom/transsion/shorttv_pugc/utils/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/shorttv_pugc/utils/h;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static d:I

.field private static e:I

.field private static final f:I

.field private static final g:I

.field private static h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static i:Lst/b;

.field private static final j:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv_pugc/utils/h;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/utils/h;-><init>()V

    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->a:Lcom/transsion/shorttv_pugc/utils/h;

    new-instance v0, Lcom/transsion/shorttv_pugc/utils/f;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/utils/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv_pugc/utils/g;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/utils/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->c:Lkotlin/Lazy;

    const/16 v0, 0x14

    sput v0, Lcom/transsion/shorttv_pugc/utils/h;->f:I

    const/4 v0, 0x3

    sput v0, Lcom/transsion/shorttv_pugc/utils/h;->g:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->j:Landroidx/lifecycle/b0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv_pugc/utils/h;->j()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv_pugc/utils/h;->i()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final c()Lst/b;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv_pugc/utils/h;->i:Lst/b;

    if-nez v0, :cond_1

    sget-object v0, Lys/a;->a:Lys/a;

    invoke-virtual {v0}, Lys/a;->b()Ltt/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltt/a;->h()Lst/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/transsion/shorttv_pugc/utils/h;->i:Lst/b;

    :cond_1
    return-object v0
.end method

.method private final d()I
    .locals 2

    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->d:I

    if-gtz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/utils/h;->c()Lst/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lst/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "maxUnlockCount"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->f:I

    :goto_0
    sput v0, Lcom/transsion/shorttv_pugc/utils/h;->d:I

    :cond_1
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->d:I

    return v0
.end method

.method private static final i()Lcom/tencent/mmkv/MMKV;
    .locals 2

    const-string v0, "short_tv"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkvWithID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final j()Lcom/tencent/mmkv/MMKV;
    .locals 2

    const-string v0, "kv_app"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkvWithID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final e(Ljava/lang/String;)I
    .locals 2

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/utils/h;->f()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/utils/h;->d()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final f()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv_pugc/utils/h;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method public final g()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv_pugc/utils/h;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method public final h()I
    .locals 2

    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->e:I

    if-gtz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/utils/h;->c()Lst/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lst/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "perUnlockCount"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->g:I

    :goto_0
    sput v0, Lcom/transsion/shorttv_pugc/utils/h;->e:I

    :cond_1
    sget v0, Lcom/transsion/shorttv_pugc/utils/h;->e:I

    return v0
.end method

.method public final k(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/utils/h;->f()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/transsion/shorttv_pugc/utils/h;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

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
