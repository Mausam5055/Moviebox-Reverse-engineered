.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

.field public final synthetic b:Lcom/transsion/home/adapter/operateUGC/provider/s$b;

.field public final synthetic c:Lcom/transsion/home/adapter/operateUGC/provider/s$a;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->b:Lcom/transsion/home/adapter/operateUGC/provider/s$b;

    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->c:Lcom/transsion/home/adapter/operateUGC/provider/s$a;

    iput p4, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->b:Lcom/transsion/home/adapter/operateUGC/provider/s$b;

    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->c:Lcom/transsion/home/adapter/operateUGC/provider/s$a;

    iget v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->B1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;ILandroid/view/View;)V

    return-void
.end method
