.class public final synthetic Lcom/transsion/postdetail/ui/fragment/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/bean/CommentBody;

.field public final synthetic b:Lcom/transsion/postdetail/ui/fragment/CommentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/e;->a:Lcom/transsion/postdetail/bean/CommentBody;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/e;->b:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/e;->a:Lcom/transsion/postdetail/bean/CommentBody;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/e;->b:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i0(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
