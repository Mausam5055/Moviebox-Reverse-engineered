.class public final Lgx/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lgx/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgx/a;

    invoke-direct {v0}, Lgx/a;-><init>()V

    sput-object v0, Lgx/a;->a:Lgx/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLandroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    const-string v0, "fromPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configVersionName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object v0, Lck/u;->a:Lck/u;

    invoke-virtual {v0}, Lck/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ps \u5f39\u7a97\u88ab\u62e6\u622a  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "update"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    move-result-object v0

    new-instance v7, Lgx/a$a;

    move-object v1, v7

    move-object v2, p5

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lgx/a$a;-><init>(Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->checkUpgradeTask(Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;)V

    return-void
.end method
