.class public final synthetic Lcom/transsion/ugcvideodetail/fragment/z0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/z0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/z0;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->o0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
