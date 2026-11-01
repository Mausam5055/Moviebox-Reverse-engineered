.class public final synthetic Lcom/transsion/home/adapter/operateUGC/adapter/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

.field public final synthetic b:Lcom/transsion/home/adapter/operateUGC/adapter/d;

.field public final synthetic c:Lcom/transsion/home/bean/RankingListItem;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/adapter/d;Lcom/transsion/home/bean/RankingListItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/c;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/c;->b:Lcom/transsion/home/adapter/operateUGC/adapter/d;

    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/c;->c:Lcom/transsion/home/bean/RankingListItem;

    iput p4, p0, Lcom/transsion/home/adapter/operateUGC/adapter/c;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/c;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/c;->b:Lcom/transsion/home/adapter/operateUGC/adapter/d;

    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/c;->c:Lcom/transsion/home/bean/RankingListItem;

    iget v3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/c;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/operateUGC/adapter/d;->B1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/adapter/d;Lcom/transsion/home/bean/RankingListItem;ILandroid/view/View;)V

    return-void
.end method
