.class public final synthetic Lcom/transsion/postdetail/ui/fragment/l5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

.field public final synthetic b:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/l5;->a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/l5;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/l5;->a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/l5;->b:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;->d0(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;Ljava/lang/Integer;)V

    return-void
.end method
