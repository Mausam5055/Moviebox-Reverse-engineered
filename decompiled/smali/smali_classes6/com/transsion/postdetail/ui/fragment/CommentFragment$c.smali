.class public final Lcom/transsion/postdetail/ui/fragment/CommentFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/CommentFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, Lcom/transsion/postdetail/ui/fragment/CommentFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    iget-object v3, v1, Lcom/transsion/postdetail/ui/fragment/CommentFragment$c;->b:Ljava/lang/String;

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->r0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Lcom/transsion/postdetail/comment/n;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ltz v0, :cond_6

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v5

    if-lt v0, v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v4, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/CommentBean;->isSubComment()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "reply"

    :goto_1
    move-object v9, v4

    goto :goto_2

    :cond_5
    const-string v4, "main"

    goto :goto_1

    :goto_2
    sget-object v4, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->v0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->s0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->w0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->u0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->t0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->x0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->o0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;

    move-result-object v15

    move-object v2, v4

    move/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-virtual/range {v2 .. v15}, Lcom/transsion/postdetail/helper/a;->g(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method
