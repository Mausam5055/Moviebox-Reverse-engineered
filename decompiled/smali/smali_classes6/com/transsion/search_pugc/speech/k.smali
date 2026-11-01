.class public final synthetic Lcom/transsion/search_pugc/speech/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;

.field public final synthetic b:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/speech/k;->a:Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;

    iput-object p2, p0, Lcom/transsion/search_pugc/speech/k;->b:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/speech/k;->a:Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;

    iget-object v1, p0, Lcom/transsion/search_pugc/speech/k;->b:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    invoke-static {v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->q0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V

    return-void
.end method
