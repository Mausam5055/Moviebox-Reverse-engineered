.class public abstract synthetic Lcom/transsion/commercialization/pslink/c;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
