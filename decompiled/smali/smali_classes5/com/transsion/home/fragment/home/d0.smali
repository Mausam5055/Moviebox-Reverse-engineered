.class public final synthetic Lcom/transsion/home/fragment/home/d0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/d0;->a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/d0;->a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    invoke-static {v0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->d(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
