.class public final Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;

.field private static final b:I

.field private static final c:Ljava/util/Map;

.field private static final d:Landroid/app/NotificationManager;

.field private static e:Lcom/transsion/push/feature/toolbar/ToolbarNoticeConfig;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;

    invoke-direct {v0}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;-><init>()V

    sput-object v0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->a:Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;

    const v0, 0x2f1bb01e

    sput v0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->b:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->c:Ljava/util/Map;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->d:Landroid/app/NotificationManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/lib/push/R$string;->tool_notice_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "mbx_tool_notice"

    invoke-static {v3, v1, v2}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v0, v1}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native A()V
.end method

.method private final native B(Landroid/widget/RemoteViews;Lkotlin/Pair;)V
.end method

.method private final native C(Landroid/widget/RemoteViews;Lkotlin/Pair;)V
.end method

.method private final native D(Landroid/widget/RemoteViews;Lkotlin/Pair;)V
.end method

.method private final native E()V
.end method

.method private static final native F(Lkotlin/Pair;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lkotlin/Unit;
.end method

.method public static synthetic a(Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->x(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/Pair;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->F(Lkotlin/Pair;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->s(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->t(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;Lcom/transsion/push/feature/toolbar/ToolbarNoticeConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->w(Lcom/transsion/push/feature/toolbar/ToolbarNoticeConfig;)V

    return-void
.end method

.method public static final synthetic f(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->f:Z

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/push/feature/toolbar/ToolbarNoticeConfig;)V
    .locals 0

    sput-object p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->e:Lcom/transsion/push/feature/toolbar/ToolbarNoticeConfig;

    return-void
.end method

.method private final native h(Landroid/widget/RemoteViews;Z)V
.end method

.method private final native j(JI)Z
.end method

.method private final native l()I
.end method

.method private final native m(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
.end method

.method private final native n()I
.end method

.method private final native o()Lkotlin/Pair;
.end method

.method private final native p()I
.end method

.method private final native q(Lkotlin/Pair;Lkotlin/Pair;)Landroidx/core/app/NotificationCompat$m;
.end method

.method private final native r()Z
.end method

.method private final native s(I)Z
.end method

.method private final native t(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method private final native u(Lkotlin/Pair;Lkotlin/jvm/functions/Function2;)V
.end method

.method private final native w(Lcom/transsion/push/feature/toolbar/ToolbarNoticeConfig;)V
.end method

.method private static final native x(Z)Lkotlin/Unit;
.end method

.method private final native z(Ljava/lang/String;)V
.end method


# virtual methods
.method public final native G()V
.end method

.method public final native i()V
.end method

.method public final native k(Lcom/transsion/push/feature/toolbar/NoticeIntentType;)Ljava/lang/String;
.end method

.method public final native v(Landroid/content/Intent;)V
.end method

.method public final native y()V
.end method
