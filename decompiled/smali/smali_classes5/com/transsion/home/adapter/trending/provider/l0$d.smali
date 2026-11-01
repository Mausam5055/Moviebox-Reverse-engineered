.class public final Lcom/transsion/home/adapter/trending/provider/l0$d;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/trending/provider/l0;->Q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;Lrl/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrl/j;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lrl/j;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/l0$d;->a:Lrl/j;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/l0$d;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/transsion/home/adapter/trending/provider/l0$d;->a:Lrl/j;

    iget-object p2, p0, Lcom/transsion/home/adapter/trending/provider/l0$d;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lrl/j;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
