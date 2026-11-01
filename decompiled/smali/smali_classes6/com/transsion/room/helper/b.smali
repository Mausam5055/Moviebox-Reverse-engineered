.class public final synthetic Lcom/transsion/room/helper/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/helper/b;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/helper/b;->a:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-static {v0, p1}, Lcom/transsion/room/helper/e;->f(Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/location/LocationSettingsResponse;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
