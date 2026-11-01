.class public Lcom/transsion/al/ka/AccountSyncService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/al/ka/AccountSyncService$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountSyncService"


# instance fields
.field private mThreadSyncAdapter:Lcom/transsion/al/ka/AccountSyncService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/transsion/al/ka/AccountSyncService;->mThreadSyncAdapter:Lcom/transsion/al/ka/AccountSyncService$a;

    invoke-virtual {p1}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/transsion/al/ka/AccountSyncService$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/al/ka/AccountSyncService$a;-><init>(Lcom/transsion/al/ka/AccountSyncService;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/al/ka/AccountSyncService;->mThreadSyncAdapter:Lcom/transsion/al/ka/AccountSyncService$a;

    return-void
.end method
