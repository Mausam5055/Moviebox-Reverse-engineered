.class public final Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field final synthetic c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;->a:I

    const-wide/16 p1, 0x12c

    iput-wide p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;->b:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;->a:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;->a:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;->c:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lqv/f;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lqv/f;->e:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    return-void
.end method
