.class public final synthetic Lcom/transsion/search/speech/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

.field public final synthetic b:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/speech/i;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    iput-object p2, p0, Lcom/transsion/search/speech/i;->b:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/speech/i;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    iget-object v1, p0, Lcom/transsion/search/speech/i;->b:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    invoke-static {v0, v1}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->p0(Lcom/transsion/search/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V

    return-void
.end method
