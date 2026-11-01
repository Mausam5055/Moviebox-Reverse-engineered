.class public final synthetic Lcom/transsion/search_pugc/fragment/result/provider/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/bean/SearchResultItem;

.field public final synthetic b:Lcom/transsion/search_pugc/fragment/result/provider/s;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/o;->a:Lcom/transsion/search_pugc/bean/SearchResultItem;

    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/result/provider/o;->b:Lcom/transsion/search_pugc/fragment/result/provider/s;

    iput-object p3, p0, Lcom/transsion/search_pugc/fragment/result/provider/o;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/o;->a:Lcom/transsion/search_pugc/bean/SearchResultItem;

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/provider/o;->b:Lcom/transsion/search_pugc/fragment/result/provider/s;

    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/provider/o;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/search_pugc/fragment/result/provider/s;->D(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
