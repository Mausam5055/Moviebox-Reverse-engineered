.class public final synthetic Lcom/transsion/ugcvideodetail/dialog/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;

.field public final synthetic b:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/dialog/d;->a:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/dialog/d;->b:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/dialog/d;->a:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/dialog/d;->b:Landroid/view/Window;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;->s0(Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
