.class public final Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$a;,
        Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;

.field private final c:Ljava/lang/String;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->e:Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->b:Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;

    const-string p2, "DeviceKeyMonitor"

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->c:Ljava/lang/String;

    new-instance p2, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$1;

    invoke-direct {p2, p0}, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$1;-><init>(Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;)V

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->d:Landroid/content/BroadcastReceiver;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x21

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    if-lt v0, v1, :cond_0

    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;)Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->b:Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->d:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
