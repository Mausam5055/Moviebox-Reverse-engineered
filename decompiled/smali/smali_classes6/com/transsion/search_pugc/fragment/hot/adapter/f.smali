.class public final synthetic Lcom/transsion/search_pugc/fragment/hot/adapter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/hot/adapter/g;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/hot/adapter/g;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/f;->a:Lcom/transsion/search_pugc/fragment/hot/adapter/g;

    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/f;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iput p3, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/f;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/f;->a:Lcom/transsion/search_pugc/fragment/hot/adapter/g;

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/f;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iget v2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/f;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/search_pugc/fragment/hot/adapter/g;->B1(Lcom/transsion/search_pugc/fragment/hot/adapter/g;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILandroid/view/View;)V

    return-void
.end method
