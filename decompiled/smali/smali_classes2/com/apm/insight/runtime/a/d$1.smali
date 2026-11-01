.class final Lcom/apm/insight/runtime/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/runtime/a/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/apm/insight/runtime/a/d;


# direct methods
.method constructor <init>(Lcom/apm/insight/runtime/a/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/runtime/a/d$1;->b:Lcom/apm/insight/runtime/a/d;

    iput-object p2, p0, Lcom/apm/insight/runtime/a/d$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/apm/insight/runtime/a/d$1;->b:Lcom/apm/insight/runtime/a/d;

    iget-object v1, p0, Lcom/apm/insight/runtime/a/d$1;->a:Landroid/content/Context;

    new-instance v2, Lcom/apm/insight/runtime/a/d$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/apm/insight/runtime/a/d$a;-><init>(Lcom/apm/insight/runtime/a/d;B)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v1, "NPTH_CATCH"

    invoke-static {v0, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
