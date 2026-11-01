.class public final synthetic Lcom/transsion/home/fragment/tab/a2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/a2;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/a2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/a2;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/a2;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->A0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;Ljava/util/List;)V

    return-void
.end method
