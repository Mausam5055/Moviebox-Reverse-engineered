.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic c:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/n;->a:Lcom/transsion/home/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/n;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/n;->c:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/n;->a:Lcom/transsion/home/bean/OperateItem;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/n;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/n;->c:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;->y(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsEducationProvider;Landroid/view/View;)V

    return-void
.end method
