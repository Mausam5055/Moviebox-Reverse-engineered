.class public final synthetic Lcom/transsion/postdetail/ui/fragment/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/k;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/k;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    check-cast p1, Lcom/transsion/postdetail/bean/CommentListBean;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/postdetail/bean/CommentListBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
