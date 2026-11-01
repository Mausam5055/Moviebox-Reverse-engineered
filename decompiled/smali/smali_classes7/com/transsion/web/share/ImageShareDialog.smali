.class public final Lcom/transsion/web/share/ImageShareDialog;
.super Lcom/transsion/baseui/dialog/BaseDialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/web/share/ImageShareDialog$a;,
        Lcom/transsion/web/share/ImageShareDialog$b;,
        Lcom/transsion/web/share/ImageShareDialog$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/dialog/BaseDialogFragment<",
        "Lux/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003&\'(B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ%\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/web/share/ImageShareDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialogFragment;",
        "Lux/b;",
        "<init>",
        "()V",
        "",
        "packageName",
        "backUpName",
        "",
        "q0",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "result",
        "pageName",
        "t0",
        "(ZLjava/lang/String;)V",
        "backUpPackageName",
        "m0",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "",
        "Lcom/transsion/web/share/ImageShareDialog$c;",
        "n0",
        "()Ljava/util/List;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "initView",
        "c0",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "Landroid/net/Uri;",
        "e",
        "Landroid/net/Uri;",
        "imageUri",
        "f",
        "a",
        "c",
        "b",
        "Web_psRelease"
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
.field public static final f:Lcom/transsion/web/share/ImageShareDialog$a;


# instance fields
.field private e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/web/share/ImageShareDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/web/share/ImageShareDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/web/share/ImageShareDialog;->f:Lcom/transsion/web/share/ImageShareDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/transsion/web/share/ImageShareDialog$1;->INSTANCE:Lcom/transsion/web/share/ImageShareDialog$1;

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static synthetic i0(Ljava/util/List;Lcom/transsion/web/share/ImageShareDialog;Lcom/transsion/web/share/ImageShareDialog$b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/web/share/ImageShareDialog;->p0(Ljava/util/List;Lcom/transsion/web/share/ImageShareDialog;Lcom/transsion/web/share/ImageShareDialog$b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/web/share/ImageShareDialog;->s0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/web/share/ImageShareDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/web/share/ImageShareDialog;->o0(Lcom/transsion/web/share/ImageShareDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/web/share/ImageShareDialog;->r0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/baseui/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/transsion/baseui/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final n0()Ljava/util/List;
    .locals 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/transsion/web/share/ImageShareDialog$c;

    sget v2, Lcom/transsion/baseui/R$mipmap;->player_ic_whatsapp:I

    sget v3, Lcom/transsion/web/R$string;->whatsapp:I

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v4, "whatsup"

    const-string v5, "com.whatsapp"

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/transsion/web/share/ImageShareDialog$c;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/web/share/ImageShareDialog$c;

    sget v11, Lcom/transsion/baseui/R$mipmap;->player_ic_telegram:I

    sget v12, Lcom/transsion/web/R$string;->telegram:I

    const-string v14, "org.telegram.messenger"

    const-string v15, "org.telegram.messenger.web"

    const-string v13, "Telegram"

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/transsion/web/share/ImageShareDialog$c;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static final o0(Lcom/transsion/web/share/ImageShareDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private static final p0(Ljava/util/List;Lcom/transsion/web/share/ImageShareDialog;Lcom/transsion/web/share/ImageShareDialog$b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/web/share/ImageShareDialog$c;

    invoke-virtual {p0}, Lcom/transsion/web/share/ImageShareDialog$c;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/web/share/ImageShareDialog$c;->b()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p3, p4}, Lcom/transsion/web/share/ImageShareDialog;->q0(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/web/share/ImageShareDialog$c;->a()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "module_name"

    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lhj/i;->a:Lhj/i;

    invoke-virtual {p0}, Lhj/i;->i()Ljava/lang/String;

    move-result-object p2

    const-string p4, "source"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "web_share_panel"

    invoke-virtual {p0, p2, p3}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private final q0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/transsion/web/share/ImageShareDialog;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "org.telegram.messenger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "requireActivity(...)"

    if-eqz v0, :cond_0

    sget-object p1, Lkr/p;->a:Lkr/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/web/share/ImageShareDialog;->e:Landroid/net/Uri;

    new-instance v2, Lcom/transsion/web/share/c;

    invoke-direct {v2, p0, p2}, Lcom/transsion/web/share/c;-><init>(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2}, Lkr/p;->b(Landroid/app/Activity;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.whatsapp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lkr/p;->a:Lkr/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/web/share/ImageShareDialog;->e:Landroid/net/Uri;

    new-instance v2, Lcom/transsion/web/share/d;

    invoke-direct {v2, p0, p2}, Lcom/transsion/web/share/d;-><init>(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2, v1, v2}, Lkr/p;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final r0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/transsion/web/share/ImageShareDialog;->t0(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final s0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/transsion/web/share/ImageShareDialog;->t0(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final t0(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget p2, Lcom/transsion/web/R$string;->share_failed_tips:I

    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget p2, Lcom/transsion/web/R$string;->web_app_not_exist:I

    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public c0()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/web/share/ImageShareDialog;->e:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lux/b;

    iget-object v0, v0, Lux/b;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v1, "ivShare"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/web/share/ImageShareDialog;->e:Landroid/net/Uri;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v0, v1, v2}, Lyp/a;->a(Landroid/widget/ImageView;Landroid/net/Uri;F)V

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lux/b;

    iget-object v0, v0, Lux/b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/transsion/web/share/a;

    invoke-direct {v1, p0}, Lcom/transsion/web/share/a;-><init>(Lcom/transsion/web/share/ImageShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lux/b;

    iget-object v0, v0, Lux/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lig/d;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    invoke-direct {v1, v2}, Lig/d;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-direct {p0}, Lcom/transsion/web/share/ImageShareDialog;->n0()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/transsion/web/share/ImageShareDialog$b;

    invoke-direct {v2}, Lcom/transsion/web/share/ImageShareDialog$b;-><init>()V

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    new-instance v3, Lcom/transsion/web/share/b;

    invoke-direct {v3, v1, p0, v2}, Lcom/transsion/web/share/b;-><init>(Ljava/util/List;Lcom/transsion/web/share/ImageShareDialog;Lcom/transsion/web/share/ImageShareDialog$b;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "share_panel"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x438f8000    # 287.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->Z()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
