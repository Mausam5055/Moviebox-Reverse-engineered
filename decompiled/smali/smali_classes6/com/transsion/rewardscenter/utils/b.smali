.class public final Lcom/transsion/rewardscenter/utils/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/rewardscenter/utils/b;

.field private static final b:Lkotlin/Lazy;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/rewardscenter/utils/b;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/utils/b;-><init>()V

    sput-object v0, Lcom/transsion/rewardscenter/utils/b;->a:Lcom/transsion/rewardscenter/utils/b;

    new-instance v0, Lcom/transsion/rewardscenter/utils/a;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/utils/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/rewardscenter/utils/b;->b:Lkotlin/Lazy;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/rewardscenter/utils/b;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/rewardscenter/utils/b;->f()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/utils/b;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method private static final f()Lcom/tencent/mmkv/MMKV;
    .locals 1

    const-string v0, "RewardsCenterCache"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "phone_cc"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "phone_iso"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "cc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iso"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "phone_cc"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "phone_iso"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "phone_number"

    invoke-virtual {p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
