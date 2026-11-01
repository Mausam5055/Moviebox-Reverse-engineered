.class public final synthetic Lcom/transsion/search_pugc/speech/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/speech/p;->a:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/p;->a:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    invoke-static {v0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->a(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
