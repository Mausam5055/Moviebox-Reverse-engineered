.class public final Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;

# interfaces
.implements Lcom/transsion/usercenter/setting/labelsfeedback/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lso/e;",
        ">;",
        "Lcom/transsion/usercenter/setting/labelsfeedback/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 >2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u0018\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0019\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0017\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0019J\u001f\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J)\u0010&\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0014\u00a2\u0006\u0004\u0008&\u0010\'R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010)\u001a\u0004\u0008*\u0010+R\u001b\u0010.\u001a\u00020\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010)\u001a\u0004\u0008-\u0010\rR\u0018\u00101\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u00100R\u001b\u00105\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010)\u001a\u0004\u00083\u00104R\u001b\u00108\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010)\u001a\u0004\u00086\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010)\u001a\u0004\u0008;\u0010<\u00a8\u0006?"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lso/e;",
        "Lcom/transsion/usercenter/setting/labelsfeedback/i;",
        "<init>",
        "()V",
        "",
        "D0",
        "",
        "imagePath",
        "H0",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "z0",
        "()Lso/e;",
        "",
        "isStatusDark",
        "()Z",
        "isTranslucent",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/os/Bundle;)V",
        "Lcom/transsion/usercenter/setting/labelsfeedback/h;",
        "adaptor",
        "e",
        "(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V",
        "a",
        "b",
        "k",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "imageVIew",
        "c",
        "(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroidx/appcompat/widget/AppCompatImageView;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lxo/b;",
        "Lkotlin/Lazy;",
        "y0",
        "()Lxo/b;",
        "service",
        "u0",
        "d",
        "Lcom/transsion/postdetail/bean/ReportConfig;",
        "Lcom/transsion/postdetail/bean/ReportConfig;",
        "reportConfig",
        "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;",
        "v0",
        "()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;",
        "fbModel",
        "w0",
        "()Lcom/transsion/usercenter/setting/labelsfeedback/h;",
        "footerAdapter",
        "Lcom/transsion/postdetail/ui/adapter/h;",
        "f",
        "x0",
        "()Lcom/transsion/postdetail/ui/adapter/h;",
        "reasonAdapter",
        "g",
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
.field public static final g:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private c:Lcom/transsion/postdetail/bean/ReportConfig;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->g:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/ui/activity/h;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/activity/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/ui/activity/i;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/activity/i;-><init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/ui/activity/j;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/activity/j;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/ui/activity/k;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/activity/k;-><init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/ui/activity/l;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/activity/l;-><init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->f:Lkotlin/Lazy;

    return-void
.end method

.method private static final A0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lfp/a;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lfp/a;->e()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lfp/a;->h()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->w0()Lcom/transsion/usercenter/setting/labelsfeedback/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->k(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final B0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->D0()V

    return-void
.end method

.method private static final C0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final D0()V
    .locals 10

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->x0()Lcom/transsion/postdetail/ui/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/adapter/h;->h()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->c:Lcom/transsion/postdetail/bean/ReportConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/ReportConfig;->getReasons()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetail/bean/ReportReason;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->u0()Lso/e;

    move-result-object v1

    iget-object v1, v1, Lso/e;->b:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    new-instance v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;

    invoke-direct {v7, p0, v0, v2}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;-><init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lcom/transsion/postdetail/bean/ReportReason;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method private static final E0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/postdetail/ui/adapter/h;
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/adapter/h;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->c:Lcom/transsion/postdetail/bean/ReportConfig;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/ReportConfig;->getReasons()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/adapter/h;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/transsion/postdetail/ui/activity/m;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/activity/m;-><init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/adapter/h;->m(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static final F0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lcom/transsion/postdetail/bean/ReportReason;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->u0()Lso/e;

    move-result-object p0

    iget-object p0, p0, Lso/e;->b:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final G0()Lxo/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lxo/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method

.method private final H0(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    sget-object v1, Lcw/c;->a:Lcw/c;

    sget-object v2, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    new-instance v3, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$b;

    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$b;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v2, v4, v3}, Lcw/c;->f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLcw/a;)V

    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method public static synthetic e0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lfp/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->A0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lfp/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->B0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/h;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->t0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/postdetail/ui/adapter/h;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->E0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/postdetail/ui/adapter/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->s0()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lcom/transsion/postdetail/bean/ReportReason;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->F0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lcom/transsion/postdetail/bean/ReportReason;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lso/e;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->r0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lso/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0()Lxo/b;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->G0()Lxo/b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->C0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic n0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lso/e;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->u0()Lso/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->v0()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lxo/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->y0()Lxo/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->H0(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final r0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lso/e;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lso/e;->c(Landroid/view/LayoutInflater;)Lso/e;

    move-result-object p0

    return-object p0
.end method

.method private static final s0()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    .locals 15

    new-instance v14, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    new-instance v4, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {v4, v0, v0, v1, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;-><init>(Lcom/transsnet/loginapi/bean/Country;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v12, 0x7f0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const-string v2, "report"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method private static final t0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/h;
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/h;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->v0()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/h;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Lcom/transsion/usercenter/setting/labelsfeedback/i;)V

    return-object v0
.end method

.method private final u0()Lso/e;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lso/e;

    return-object v0
.end method

.method private final v0()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    return-object v0
.end method

.method private final w0()Lcom/transsion/usercenter/setting/labelsfeedback/h;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/setting/labelsfeedback/h;

    return-object v0
.end method

.method private final x0()Lcom/transsion/postdetail/ui/adapter/h;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetail/ui/adapter/h;

    return-object v0
.end method

.method private final y0()Lxo/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V
    .locals 3

    const-string v0, "adaptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/publish/ui/SelectImageActivity;->q:Lcom/transsion/publish/ui/SelectImageActivity$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/transsion/publish/ui/SelectImageActivity$a;->a(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public b(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V
    .locals 1

    const-string v0, "adaptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 2

    const-string v0, "adaptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageVIew"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->v0()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getImagePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public e(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V
    .locals 1

    const-string v0, "adaptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->z0()Lso/e;

    move-result-object v0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 9

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_report_config_json"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$initView$1$type$1;

    invoke-direct {v3}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$initView$1$type$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/postdetail/bean/ReportConfig;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->c:Lcom/transsion/postdetail/bean/ReportConfig;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->u0()Lso/e;

    move-result-object v1

    iget-object v1, v1, Lso/e;->d:Lcom/tn/lib/view/TitleLayout;

    sget v3, Lcom/transsion/postdetail/R$string;->post_feedback_report:I

    invoke-virtual {v1, v3}, Lcom/tn/lib/view/TitleLayout;->setTitleText(I)Lcom/tn/lib/view/TitleLayout;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->u0()Lso/e;

    move-result-object v1

    iget-object v1, v1, Lso/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v3, Landroidx/recyclerview/widget/ConcatAdapter;

    new-instance v4, Lcom/transsion/postdetail/ui/adapter/d;

    iget-object v5, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->c:Lcom/transsion/postdetail/bean/ReportConfig;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/transsion/postdetail/bean/ReportConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-direct {v4, v2}, Lcom/transsion/postdetail/ui/adapter/d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->x0()Lcom/transsion/postdetail/ui/adapter/h;

    move-result-object v2

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->w0()Lcom/transsion/usercenter/setting/labelsfeedback/h;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    aput-object v4, v6, p1

    aput-object v2, v6, v0

    const/4 v0, 0x2

    aput-object v5, v6, v0

    invoke-direct {v3, v6}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->u0()Lso/e;

    move-result-object v0

    iget-object v0, v0, Lso/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/postdetail/ui/activity/e;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/activity/e;-><init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v8, Lcom/transsion/postdetail/ui/activity/f;

    invoke-direct {v8, p0}, Lcom/transsion/postdetail/ui/activity/f;-><init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lfp/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "getName(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->u0()Lso/e;

    move-result-object v0

    iget-object v0, v0, Lso/e;->b:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->u0()Lso/e;

    move-result-object p1

    iget-object p1, p1, Lso/e;->b:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/transsion/postdetail/ui/activity/g;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/activity/g;-><init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isStatusDark()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V
    .locals 6

    const-string v0, "adaptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "/loginapi/select_country"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/therouter/router/Navigator;->w(Lcom/therouter/router/Navigator;Landroid/content/Context;ILbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "countryCode"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of p2, p1, Lcom/transsnet/loginapi/bean/Country;

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->w0()Lcom/transsion/usercenter/setting/labelsfeedback/h;

    move-result-object p2

    check-cast p1, Lcom/transsnet/loginapi/bean/Country;

    invoke-virtual {p2, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->j(Lcom/transsnet/loginapi/bean/Country;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z0()Lso/e;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->u0()Lso/e;

    move-result-object v0

    return-object v0
.end method
