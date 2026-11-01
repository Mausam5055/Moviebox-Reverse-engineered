.class public final synthetic Lcom/transsion/ugcvideodetail/fragment/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDialogPlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDialogPlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/r;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDialogPlayListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/r;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDialogPlayListFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDialogPlayListFragment;->l0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDialogPlayListFragment;I)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    return-object p1
.end method
