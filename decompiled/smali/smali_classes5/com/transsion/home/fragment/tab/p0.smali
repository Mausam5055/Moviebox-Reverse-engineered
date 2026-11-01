.class public final synthetic Lcom/transsion/home/fragment/tab/p0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/SubTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/SubTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/p0;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/p0;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/SubTabFragment;->u0(Lcom/transsion/home/fragment/tab/SubTabFragment;)Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    move-result-object v0

    return-object v0
.end method
