.class public final synthetic Lcom/transsion/home/adapter/trending/provider/j0;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/transsion/home/adapter/trending/provider/l0;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic f:Lrl/j;

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/l0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lrl/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/j0;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/j0;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/j0;->c:Lcom/transsion/home/adapter/trending/provider/l0;

    iput-object p4, p0, Lcom/transsion/home/adapter/trending/provider/j0;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/home/adapter/trending/provider/j0;->e:Lcom/transsion/home/bean/OperateItem;

    iput-object p6, p0, Lcom/transsion/home/adapter/trending/provider/j0;->f:Lrl/j;

    iput-object p7, p0, Lcom/transsion/home/adapter/trending/provider/j0;->g:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p8, p0, Lcom/transsion/home/adapter/trending/provider/j0;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/j0;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/j0;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/j0;->c:Lcom/transsion/home/adapter/trending/provider/l0;

    iget-object v3, p0, Lcom/transsion/home/adapter/trending/provider/j0;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/home/adapter/trending/provider/j0;->e:Lcom/transsion/home/bean/OperateItem;

    iget-object v5, p0, Lcom/transsion/home/adapter/trending/provider/j0;->f:Lrl/j;

    iget-object v6, p0, Lcom/transsion/home/adapter/trending/provider/j0;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/transsion/home/adapter/trending/provider/j0;->h:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    invoke-static/range {v0 .. v10}, Lcom/transsion/home/adapter/trending/provider/l0;->y(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/l0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lrl/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
