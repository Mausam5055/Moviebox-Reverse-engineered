.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->a(Ljava/lang/String;Lcom/transsion/share/bean/PostType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e$a;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e$a;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e$a;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getVideoDetailModel$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->r(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
