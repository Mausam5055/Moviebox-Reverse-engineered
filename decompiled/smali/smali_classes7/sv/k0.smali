.class public final synthetic Lsv/k0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailInfoView;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailInfoView;Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv/k0;->a:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailInfoView;

    iput-object p2, p0, Lsv/k0;->b:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lsv/k0;->a:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailInfoView;

    iget-object v1, p0, Lsv/k0;->b:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    invoke-static {v0, v1, p1}, Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailInfoView;->l(Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailInfoView;Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;Landroid/view/View;)V

    return-void
.end method
