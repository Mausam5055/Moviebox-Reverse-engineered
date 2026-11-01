.class public final Lcom/transsion/search/speech/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/search/speech/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/search/speech/g;

    invoke-direct {v0}, Lcom/transsion/search/speech/g;-><init>()V

    sput-object v0, Lcom/transsion/search/speech/g;->a:Lcom/transsion/search/speech/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
