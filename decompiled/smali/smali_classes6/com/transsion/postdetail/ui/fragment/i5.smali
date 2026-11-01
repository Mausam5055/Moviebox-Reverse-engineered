.class public final synthetic Lcom/transsion/postdetail/ui/fragment/i5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/i5;->a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    iput p2, p0, Lcom/transsion/postdetail/ui/fragment/i5;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/i5;->a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    iget v1, p0, Lcom/transsion/postdetail/ui/fragment/i5;->b:I

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;->l0(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;I)V

    return-void
.end method
