.class public final synthetic Lcom/transsion/shorttv/ui/fragment/f0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/f0;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    iput p2, p0, Lcom/transsion/shorttv/ui/fragment/f0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/f0;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    iget v1, p0, Lcom/transsion/shorttv/ui/fragment/f0;->b:I

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->q0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;I)V

    return-void
.end method
