.class public final synthetic Lcom/transsion/home/fragment/home/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/home/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/home/HomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/p;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/p;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    check-cast p1, Lcom/transsion/home/bean/AppTab;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/home/HomeFragment;->k0(Lcom/transsion/home/fragment/home/HomeFragment;Lcom/transsion/home/bean/AppTab;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
