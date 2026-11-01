.class public final synthetic Lvq/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/result/ResultWrapData;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lvq/f;

.field public final synthetic d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/result/ResultWrapData;Landroid/widget/ImageView;Lvq/f;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvq/e;->a:Lcom/transsion/search/fragment/result/ResultWrapData;

    iput-object p2, p0, Lvq/e;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lvq/e;->c:Lvq/f;

    iput-object p4, p0, Lvq/e;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lvq/e;->a:Lcom/transsion/search/fragment/result/ResultWrapData;

    iget-object v1, p0, Lvq/e;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lvq/e;->c:Lvq/f;

    iget-object v3, p0, Lvq/e;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, v2, v3, p1}, Lvq/f;->y(Lcom/transsion/search/fragment/result/ResultWrapData;Landroid/widget/ImageView;Lvq/f;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
