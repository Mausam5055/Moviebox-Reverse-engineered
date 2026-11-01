.class public final synthetic Lfl/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/category/fragment/PlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/category/fragment/PlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfl/k;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfl/k;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    check-cast p1, Lcom/transsion/home/bean/PlayListResp;

    invoke-static {v0, p1}, Lcom/transsion/home/category/fragment/PlayListFragment;->l0(Lcom/transsion/home/category/fragment/PlayListFragment;Lcom/transsion/home/bean/PlayListResp;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
