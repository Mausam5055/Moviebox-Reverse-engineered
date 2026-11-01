.class public final synthetic Lcom/transsion/home/fragment/tab/w0;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/b;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic b:Lcom/transsion/home/adapter/trending/b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/adapter/trending/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/w0;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/w0;->b:Lcom/transsion/home/adapter/trending/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/w0;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/w0;->b:Lcom/transsion/home/adapter/trending/b;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/home/fragment/tab/TrendingFragment;->S0(Lcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/adapter/trending/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
