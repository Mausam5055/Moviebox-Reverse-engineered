.class public final synthetic Lcom/transsion/home/fragment/tab/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/SubShortTvFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/SubShortTvFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/x;->a:Lcom/transsion/home/fragment/tab/SubShortTvFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/x;->a:Lcom/transsion/home/fragment/tab/SubShortTvFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/tab/SubShortTvFragment;->t0(Lcom/transsion/home/fragment/tab/SubShortTvFragment;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
