.class public final Lcom/transsion/rewardscenter/utils/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/rewardscenter/utils/o;

.field private static b:Landroid/content/Context;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/rewardscenter/utils/o;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/utils/o;-><init>()V

    sput-object v0, Lcom/transsion/rewardscenter/utils/o;->a:Lcom/transsion/rewardscenter/utils/o;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/rewardscenter/utils/o;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/rewardscenter/utils/o;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/utils/o;->b(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    sget-object v0, Lcom/transsion/rewardscenter/utils/o;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "applicationContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    :catch_0
    :cond_2
    return p1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/transsion/rewardscenter/utils/o;->b:Landroid/content/Context;

    return-void
.end method
