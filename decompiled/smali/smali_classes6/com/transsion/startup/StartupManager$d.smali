.class public final Lcom/transsion/startup/StartupManager$d;
.super Ljava/lang/Object;

# interfaces
.implements Lrm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/startup/StartupManager;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/startup/StartupManager;


# direct methods
.method constructor <init>(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/startup/StartupManager;->x(Lcom/transsion/startup/StartupManager;Z)V

    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    invoke-static {v0}, Lcom/transsion/startup/StartupManager;->u(Lcom/transsion/startup/StartupManager;)V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/fissionapi/IFissionProvider;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/fissionapi/IFissionProvider;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/transsion/fissionapi/IFissionProvider$a;->a(Lcom/transsion/fissionapi/IFissionProvider;ZILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/transsion/upload/log/UploadLoggerManager;->a:Lcom/transsion/upload/log/UploadLoggerManager;

    invoke-virtual {v0}, Lcom/transsion/upload/log/UploadLoggerManager;->g()V

    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    invoke-static {v0}, Lcom/transsion/startup/StartupManager;->w(Lcom/transsion/startup/StartupManager;)V

    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    invoke-static {v0, v2}, Lcom/transsion/startup/StartupManager;->x(Lcom/transsion/startup/StartupManager;Z)V

    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    invoke-static {v0}, Lcom/transsion/startup/StartupManager;->u(Lcom/transsion/startup/StartupManager;)V

    return-void
.end method
