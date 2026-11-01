.class public final synthetic Lcom/transsion/commercialization/task/treasure/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

.field public final synthetic b:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureAdView;Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/i;->a:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    iput-object p2, p0, Lcom/transsion/commercialization/task/treasure/i;->b:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/i;->a:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    iget-object v1, p0, Lcom/transsion/commercialization/task/treasure/i;->b:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->o0(Lcom/transsion/commercialization/task/treasure/TreasureAdView;Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
