.class public final synthetic Lcom/transsion/home/fragment/tab/b2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

.field public final synthetic b:Lcom/tn/lib/view/DefaultView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;Lcom/tn/lib/view/DefaultView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/b2;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/b2;->b:Lcom/tn/lib/view/DefaultView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/b2;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/b2;->b:Lcom/tn/lib/view/DefaultView;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->v0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V

    return-void
.end method
