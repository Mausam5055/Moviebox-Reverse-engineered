.class public final Lcom/transsion/mbwidget/d;
.super Llj/a;


# static fields
.field public static final a:Lcom/transsion/mbwidget/d;

.field private static final b:Lkotlin/Lazy;

.field private static c:Lcom/transsion/mbwidget/guide/a;

.field private static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/mbwidget/d;

    invoke-direct {v0}, Lcom/transsion/mbwidget/d;-><init>()V

    sput-object v0, Lcom/transsion/mbwidget/d;->a:Lcom/transsion/mbwidget/d;

    new-instance v1, Lcom/transsion/mbwidget/c;

    invoke-direct {v1}, Lcom/transsion/mbwidget/c;-><init>()V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    sput-object v1, Lcom/transsion/mbwidget/d;->b:Lkotlin/Lazy;

    const-wide/32 v1, 0x240c8400

    sput-wide v1, Lcom/transsion/mbwidget/d;->d:J

    sget-object v1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsnet/downloader/manager/g;->e(Llj/m0;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lak/a0;->a:Lak/a0;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lak/a0;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/transsion/mbwidget/d;->q()V

    goto :goto_0

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "Skip widget workers because storage or WorkManager is unavailable"

    const/4 v2, 0x0

    const-string v3, "DeskWidget_"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llj/a;-><init>()V

    return-void
.end method

.method public static synthetic h()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/mbwidget/d;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final native l()Z
.end method

.method private static final native p()Lcom/tencent/mmkv/MMKV;
.end method

.method private final native q()V
.end method

.method public static synthetic t(Lcom/transsion/mbwidget/d;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/mbwidget/d;->s(Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public native e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
.end method

.method public final native i(Lkotlin/jvm/functions/Function0;)Z
.end method

.method public final native j()Lcom/transsion/mbwidget/guide/a;
.end method

.method public final native k()Lcom/tencent/mmkv/MMKV;
.end method

.method public final native m()Z
.end method

.method public final native n()Z
.end method

.method public final native o()Z
.end method

.method public final native r(Lcom/transsion/mbwidget/guide/a;)V
.end method

.method public final native s(Lkotlin/jvm/functions/Function0;)Z
.end method
