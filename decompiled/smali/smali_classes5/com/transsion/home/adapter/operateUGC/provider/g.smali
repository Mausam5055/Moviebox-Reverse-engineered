.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/g;->a:Lcom/transsion/home/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/g;->b:Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;

    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/g;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/g;->a:Lcom/transsion/home/bean/OperateItem;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/g;->b:Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;

    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/g;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
