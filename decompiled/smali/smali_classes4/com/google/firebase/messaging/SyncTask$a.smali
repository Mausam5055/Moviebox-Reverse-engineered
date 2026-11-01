.class Lcom/google/firebase/messaging/SyncTask$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/SyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/firebase/messaging/SyncTask;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/SyncTask;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/SyncTask$a;->a:Lcom/google/firebase/messaging/SyncTask;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/messaging/SyncTask;->isDebugLogEnabled()Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/messaging/SyncTask$a;->a:Lcom/google/firebase/messaging/SyncTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/messaging/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/SyncTask$a;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/google/firebase/messaging/SyncTask$a;->a:Lcom/google/firebase/messaging/SyncTask;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/SyncTask;->isDeviceConnected()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/google/firebase/messaging/SyncTask;->isDebugLogEnabled()Z

    iget-object p1, p0, Lcom/google/firebase/messaging/SyncTask$a;->a:Lcom/google/firebase/messaging/SyncTask;

    invoke-static {p1}, Lcom/google/firebase/messaging/SyncTask;->access$000(Lcom/google/firebase/messaging/SyncTask;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/messaging/SyncTask$a;->a:Lcom/google/firebase/messaging/SyncTask;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->n(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/google/firebase/messaging/SyncTask$a;->b:Landroid/content/Context;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/messaging/SyncTask$a;->a:Lcom/google/firebase/messaging/SyncTask;

    return-void
.end method
