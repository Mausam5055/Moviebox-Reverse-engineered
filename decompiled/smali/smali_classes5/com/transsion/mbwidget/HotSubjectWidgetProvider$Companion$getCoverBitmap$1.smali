.class final Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->d(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.mbwidget.HotSubjectWidgetProvider$Companion"
    f = "HotSubjectWidgetProvider.kt"
    l = {
        0xc0
    }
    m = "getCoverBitmap"
.end annotation


# instance fields
.field I$0:I

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;


# direct methods
.method constructor <init>(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->this$0:Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->label:I

    iget-object p1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->this$0:Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->b(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
