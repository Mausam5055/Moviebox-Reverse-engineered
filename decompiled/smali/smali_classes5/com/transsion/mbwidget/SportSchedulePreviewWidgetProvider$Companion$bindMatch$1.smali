.class final Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->f(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/transsion/mbwidget/data/SportMatch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.mbwidget.SportSchedulePreviewWidgetProvider$Companion"
    f = "SportSchedulePreviewWidgetProvider.kt"
    l = {
        0x158,
        0x159
    }
    m = "bindMatch"
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;


# direct methods
.method constructor <init>(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->this$0:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->label:I

    iget-object v0, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->this$0:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->b(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/transsion/mbwidget/data/SportMatch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
