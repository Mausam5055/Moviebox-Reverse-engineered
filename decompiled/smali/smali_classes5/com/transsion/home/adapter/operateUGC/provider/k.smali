.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/operateUGC/provider/l;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

.field public final synthetic c:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic d:Lcom/tn/lib/view/FlowLayout;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/operateUGC/provider/l;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Lcom/transsion/home/bean/OperateItem;Lcom/tn/lib/view/FlowLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->a:Lcom/transsion/home/adapter/operateUGC/provider/l;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->c:Lcom/transsion/home/bean/OperateItem;

    iput-object p4, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->d:Lcom/tn/lib/view/FlowLayout;

    iput-object p5, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->a:Lcom/transsion/home/adapter/operateUGC/provider/l;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->c:Lcom/transsion/home/bean/OperateItem;

    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->d:Lcom/tn/lib/view/FlowLayout;

    iget-object v4, p0, Lcom/transsion/home/adapter/operateUGC/provider/k;->e:Landroid/view/View;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/adapter/operateUGC/provider/l;->y(Lcom/transsion/home/adapter/operateUGC/provider/l;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Lcom/transsion/home/bean/OperateItem;Lcom/tn/lib/view/FlowLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
