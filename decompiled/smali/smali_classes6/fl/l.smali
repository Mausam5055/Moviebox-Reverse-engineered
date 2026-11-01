.class public final synthetic Lfl/l;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/home/category/adapter/b;

.field public final synthetic b:Lcom/transsion/home/category/fragment/PlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/category/adapter/b;Lcom/transsion/home/category/fragment/PlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfl/l;->a:Lcom/transsion/home/category/adapter/b;

    iput-object p2, p0, Lfl/l;->b:Lcom/transsion/home/category/fragment/PlayListFragment;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lfl/l;->a:Lcom/transsion/home/category/adapter/b;

    iget-object v1, p0, Lfl/l;->b:Lcom/transsion/home/category/fragment/PlayListFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/home/category/fragment/PlayListFragment;->o0(Lcom/transsion/home/category/adapter/b;Lcom/transsion/home/category/fragment/PlayListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
