.class public final Lcom/transsion/member/dialog/ClaimMemberDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\r\u0010\u0012\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0003R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/transsion/member/dialog/ClaimMemberDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "t0",
        "(Landroid/view/View;)V",
        "x0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroy",
        "onStart",
        "r0",
        "Lcom/transsion/memberapi/MemberTaskItem;",
        "c",
        "Lcom/transsion/memberapi/MemberTaskItem;",
        "s0",
        "()Lcom/transsion/memberapi/MemberTaskItem;",
        "y0",
        "(Lcom/transsion/memberapi/MemberTaskItem;)V",
        "info",
        "",
        "d",
        "I",
        "getMBottomMargin",
        "()I",
        "z0",
        "(I)V",
        "mBottomMargin",
        "",
        "e",
        "J",
        "showTime",
        "Lkotlinx/coroutines/t1;",
        "f",
        "Lkotlinx/coroutines/t1;",
        "dismissJob",
        "g",
        "infoJob",
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


# instance fields
.field private c:Lcom/transsion/memberapi/MemberTaskItem;

.field private d:I

.field private final e:J

.field private f:Lkotlinx/coroutines/t1;

.field private g:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget v0, Lcom/transsion/member/R$layout;->dialog_member_claim_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->d:I

    const-wide/16 v0, 0xdac

    iput-wide v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->e:J

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/dialog/ClaimMemberDialog;->v0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/dialog/ClaimMemberDialog;->u0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/member/dialog/ClaimMemberDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/dialog/ClaimMemberDialog;->w0(Lcom/transsion/member/dialog/ClaimMemberDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/member/dialog/ClaimMemberDialog;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->e:J

    return-wide v0
.end method

.method private final t0(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Lwm/h;->a(Landroid/view/View;)Lwm/h;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lwm/h;->d:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/transsion/member/dialog/b;

    invoke-direct {v1, p0}, Lcom/transsion/member/dialog/b;-><init>(Lcom/transsion/member/dialog/ClaimMemberDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lwm/h;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/member/dialog/c;

    invoke-direct {v1, p0}, Lcom/transsion/member/dialog/c;-><init>(Lcom/transsion/member/dialog/ClaimMemberDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->c:Lcom/transsion/memberapi/MemberTaskItem;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lwm/h;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lwm/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lwm/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getButtonName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    sget v2, Lcom/transsion/member/R$string;->member_claim_now:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/member/R$mipmap;->ic_premium_mask:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/transsion/member/R$mipmap;->ic_premium_mask:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object p1, p1, Lwm/h;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    return-void
.end method

.method private static final u0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/member/dialog/ClaimMemberDialog;->r0()V

    return-void
.end method

.method private static final v0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-class v0, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/member/dialog/d;

    invoke-direct {v0, p0}, Lcom/transsion/member/dialog/d;-><init>(Lcom/transsion/member/dialog/ClaimMemberDialog;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0, v1}, Lcom/transsion/memberapi/IMemberApi$a;->b(Lcom/transsion/memberapi/IMemberApi;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final w0(Lcom/transsion/member/dialog/ClaimMemberDialog;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/member/dialog/ClaimMemberDialog;->r0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final x0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "getAttributes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/tn/lib/widget/R$style;->center_DialogStyle:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->f:Lkotlinx/coroutines/t1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->f:Lkotlinx/coroutines/t1;

    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->g:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iput-object v2, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->g:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onStart()V
    .locals 13

    :try_start_0
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v3, Lcom/transsion/member/dialog/ClaimMemberDialog$onStart$1;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/transsion/member/dialog/ClaimMemberDialog$onStart$1;-><init>(Lcom/transsion/member/dialog/ClaimMemberDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->f:Lkotlinx/coroutines/t1;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/memberapi/IMemberApi;->d()Lkotlinx/coroutines/flow/i1;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v6

    :goto_1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v7

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v8

    new-instance v10, Lcom/transsion/member/dialog/ClaimMemberDialog$onStart$2;

    invoke-direct {v10, v0, p0, v6}, Lcom/transsion/member/dialog/ClaimMemberDialog$onStart$2;-><init>(Lkotlinx/coroutines/flow/i1;Lcom/transsion/member/dialog/ClaimMemberDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->g:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/member/dialog/ClaimMemberDialog;->x0()V

    invoke-direct {p0, p1}, Lcom/transsion/member/dialog/ClaimMemberDialog;->t0(Landroid/view/View;)V

    return-void
.end method

.method public final r0()V
    .locals 4

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClaimMemberDialog lifecycle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->f:Lkotlinx/coroutines/t1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->g:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final s0()Lcom/transsion/memberapi/MemberTaskItem;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->c:Lcom/transsion/memberapi/MemberTaskItem;

    return-object v0
.end method

.method public final y0(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->c:Lcom/transsion/memberapi/MemberTaskItem;

    return-void
.end method

.method public final z0(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->d:I

    return-void
.end method
