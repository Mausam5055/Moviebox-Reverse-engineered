.class public final synthetic Lcom/transsion/home/fragment/tab/b1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic d:Lcom/transsion/home/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(IILcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/home/fragment/tab/b1;->a:I

    iput p2, p0, Lcom/transsion/home/fragment/tab/b1;->b:I

    iput-object p3, p0, Lcom/transsion/home/fragment/tab/b1;->c:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iput-object p4, p0, Lcom/transsion/home/fragment/tab/b1;->d:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/transsion/home/fragment/tab/b1;->a:I

    iget v1, p0, Lcom/transsion/home/fragment/tab/b1;->b:I

    iget-object v2, p0, Lcom/transsion/home/fragment/tab/b1;->c:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iget-object v3, p0, Lcom/transsion/home/fragment/tab/b1;->d:Lcom/transsion/home/bean/OperateItem;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/home/fragment/tab/TrendingFragment;->M0(IILcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method
