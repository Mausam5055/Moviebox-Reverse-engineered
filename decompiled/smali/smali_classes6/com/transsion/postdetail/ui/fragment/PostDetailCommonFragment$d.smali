.class public final Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->showCommentsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/moviedetailapi/bean/Stat;->setCommentCount(Ljava/lang/Long;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->B0(Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;)V

    return-void
.end method
