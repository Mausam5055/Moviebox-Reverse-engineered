.class public final synthetic Lcom/transsion/commercialization/task/treasure/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

.field public final synthetic b:Lcom/transsion/memberapi/PayModule;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Lcom/transsion/memberapi/PayModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/j;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    iput-object p2, p0, Lcom/transsion/commercialization/task/treasure/j;->b:Lcom/transsion/memberapi/PayModule;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/j;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    iget-object v1, p0, Lcom/transsion/commercialization/task/treasure/j;->b:Lcom/transsion/memberapi/PayModule;

    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->p0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Lcom/transsion/memberapi/PayModule;Landroid/view/View;)V

    return-void
.end method
