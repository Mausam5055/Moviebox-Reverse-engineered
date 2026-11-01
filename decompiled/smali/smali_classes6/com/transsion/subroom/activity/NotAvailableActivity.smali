.class public final Lcom/transsion/subroom/activity/NotAvailableActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subroom/activity/NotAvailableActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lau/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 #2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u001a\u0010\"\u001a\u00020\u001d8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/subroom/activity/NotAvailableActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lau/b;",
        "<init>",
        "()V",
        "",
        "j0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "g0",
        "()Lau/b;",
        "initView",
        "onBackPressed",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "",
        "a",
        "Ljava/lang/String;",
        "htmlMessage",
        "b",
        "reason",
        "",
        "c",
        "I",
        "getCLICK_COUNT",
        "()I",
        "CLICK_COUNT",
        "d",
        "app_psRelease"
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
.field public static final d:Lcom/transsion/subroom/activity/NotAvailableActivity$a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subroom/activity/NotAvailableActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subroom/activity/NotAvailableActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subroom/activity/NotAvailableActivity;->d:Lcom/transsion/subroom/activity/NotAvailableActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/subroom/activity/NotAvailableActivity;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/subroom/activity/NotAvailableActivity;->b:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/subroom/activity/NotAvailableActivity;->c:I

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/subroom/activity/NotAvailableActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/subroom/activity/NotAvailableActivity;->i0(Lcom/transsion/subroom/activity/NotAvailableActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/subroom/activity/NotAvailableActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/subroom/activity/NotAvailableActivity;->h0(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/subroom/activity/NotAvailableActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final h0(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/subroom/activity/NotAvailableActivity;Landroid/view/View;)V
    .locals 0

    iget p2, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget p0, p1, Lcom/transsion/subroom/activity/NotAvailableActivity;->c:I

    if-ne p2, p0, :cond_0

    new-instance p0, Lcom/transsion/usercenter/laboratory/LabPwdDialog;

    invoke-direct {p0}, Lcom/transsion/usercenter/laboratory/LabPwdDialog;-><init>()V

    new-instance p2, Lcom/transsion/subroom/activity/c0;

    invoke-direct {p2, p1}, Lcom/transsion/subroom/activity/c0;-><init>(Lcom/transsion/subroom/activity/NotAvailableActivity;)V

    invoke-virtual {p0, p2}, Lcom/transsion/usercenter/laboratory/LabPwdDialog;->r0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/laboratory/LabPwdDialog;

    move-result-object p0

    const-string p2, "labPwd"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final i0(Lcom/transsion/subroom/activity/NotAvailableActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/activity/NotAvailableActivity;->j0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final j0()V
    .locals 8

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sp_code"

    const-string v2, "90101"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    const-string v1, "Please restart the App"

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/transsion/subroom/activity/NotAvailableActivity$welcomeMovieBox$1;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/transsion/subroom/activity/NotAvailableActivity$welcomeMovieBox$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public g0()Lau/b;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lau/b;->c(Landroid/view/LayoutInflater;)Lau/b;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/subroom/activity/NotAvailableActivity;->g0()Lau/b;

    move-result-object v0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->initView(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/NotAvailableActivity;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/subroom/activity/NotAvailableActivity;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/core/text/b;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    const-string v1, "fromHtml(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v0, p1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "getSpans(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    check-cast v3, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    if-eq v5, v6, :cond_0

    new-instance v6, Lcom/transsion/usercenter/message/detail/CustomURLSpan;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    const-string v7, "getURL(...)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v3}, Lcom/transsion/usercenter/message/detail/CustomURLSpan;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x21

    invoke-virtual {v1, v6, v4, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lau/b;

    iget-object p1, p1, Lau/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lau/b;

    iget-object p1, p1, Lau/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Loh/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loh/f;-><init>(Loh/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/subroom/R$string;->not_available:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/subroom/R$string;->in_current_region:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lcom/tn/lib/widget/R$color;->error_red:I

    invoke-static {p0, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x22

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lau/b;

    iget-object p1, p1, Lau/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "reason"

    iget-object v1, p0, Lcom/transsion/subroom/activity/NotAvailableActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "message"

    iget-object v1, p0, Lcom/transsion/subroom/activity/NotAvailableActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_4
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lau/b;

    iget-object v0, v0, Lau/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/transsion/subroom/activity/b0;

    invoke-direct {v1, p1, p0}, Lcom/transsion/subroom/activity/b0;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/subroom/activity/NotAvailableActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isChangeStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    sget-object v0, Lak/x;->a:Lak/x;

    invoke-virtual {v0}, Lak/x;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "not_available"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
