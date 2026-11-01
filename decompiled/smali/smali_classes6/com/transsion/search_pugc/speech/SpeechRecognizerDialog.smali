.class public final Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J!\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0003J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J8\u0010*\u001a\u00020\u00002)\u0008\u0002\u0010)\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010&\u00a2\u0006\u0004\u0008*\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R7\u00109\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010@\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u001a\u0010J\u001a\u00020E8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\u00a8\u0006K"
    }
    d2 = {
        "Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "timeout",
        "",
        "M0",
        "(J)V",
        "H0",
        "initView",
        "J0",
        "",
        "result",
        "",
        "isComplete",
        "P0",
        "(Ljava/lang/String;Z)V",
        "resultStr",
        "F0",
        "(Ljava/lang/String;)V",
        "D0",
        "",
        "C0",
        "()I",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onPause",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "callback",
        "I0",
        "(Lkotlin/jvm/functions/Function1;)Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;",
        "Lcom/transsion/search_pugc/speech/c;",
        "c",
        "Lcom/transsion/search_pugc/speech/c;",
        "initializeStrategy",
        "d",
        "Ljava/lang/String;",
        "mPartialResults",
        "Lrq/b;",
        "e",
        "Lrq/b;",
        "bind",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "mCallback",
        "Landroid/speech/SpeechRecognizer;",
        "g",
        "Landroid/speech/SpeechRecognizer;",
        "mSpeechRecognizer",
        "h",
        "Z",
        "isWorking",
        "Landroid/os/Handler;",
        "i",
        "Landroid/os/Handler;",
        "mHandler",
        "Lhj/b;",
        "j",
        "Lhj/b;",
        "getLogViewConfig",
        "()Lhj/b;",
        "logViewConfig",
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
.field private c:Lcom/transsion/search_pugc/speech/c;

.field private d:Ljava/lang/String;

.field private e:Lrq/b;

.field private f:Lkotlin/jvm/functions/Function1;

.field private g:Landroid/speech/SpeechRecognizer;

.field private h:Z

.field private final i:Landroid/os/Handler;

.field private final j:Lhj/b;


# direct methods
.method public constructor <init>()V
    .locals 5

    sget v0, Lcom/transsion/search/R$layout;->dialog_speech_recognizer_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->d:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->i:Landroid/os/Handler;

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "sr_dialog"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->j:Lhj/b;

    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic B0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->P0(Ljava/lang/String;Z)V

    return-void
.end method

.method private final C0()I
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v0, 0x3

    sub-int/2addr v0, v1

    return v0
.end method

.method private final D0()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->destroy()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->c:Lcom/transsion/search_pugc/speech/c;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/search_pugc/speech/c;->e(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog$a;

    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog$a;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lrq/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/transsion/search_pugc/speech/k;

    invoke-direct {v1, p0, v0}, Lcom/transsion/search_pugc/speech/k;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private static final E0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->c:Lcom/transsion/search_pugc/speech/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/search_pugc/speech/c;->k()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private final F0(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/transsion/search_pugc/speech/q;->a:Lcom/transsion/search_pugc/speech/q;

    invoke-virtual {v0}, Lcom/transsion/search_pugc/speech/q;->e()V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog$onResult$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog$onResult$1;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final G0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    sget-object v0, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onViewCreated() --> setCallback{} --> \u91cd\u65b0\u83b7\u53d6\u8bed\u97f3\u8bc6\u522b\u5bf9\u8c61 --> initSpeechRecognizer()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->D0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final H0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private final J0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/search_pugc/speech/i;

    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/speech/i;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrq/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/search_pugc/speech/j;

    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/speech/j;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final K0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/transsion/search_pugc/speech/q;->a:Lcom/transsion/search_pugc/speech/q;

    invoke-virtual {p1}, Lcom/transsion/search_pugc/speech/q;->a()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final L0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/speech/SpeechRecognizer;->stopListening()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->H0()V

    goto :goto_3

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->N0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;JILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->initView()V

    :goto_3
    iget-boolean p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    return-void
.end method

.method private final M0(J)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->H0()V

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->i:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/search_pugc/speech/l;

    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/speech/l;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic N0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1388

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->M0(J)V

    return-void
.end method

.method private static final O0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    :cond_0
    sget-object v0, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> setSpeechTimeout() --> \u8bed\u97f3\u8bc6\u522b\u8d85\u65f6"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final P0(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lrq/b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic Q0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->P0(Ljava/lang/String;Z)V

    return-void
.end method

.method private final initView()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/search/R$string;->search_sr_speak_now:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->P0(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;->ACTIVE:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;

    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->setMicState(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrq/b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/search/R$string;->search_sr_tap_try_tip_avatar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lrq/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/wrapperad/R$color;->white_40:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->setActiveCircleColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lrq/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    if-eqz v0, :cond_3

    const-string v1, "#2166E5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#1DD171"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->setLoadingGradientColors([I)V

    :cond_3
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->K0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->L0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->G0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->E0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->O0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    return-void
.end method

.method public static final synthetic s0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lrq/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lcom/transsion/search_pugc/speech/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->c:Lcom/transsion/search_pugc/speech/c;

    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic w0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    return p0
.end method

.method public static final synthetic x0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->F0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic y0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->H0()V

    return-void
.end method

.method public static final synthetic z0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final I0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getLogViewConfig()Lhj/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->j:Lhj/b;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    sget-object p1, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onCreate() --> \u5c55\u793a\u5f39\u7a97\u7ec4\u4ef6"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_1
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onDismiss() --> \u8bed\u97f3\u8bc6\u522b\u5f39\u7a97\u5173\u95ed \u91ca\u653e\u8d44\u6e90"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onPause()V

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/transsion/baseui/R$style;->BaseBottomDialogAnimation:I

    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->C0()I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    invoke-static {p1}, Lrq/b;->a(Landroid/view/View;)Lrq/b;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lrq/b;

    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->initView()V

    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->J0()V

    new-instance p1, Lcom/transsion/search_pugc/speech/c;

    invoke-direct {p1}, Lcom/transsion/search_pugc/speech/c;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->c:Lcom/transsion/search_pugc/speech/c;

    new-instance p2, Lcom/transsion/search_pugc/speech/h;

    invoke-direct {p2, p0}, Lcom/transsion/search_pugc/speech/h;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/speech/c;->j(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->D0()V

    sget-object p1, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/transsion/search_pugc/speech/g;->a:Lcom/transsion/search_pugc/speech/g;

    invoke-virtual {v0}, Lcom/transsion/search_pugc/speech/g;->a()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onViewCreated() --> \u8bed\u97f3\u8bc6\u522b\u662f\u5426\u53ef\u7528 = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/speech/f;->b(Ljava/lang/String;)V

    return-void
.end method
