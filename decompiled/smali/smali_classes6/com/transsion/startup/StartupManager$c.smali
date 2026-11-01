.class public final Lcom/transsion/startup/StartupManager$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/report/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/startup/StartupManager;->J()V
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

    iput-object p1, p0, Lcom/transsion/startup/StartupManager$c;->a:Lcom/transsion/startup/StartupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundStatusChange(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/startup/StartupManager$c;->a:Lcom/transsion/startup/StartupManager;

    invoke-static {p1}, Lcom/transsion/startup/StartupManager;->h(Lcom/transsion/startup/StartupManager;)Lyt/a;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/startup/StartupManager$c;->a:Lcom/transsion/startup/StartupManager;

    invoke-static {v0}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "app"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Lyt/a;->b(Landroid/app/Application;)V

    :cond_1
    return-void
.end method
