.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/FilterItem;

.field public final synthetic b:Lcom/transsion/home/adapter/operateUGC/provider/j$a;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/FilterItem;Lcom/transsion/home/adapter/operateUGC/provider/j$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/i;->a:Lcom/transsion/home/bean/FilterItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/i;->b:Lcom/transsion/home/adapter/operateUGC/provider/j$a;

    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/i;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/i;->a:Lcom/transsion/home/bean/FilterItem;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/i;->b:Lcom/transsion/home/adapter/operateUGC/provider/j$a;

    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/i;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/j$a;->B1(Lcom/transsion/home/bean/FilterItem;Lcom/transsion/home/adapter/operateUGC/provider/j$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
