.class public final synthetic Lcom/transsion/push/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-static {p1}, Lcom/transsion/push/PushTestActivity$showLocalPushList$1;->a(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
