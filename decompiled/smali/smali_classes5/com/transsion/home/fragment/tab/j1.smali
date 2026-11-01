.class public final synthetic Lcom/transsion/home/fragment/tab/j1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/j1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/j1;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/transsion/home/fragment/tab/j1;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/j1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/j1;->b:Ljava/util/List;

    iget-boolean v2, p0, Lcom/transsion/home/fragment/tab/j1;->c:Z

    invoke-static {v0, v1, v2}, Lcom/transsion/home/fragment/tab/TrendingFragment;->J0(Lcom/transsion/home/fragment/tab/TrendingFragment;Ljava/util/List;Z)V

    return-void
.end method
