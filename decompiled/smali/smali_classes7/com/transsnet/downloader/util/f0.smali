.class public final Lcom/transsnet/downloader/util/f0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/util/f0;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/util/f0;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/f0;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/f0;->a:Lcom/transsnet/downloader/util/f0;

    new-instance v0, Lcom/transsnet/downloader/util/e0;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/e0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/util/f0;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/util/f0;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/util/f0;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method private static final d()Lcom/tencent/mmkv/MMKV;
    .locals 2

    const-string v0, "transfer_tips"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkvWithID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 3

    invoke-direct {p0}, Lcom/transsnet/downloader/util/f0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "key_transfer_tips_dialog_show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/transsnet/downloader/util/f0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "key_transfer_tips_dialog_show"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
