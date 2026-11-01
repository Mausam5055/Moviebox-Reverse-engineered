.class public final Lcom/transsion/search_pugc/speech/SpeechRecognizerView;
.super Landroidx/appcompat/widget/AppCompatImageView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J8\u0010\u0016\u001a\u00020\u000e2)\u0008\u0002\u0010\u0015\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R7\u0010\u001a\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/search_pugc/speech/SpeechRecognizerView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "Landroid/view/View;",
        "v",
        "",
        "onClick",
        "(Landroid/view/View;)V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "callback",
        "setCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "mCallback",
        "Search_psRelease"
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
.field private d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/search/R$drawable;->sr_icon_microphone:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;Landroidx/appcompat/app/AppCompatActivity;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;->f(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;Landroidx/appcompat/app/AppCompatActivity;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;->d(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;Lcf/f;Ljava/util/List;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;->e(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;Lcf/f;Ljava/util/List;ZZ)V

    return-void
.end method

.method private static final d(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;)Lkotlin/Unit;
    .locals 3

    sget-object v0, Lcom/transsion/search_pugc/speech/q;->a:Lcom/transsion/search_pugc/speech/q;

    invoke-virtual {v0}, Lcom/transsion/search_pugc/speech/q;->b()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lye/c;->a:Lye/c;

    invoke-virtual {v1, v0}, Lye/c;->e(Landroidx/fragment/app/FragmentActivity;)Lye/a;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lye/a;->b([Ljava/lang/String;)Lcf/h;

    move-result-object v1

    invoke-interface {v1}, Lcf/h;->b()Lcf/h;

    move-result-object v1

    new-instance v2, Lcom/transsion/search_pugc/speech/n;

    invoke-direct {v2, p0}, Lcom/transsion/search_pugc/speech/n;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;)V

    invoke-interface {v1, v2}, Lcf/h;->c(Lze/b;)Lcf/h;

    move-result-object v1

    new-instance v2, Lcom/transsion/search_pugc/speech/o;

    invoke-direct {v2, p0, v0}, Lcom/transsion/search_pugc/speech/o;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-interface {v1, v2}, Lcf/h;->a(Lze/c;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;->getClassTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> context as? AppCompatActivity == null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final e(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;Lcf/f;Ljava/util/List;ZZ)V
    .locals 9

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    new-instance p3, Lbf/a;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/search/R$string;->search_sr_permission_tip:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lcom/transsion/search/R$string;->search_sr_permission_setting:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p0, Lcom/transsion/search/R$mipmap;->sr_icon_active:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget p0, Lcom/tn/lib/widget/R$color;->white_20:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v8}, Lbf/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2, p3}, Lcf/f;->c(Ljava/util/List;Lbf/a;)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcf/f;->b(Ljava/util/List;)V

    return-void
.end method

.method private static final f(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;Landroidx/appcompat/app/AppCompatActivity;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "grantedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "deniedList"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;->getClassTag()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> allGranted = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance p2, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;

    invoke-direct {p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;-><init>()V

    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;->d:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->I0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "getSupportFragmentManager(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "SpeechRecognizerDialog"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic setCallback$default(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;->setCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/transsion/search_pugc/speech/m;

    invoke-direct {p1, p0}, Lcom/transsion/search_pugc/speech/m;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerView;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p1}, Lcom/transsion/baseui/util/d;->a(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerView;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method
