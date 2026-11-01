.class public final synthetic Lcom/transsion/home/fragment/tab/t1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/t1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iput-boolean p2, p0, Lcom/transsion/home/fragment/tab/t1;->b:Z

    iput p3, p0, Lcom/transsion/home/fragment/tab/t1;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/t1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iget-boolean v1, p0, Lcom/transsion/home/fragment/tab/t1;->b:Z

    iget v2, p0, Lcom/transsion/home/fragment/tab/t1;->c:I

    invoke-static {v0, v1, v2}, Lcom/transsion/home/fragment/tab/TrendingFragment;->C0(Lcom/transsion/home/fragment/tab/TrendingFragment;ZI)V

    return-void
.end method
