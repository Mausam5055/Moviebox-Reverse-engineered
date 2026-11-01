.class public final Lcom/transsion/upgradesdk/page/j;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Law/i;


# direct methods
.method public constructor <init>(Law/i;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/upgradesdk/page/j;->a:Law/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/page/j;->a:Law/i;

    iget-object v0, v0, Law/i;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez v0, :cond_0

    const-string v0, "upgradeData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/upgradesdk/page/j;->a:Law/i;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
