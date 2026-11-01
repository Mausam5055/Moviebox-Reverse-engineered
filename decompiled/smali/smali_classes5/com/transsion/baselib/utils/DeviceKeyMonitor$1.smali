.class public final Lcom/transsion/baselib/utils/DeviceKeyMonitor$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/utils/DeviceKeyMonitor;-><init>(Landroid/content/Context;Lcom/transsion/baselib/utils/DeviceKeyMonitor$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/baselib/utils/DeviceKeyMonitor$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "BaseLib_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/utils/DeviceKeyMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/utils/DeviceKeyMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/utils/DeviceKeyMonitor$1;->a:Lcom/transsion/baselib/utils/DeviceKeyMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x53ef7d97

    if-eq p2, v0, :cond_5

    const v0, 0x14e36b4d

    if-eq p2, v0, :cond_4

    const v0, 0x41218920

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "homekey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/baselib/utils/DeviceKeyMonitor$1;->a:Lcom/transsion/baselib/utils/DeviceKeyMonitor;

    invoke-static {p1}, Lcom/transsion/baselib/utils/DeviceKeyMonitor;->a(Lcom/transsion/baselib/utils/DeviceKeyMonitor;)Lcom/transsion/baselib/utils/DeviceKeyMonitor$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/baselib/utils/DeviceKeyMonitor$b;->onHomeClick()V

    goto :goto_0

    :cond_4
    const-string p2, "recentapps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_5
    const-string p2, "assist"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/transsion/baselib/utils/DeviceKeyMonitor$1;->a:Lcom/transsion/baselib/utils/DeviceKeyMonitor;

    invoke-static {p1}, Lcom/transsion/baselib/utils/DeviceKeyMonitor;->a(Lcom/transsion/baselib/utils/DeviceKeyMonitor;)Lcom/transsion/baselib/utils/DeviceKeyMonitor$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/baselib/utils/DeviceKeyMonitor$b;->onRecentClick()V

    :goto_0
    return-void
.end method
