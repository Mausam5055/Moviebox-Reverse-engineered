.class public final synthetic Lcom/transsion/home/fragment/home/c0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/c0;->a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/c0;->a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V

    return-void
.end method
