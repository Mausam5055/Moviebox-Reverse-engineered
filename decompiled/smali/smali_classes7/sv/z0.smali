.class public final synthetic Lsv/z0;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/adapter/g;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;Lcom/transsion/ugcvideodetail/adapter/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv/z0;->a:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    iput-object p2, p0, Lsv/z0;->b:Lcom/transsion/ugcvideodetail/adapter/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lsv/z0;->a:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    iget-object v1, p0, Lsv/z0;->b:Lcom/transsion/ugcvideodetail/adapter/g;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;->o(Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;Lcom/transsion/ugcvideodetail/adapter/g;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
