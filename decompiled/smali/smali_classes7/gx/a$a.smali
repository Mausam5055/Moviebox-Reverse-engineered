.class public final Lgx/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgx/a;->a(Ljava/lang/String;ZLandroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgx/a$a;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lgx/a$a;->b:Landroid/app/Activity;

    iput-object p3, p0, Lgx/a$a;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lgx/a$a;->d:Z

    iput-object p5, p0, Lgx/a$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFail(Ljava/lang/String;)V
    .locals 7

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ps \u8bf7\u6c42\u5931\u8d25 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "update"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lgx/a$a;->a:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V
    .locals 7

    const-string v0, "upgradeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->isNewVersion()Z

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->getShowUpgradeDialog()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ps \u8bf7\u6c42\u6210\u529f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "update"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->getShowUpgradeDialog()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lgx/a$a$a;

    iget-object v0, p0, Lgx/a$a;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lgx/a$a;->d:Z

    iget-object v2, p0, Lgx/a$a;->e:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lgx/a$a$a;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;

    iget-object v1, p0, Lgx/a$a;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;-><init>(Landroid/app/Activity;ZLcom/transsion/upgradesdk/manager/UpgradeDialogCallback;)V

    const/4 p1, 0x0

    iput p1, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->dialogStyle:I

    invoke-static {}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->showUpgradeDialog(Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgx/a$a;->a:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    const-string v0, "showUpgradeDialog false"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
