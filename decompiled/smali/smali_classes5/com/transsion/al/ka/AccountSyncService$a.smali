.class Lcom/transsion/al/ka/AccountSyncService$a;
.super Landroid/content/AbstractThreadedSyncAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/al/ka/AccountSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/al/ka/AccountSyncService;


# direct methods
.method public constructor <init>(Lcom/transsion/al/ka/AccountSyncService;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/al/ka/AccountSyncService$a;->a:Lcom/transsion/al/ka/AccountSyncService;

    invoke-direct {p0, p2, p3}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0

    const-string p1, "AccountSyncService"

    const-string p2, "onPerformSync"

    invoke-static {p1, p2}, Lcom/transsion/al/ka/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
