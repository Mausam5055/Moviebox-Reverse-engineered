.class Lsf/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsf/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsf/a;


# direct methods
.method constructor <init>(Lsf/a;)V
    .locals 0

    iput-object p1, p0, Lsf/a$a;->a:Lsf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lsf/a$a;->a:Lsf/a;

    iget-object v0, p1, Lsf/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lsf/a;->b(Lsf/a;)Landroid/content/ServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lsf/a$a;->a:Lsf/a;

    iget-object v0, p1, Lsf/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lsf/a;->b(Lsf/a;)Landroid/content/ServiceConnection;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
