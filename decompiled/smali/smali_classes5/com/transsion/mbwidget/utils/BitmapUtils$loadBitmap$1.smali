.class final Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/utils/BitmapUtils;->d(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.mbwidget.utils.BitmapUtils"
    f = "BitmapUtils.kt"
    l = {
        0x2d
    }
    m = "loadBitmap"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/mbwidget/utils/BitmapUtils;


# direct methods
.method constructor <init>(Lcom/transsion/mbwidget/utils/BitmapUtils;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mbwidget/utils/BitmapUtils;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->this$0:Lcom/transsion/mbwidget/utils/BitmapUtils;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    iget-object p1, p0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->this$0:Lcom/transsion/mbwidget/utils/BitmapUtils;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1, p0}, Lcom/transsion/mbwidget/utils/BitmapUtils;->d(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
