.class public final Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/commercialization/task/treasure/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-static {v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->s0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)Lok/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lok/b;->onSuccess()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    const-string v1, "typeAdInstall"

    invoke-static {v0, v1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->r0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    const-string v1, "typeAdChange"

    invoke-static {v0, v1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->r0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Ljava/lang/String;)V

    return-void
.end method
