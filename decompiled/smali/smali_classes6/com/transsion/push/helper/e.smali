.class public final synthetic Lcom/transsion/push/helper/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/push/bean/CalendarData;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/push/bean/CalendarData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/bean/CalendarData;

    iput-object p2, p0, Lcom/transsion/push/helper/e;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/transsion/push/helper/e;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/bean/CalendarData;

    iget-object v1, p0, Lcom/transsion/push/helper/e;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/transsion/push/helper/e;->c:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lcom/transsion/push/helper/CalendarRemindHelper;->b(Lcom/transsion/push/bean/CalendarData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
