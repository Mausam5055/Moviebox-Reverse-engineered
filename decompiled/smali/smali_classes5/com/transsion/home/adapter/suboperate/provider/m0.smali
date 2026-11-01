.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/m0;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/m0;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/m0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/m0;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/m0;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/m0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/m0;->c:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->y(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
