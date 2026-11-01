.class public final Lcom/transsion/member/dialog/MemberMiddleStateDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/dialog/MemberMiddleStateDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\"\u0010,\u001a\u0010\u0012\u000c\u0012\n )*\u0004\u0018\u00010(0(0\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/transsion/member/dialog/MemberMiddleStateDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "",
        "o0",
        "()Z",
        "Lcom/transsion/memberapi/MemberSource;",
        "memberSource",
        "q0",
        "(Lcom/transsion/memberapi/MemberSource;)V",
        "",
        "sceneId",
        "r0",
        "(Ljava/lang/String;)V",
        "Lzm/b;",
        "callback",
        "p0",
        "(Lzm/b;)V",
        "c",
        "Z",
        "isPayMemberSuccess",
        "d",
        "Lcom/transsion/memberapi/MemberSource;",
        "source",
        "e",
        "Ljava/lang/String;",
        "f",
        "Lzm/b;",
        "mCallback",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "g",
        "Landroidx/activity/result/b;",
        "startActivity",
        "h",
        "a",
        "Member_psRelease"
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
.field public static final h:Lcom/transsion/member/dialog/MemberMiddleStateDialog$a;

.field public static final i:I


# instance fields
.field private c:Z

.field private d:Lcom/transsion/memberapi/MemberSource;

.field private e:Ljava/lang/String;

.field private f:Lzm/b;

.field private final g:Landroidx/activity/result/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/member/dialog/MemberMiddleStateDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/dialog/MemberMiddleStateDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->h:Lcom/transsion/member/dialog/MemberMiddleStateDialog$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->e:Ljava/lang/String;

    new-instance v0, Lf/j;

    invoke-direct {v0}, Lf/j;-><init>()V

    new-instance v1, Lcom/transsion/member/dialog/m;

    invoke-direct {v1, p0}, Lcom/transsion/member/dialog/m;-><init>(Lcom/transsion/member/dialog/MemberMiddleStateDialog;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->g:Landroidx/activity/result/b;

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/member/dialog/MemberMiddleStateDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->s0(Lcom/transsion/member/dialog/MemberMiddleStateDialog;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private static final s0(Lcom/transsion/member/dialog/MemberMiddleStateDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->c:Z

    sget-object p1, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> startActivity --> registerForActivityResult() --> isPayMemberSuccess = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/tn/lib/widget/R$style;->center_DialogStyle:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->o0()Z

    move-result p1

    const-string v0, "scene_id"

    const-string v1, "source"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string p1, "/rewards/center"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->d:Lcom/transsion/memberapi/MemberSource;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberSource;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p1, v1, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v2, v2, v0, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/transsion/member/MemberActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->d:Lcom/transsion/memberapi/MemberSource;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberSource;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "key_scrolltotask"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_3
    const-string v0, "extra_member_scroll_bottom"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->g:Landroidx/activity/result/b;

    invoke-virtual {v0, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    iget-boolean p1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->f:Lzm/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lzm/b;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->f:Lzm/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lzm/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p0(Lzm/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->f:Lzm/b;

    return-void
.end method

.method public final q0(Lcom/transsion/memberapi/MemberSource;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->d:Lcom/transsion/memberapi/MemberSource;

    return-void
.end method

.method public final r0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->e:Ljava/lang/String;

    return-void
.end method
