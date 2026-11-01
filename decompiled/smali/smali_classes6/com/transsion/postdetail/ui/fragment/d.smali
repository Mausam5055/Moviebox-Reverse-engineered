.class public final synthetic Lcom/transsion/postdetail/ui/fragment/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/d;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    iput p2, p0, Lcom/transsion/postdetail/ui/fragment/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/d;->a:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    iget v1, p0, Lcom/transsion/postdetail/ui/fragment/d;->b:I

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->b0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V

    return-void
.end method
