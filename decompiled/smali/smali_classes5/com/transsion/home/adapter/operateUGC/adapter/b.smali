.class public final synthetic Lcom/transsion/home/adapter/operateUGC/adapter/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field public final synthetic b:Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->b:Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;

    iput p3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->b:Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;

    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;->B1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;ILandroid/view/View;)V

    return-void
.end method
