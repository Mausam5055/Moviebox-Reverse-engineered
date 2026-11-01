.class public final synthetic Lcom/transsion/commercialization/task/treasure/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/task/treasure/TreasureAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/g;->a:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/g;->a:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {v0}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->d(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method
