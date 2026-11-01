.class public final synthetic Lcom/transsion/search_pugc/fragment/result/f;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

.field public final synthetic b:Lcom/transsion/search_pugc/fragment/result/adapter/c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;Lcom/transsion/search_pugc/fragment/result/adapter/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/f;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/result/f;->b:Lcom/transsion/search_pugc/fragment/result/adapter/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/f;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/f;->b:Lcom/transsion/search_pugc/fragment/result/adapter/c;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->b0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;Lcom/transsion/search_pugc/fragment/result/adapter/c;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
