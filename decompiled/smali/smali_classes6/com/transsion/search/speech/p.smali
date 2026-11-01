.class public final synthetic Lcom/transsion/search/speech/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/speech/p;->a:Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/speech/p;->a:Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView;

    invoke-static {v0, p1}, Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView;->a(Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
