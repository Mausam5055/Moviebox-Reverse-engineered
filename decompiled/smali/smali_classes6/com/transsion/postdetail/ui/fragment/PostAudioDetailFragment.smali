.class public final Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;
.super Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

# interfaces
.implements Lcom/transsion/player/orplayer/f;
.implements Lcom/transsion/room/api/IFloatingApi$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u0000 <2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001=B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J!\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\n2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0019\u0010!\u001a\u00020\n2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008!\u0010 J\u0019\u0010\"\u001a\u00020\n2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\"\u0010 J\u000f\u0010#\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008#\u0010\u0005J\r\u0010$\u001a\u00020\n\u00a2\u0006\u0004\u0008$\u0010\u0005R\u0018\u0010\'\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010*\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u001d\u00100\u001a\u0004\u0018\u00010+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\u001d\u00105\u001a\u0004\u0018\u0001018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010-\u001a\u0004\u00083\u00104R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0016\u0010;\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u00108\u00a8\u0006>"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;",
        "Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;",
        "Lcom/transsion/player/orplayer/f;",
        "Lcom/transsion/room/api/IFloatingApi$a;",
        "<init>",
        "()V",
        "",
        "id",
        "Lcom/transsion/baselib/db/audio/AudioBean;",
        "audioBean",
        "",
        "q1",
        "(Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;)V",
        "r1",
        "",
        "progress",
        "s1",
        "(J)V",
        "l1",
        "n1",
        "m1",
        "getPageName",
        "()Ljava/lang/String;",
        "G0",
        "initAudioListener",
        "F0",
        "onDestroy",
        "Lao/e;",
        "mediaSource",
        "onProgress",
        "(JLao/e;)V",
        "onVideoStart",
        "(Lao/e;)V",
        "onVideoPause",
        "onCompletion",
        "onRemove",
        "p1",
        "k",
        "Lcom/transsion/baselib/db/audio/AudioBean;",
        "mAudioBean",
        "l",
        "J",
        "realDuration",
        "Lcom/transsion/room/api/IAudioApi;",
        "m",
        "Lkotlin/Lazy;",
        "getMAudioApi",
        "()Lcom/transsion/room/api/IAudioApi;",
        "mAudioApi",
        "Lcom/transsion/room/api/IFloatingApi;",
        "n",
        "getMFloatApi",
        "()Lcom/transsion/room/api/IFloatingApi;",
        "mFloatApi",
        "",
        "o",
        "Z",
        "dealWith80",
        "p",
        "dealWithElse",
        "q",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final q:Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$a;


# instance fields
.field private k:Lcom/transsion/baselib/db/audio/AudioBean;

.field private l:J

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->q:Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/f1;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/f1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->m:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/g1;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/g1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->n:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic d1(Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k1(Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e1()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->mAudioApi_delegate$lambda$0()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f1(FLcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->j1(FLcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic g1()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->o1()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v0

    return-object v0
.end method

.method private final getMAudioApi()Lcom/transsion/room/api/IAudioApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private final getMFloatApi()Lcom/transsion/room/api/IFloatingApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method public static final synthetic h1(Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;)Lcom/transsion/room/api/IAudioApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i1(Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->l:J

    return-wide v0
.end method

.method private static final j1(FLcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    if-eqz p3, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p2

    if-ge v0, p2, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p0, p2, p0

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lez p0, :cond_2

    iget-boolean p0, p1, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->o:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    iput-boolean p3, p1, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->o:Z

    iput-boolean p2, p1, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->p:Z

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lso/p;

    if-eqz p0, :cond_4

    sget-object p2, Lak/x;->a:Lak/x;

    invoke-virtual {p2}, Lak/x;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lso/p;->u:Landroidx/appcompat/widget/Toolbar;

    sget p3, Lcom/tn/lib/widget/R$color;->bg_01:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p0, Lso/p;->o:Landroidx/appcompat/widget/AppCompatImageView;

    sget p3, Lcom/tn/lib/widget/R$mipmap;->icon_white_back:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p0, p0, Lso/p;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/tn/lib/widget/R$color;->cl38:I

    invoke-static {p1, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lso/p;->u:Landroidx/appcompat/widget/Toolbar;

    sget p3, Lcom/tn/lib/widget/R$color;->bg_01:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p0, Lso/p;->o:Landroidx/appcompat/widget/AppCompatImageView;

    sget p3, Lcom/tn/lib/widget/R$mipmap;->libui_ic_back_black:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p2, p0, Lso/p;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p3, Lcom/tn/lib/widget/R$color;->text_01:I

    invoke-static {p1, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lso/p;->u:Landroidx/appcompat/widget/Toolbar;

    sget p1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-boolean p0, p1, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->p:Z

    if-eqz p0, :cond_3

    return-void

    :cond_3
    iput-boolean p3, p1, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->p:Z

    iput-boolean p2, p1, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->o:Z

    invoke-direct {p1}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->r1()V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final k1(Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 8

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4, p2}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMFloatApi()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6, p2}, Lcom/transsion/room/api/IFloatingApi;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_1
    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/transsion/room/api/IAudioApi;->f()Z

    move-result p2

    if-ne p2, v2, :cond_3

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/transsion/room/api/IAudioApi;->pause()V

    :cond_2
    sget p2, Lcom/transsion/postdetail/R$drawable;->post_icon_pro_play:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/postdetail/helper/a;->t(Lcom/transsion/postdetail/helper/a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/transsion/room/api/IAudioApi;->c()Z

    move-result p2

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2, p2, v3, v1, v0}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/transsion/room/api/IAudioApi;->prepare()V

    :cond_5
    :goto_1
    sget p2, Lcom/transsion/postdetail/R$drawable;->post_icon_pro_pause:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/postdetail/helper/a;->v(Lcom/transsion/postdetail/helper/a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v2, p2, v3, v1, v0}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    :cond_7
    sget p2, Lcom/transsion/postdetail/R$drawable;->post_icon_pro_pause:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/postdetail/helper/a;->v(Lcom/transsion/postdetail/helper/a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lcom/transsion/room/api/IAudioApi;->f()Z

    move-result p2

    if-ne p2, v2, :cond_a

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lcom/transsion/room/api/IAudioApi;->pause()V

    :cond_9
    sget p2, Lcom/transsion/postdetail/R$drawable;->post_icon_pro_play:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/postdetail/helper/a;->t(Lcom/transsion/postdetail/helper/a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-interface {p2}, Lcom/transsion/room/api/IAudioApi;->c()Z

    move-result p2

    if-ne p2, v2, :cond_b

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p2, :cond_c

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v2, p2, v3, v1, v0}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_b
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-interface {p2}, Lcom/transsion/room/api/IAudioApi;->prepare()V

    :cond_c
    :goto_2
    sget p2, Lcom/transsion/postdetail/R$drawable;->post_icon_pro_pause:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/postdetail/helper/a;->v(Lcom/transsion/postdetail/helper/a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private final l1()V
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getAudio()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/bean/Audio;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getDuration()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iput-wide v3, v0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->l:J

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    move-object v5, v3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    const/4 v12, 0x0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    invoke-static {v3, v2, v4, v12}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl$default(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    :cond_2
    move-object v6, v12

    :goto_1
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getDuration()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getSize()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v8, v3

    goto :goto_2

    :cond_3
    move-object v8, v12

    :goto_2
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_3

    :cond_4
    move-object v10, v12

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_4

    :cond_5
    move-object v11, v12

    :goto_4
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getBitrate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRec_ops()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_5

    :cond_6
    move-object/from16 v16, v12

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_6

    :cond_7
    move-object/from16 v18, v12

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_7

    :cond_8
    move-object/from16 v19, v12

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_8

    :cond_9
    move-object/from16 v22, v12

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_9

    :cond_a
    move-object/from16 v20, v12

    :goto_9
    new-instance v3, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object v4, v3

    const v25, 0xd1700

    const/16 v26, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v12, v1

    invoke-direct/range {v4 .. v26}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMFloatApi()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v4, v3}, Lcom/transsion/room/api/IFloatingApi;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMFloatApi()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/transsion/room/api/IFloatingApi;->h()V

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMFloatApi()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1, v0}, Lcom/transsion/room/api/IFloatingApi;->d(Lcom/transsion/room/api/IFloatingApi$a;)V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    :cond_e
    sget-object v6, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/transsion/postdetail/helper/a;->b(Lcom/transsion/postdetail/helper/a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_f
    return-void
.end method

.method private final m1()V
    .locals 3

    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/p;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lso/p;->e:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$b;

    invoke-direct {v2, v0, p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$b;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method private static final mAudioApi_delegate$lambda$0()Lcom/transsion/room/api/IAudioApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IAudioApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    return-object v0
.end method

.method private final n1()V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl$default(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/p;->p:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/baseui/R$mipmap;->default_audio_ic_9_16:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/p;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lso/p;->m:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v3

    :goto_2
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_6
    move-object v5, v3

    :goto_3
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v3

    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    :cond_8
    move-object v2, v3

    :goto_5
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_6

    :cond_9
    move-object v4, v3

    :goto_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :cond_a
    move-object v0, v3

    :goto_7
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :cond_b
    move-object v3, v0

    move-object v0, v5

    goto :goto_8

    :cond_c
    move-object v4, v1

    move-object v0, v2

    move-object v3, v0

    move-object v2, v4

    :cond_d
    :goto_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v5

    check-cast v5, Lso/p;

    if-eqz v5, :cond_12

    iget-object v5, v5, Lso/p;->p:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_12

    sget-object v6, Lej/f;->a:Lej/f$a;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "getContext(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v7

    if-nez v2, :cond_e

    move-object v2, v1

    :cond_e
    invoke-virtual {v7, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    sget v7, Lcom/tn/lib/widget/R$color;->cl37:I

    invoke-virtual {v2, v7}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v2

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9

    :cond_f
    invoke-virtual {v6}, Lej/f$a;->c()I

    move-result v0

    :goto_9
    invoke-virtual {v2, v0}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v0

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_a

    :cond_10
    invoke-virtual {v6}, Lej/f$a;->c()I

    move-result v2

    :goto_a
    invoke-virtual {v0, v2}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    if-nez v4, :cond_11

    goto :goto_b

    :cond_11
    move-object v1, v4

    :goto_b
    invoke-virtual {v0, v1}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_12
    return-void
.end method

.method private static final o1()Lcom/transsion/room/api/IFloatingApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    return-object v0
.end method

.method private final q1(Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "audio"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final r1()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/p;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lso/p;->o:Landroidx/appcompat/widget/AppCompatImageView;

    sget v2, Lcom/tn/lib/widget/R$mipmap;->icon_white_back:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v1, v0, Lso/p;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/tn/lib/widget/R$color;->cl38:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v0, Lso/p;->u:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/tn/lib/widget/R$drawable;->libui_mask_cl45_0p_to_30p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private final s1(J)V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->l:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-float v2, p1

    long-to-float v3, v0

    div-float/2addr v2, v3

    const/16 v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lso/p;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lso/p;->e:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lso/p;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lso/p;->e:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    invoke-static {p1, p2}, Lcom/transsion/postdetail/util/n;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/transsion/postdetail/util/n;->d(J)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lso/p;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lso/p;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lso/p;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lso/p;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_3

    sget p2, Lcom/transsion/postdetail/R$drawable;->post_icon_pro_pause:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public F0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/p;->p:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getAudio()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->l1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->n1()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/p;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lso/p;->C:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public G0()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/p;->l:Landroidx/constraintlayout/widget/Group;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->r1()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/postdetail/R$dimen;->post_surface_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/p;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lso/p;->f:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/d1;

    invoke-direct {v2, v0, p0}, Lcom/transsion/postdetail/ui/fragment/d1;-><init>(FLcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$g;)V

    :cond_1
    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "postdetail_audio"

    return-object v0
.end method

.method public initAudioListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/p;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/e1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/postdetail/ui/fragment/e1;-><init>(Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;Landroidx/appcompat/widget/AppCompatImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/transsion/room/api/IAudioApi;->addPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->m1()V

    return-void
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->e(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lso/p;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lso/p;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_2

    sget v0, Lcom/transsion/postdetail/R$drawable;->post_icon_play:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/room/api/IAudioApi;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMFloatApi()Lcom/transsion/room/api/IFloatingApi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/transsion/room/api/IFloatingApi;->j(Lcom/transsion/room/api/IFloatingApi$a;)V

    :cond_1
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->i(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->k(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->o(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->q(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->v(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->w(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->y(Lcom/transsion/player/orplayer/f;JLao/e;)V

    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->s1(J)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lso/p;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lso/p;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_3

    sget p2, Lcom/transsion/postdetail/R$drawable;->post_icon_play:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onRemove()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/p;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/postdetail/R$drawable;->post_icon_pro_play:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->A(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->B(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->F(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lso/p;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lso/p;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_2

    sget v0, Lcom/transsion/postdetail/R$drawable;->post_icon_play:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->I(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lso/p;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lso/p;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_2

    sget v0, Lcom/transsion/postdetail/R$drawable;->post_icon_pro_pause:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public final p1()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->getMAudioApi()Lcom/transsion/room/api/IAudioApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/room/api/IAudioApi;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->k:Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-direct {p0, v0, v1}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->q1(Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_0
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method
