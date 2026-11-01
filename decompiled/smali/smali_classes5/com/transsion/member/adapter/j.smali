.class public final synthetic Lcom/transsion/member/adapter/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/member/adapter/k;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/memberapi/SkuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/adapter/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/SkuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/adapter/j;->a:Lcom/transsion/member/adapter/k;

    iput-object p2, p0, Lcom/transsion/member/adapter/j;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/transsion/member/adapter/j;->c:Lcom/transsion/memberapi/SkuItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/adapter/j;->a:Lcom/transsion/member/adapter/k;

    iget-object v1, p0, Lcom/transsion/member/adapter/j;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v2, p0, Lcom/transsion/member/adapter/j;->c:Lcom/transsion/memberapi/SkuItem;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/member/adapter/k;->B1(Lcom/transsion/member/adapter/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)V

    return-void
.end method
