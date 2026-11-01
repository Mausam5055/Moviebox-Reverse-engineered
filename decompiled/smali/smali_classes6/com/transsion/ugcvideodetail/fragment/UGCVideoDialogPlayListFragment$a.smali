.class public final Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIILcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;)Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListFragment;
    .locals 3

    const-string v0, "videoFrom"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListFragment;

    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tab_index"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "tab_start_position"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "tab_end_position"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "video_from"

    invoke-virtual {p4}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->getValue()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
