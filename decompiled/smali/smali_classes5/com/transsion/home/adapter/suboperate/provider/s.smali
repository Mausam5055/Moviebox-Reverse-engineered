.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/s;->a:Lcom/transsion/home/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/s;->b:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/s;->a:Lcom/transsion/home/bean/OperateItem;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/s;->b:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->z(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Landroid/view/View;)V

    return-void
.end method
