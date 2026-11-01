.class public final synthetic Lcom/transsion/push/helper/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/push/bean/CalendarData;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/push/bean/CalendarData;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/push/helper/c;->a:Lcom/transsion/push/bean/CalendarData;

    iput-object p2, p0, Lcom/transsion/push/helper/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/push/helper/c;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/transsion/push/helper/c;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/push/helper/c;->a:Lcom/transsion/push/bean/CalendarData;

    iget-object v1, p0, Lcom/transsion/push/helper/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/push/helper/c;->c:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/transsion/push/helper/c;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/push/helper/CalendarRemindHelper;->c(Lcom/transsion/push/bean/CalendarData;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
