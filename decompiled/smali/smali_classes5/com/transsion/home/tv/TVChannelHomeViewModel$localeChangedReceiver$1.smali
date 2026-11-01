.class public final Lcom/transsion/home/tv/TVChannelHomeViewModel$localeChangedReceiver$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/TVChannelHomeViewModel;-><init>(Landroid/app/Application;)V
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
        "com/transsion/home/tv/TVChannelHomeViewModel$localeChangedReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "Home_psRelease"
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
.field final synthetic a:Lcom/transsion/home/tv/TVChannelHomeViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/tv/TVChannelHomeViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$localeChangedReceiver$1;->a:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lrl/e;->a:Lrl/e;

    invoke-virtual {p1}, Lrl/e;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "default_tv_country"

    invoke-virtual {p1, p2}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$localeChangedReceiver$1;->a:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string p2, "locale changed, clear cached tv country"

    const/4 v0, 0x0

    const-string v1, "TVChannelHomeViewModel"

    invoke-virtual {p1, v1, p2, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
