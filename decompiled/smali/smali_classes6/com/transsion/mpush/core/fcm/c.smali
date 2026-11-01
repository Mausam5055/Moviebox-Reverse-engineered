.class public final synthetic Lcom/transsion/mpush/core/fcm/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/mpush/core/fcm/FCMPushHelper;

.field public final synthetic b:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mpush/core/fcm/c;->a:Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    iput-object p2, p0, Lcom/transsion/mpush/core/fcm/c;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/mpush/core/fcm/c;->a:Lcom/transsion/mpush/core/fcm/FCMPushHelper;

    iget-object v1, p0, Lcom/transsion/mpush/core/fcm/c;->b:Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->d(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
