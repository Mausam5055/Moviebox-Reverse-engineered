.class public final synthetic Lcom/transsion/ugcvideodetail/dialog/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/dialog/c;->a:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/dialog/c;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/dialog/c;->a:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/dialog/c;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;->q0(Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
