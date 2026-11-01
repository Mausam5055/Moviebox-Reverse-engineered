.class public final synthetic Lsv/m;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv/m;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iput-object p2, p0, Lsv/m;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lsv/m;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iget-object v1, p0, Lsv/m;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->s(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
