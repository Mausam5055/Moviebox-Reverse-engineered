.class public final Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment;
.super Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment;",
        "Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;",
        "<init>",
        "()V",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "",
        "G0",
        "initAudioListener",
        "F0",
        "k",
        "a",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment;->k:Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public F0()V
    .locals 0

    return-void
.end method

.method public G0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/p;->o:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    sget v1, Lcom/tn/lib/widget/R$drawable;->libui_ic_base_left:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "postdetail_image_text"

    return-object v0
.end method

.method public initAudioListener()V
    .locals 0

    return-void
.end method
