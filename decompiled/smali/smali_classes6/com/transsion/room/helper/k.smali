.class public final synthetic Lcom/transsion/room/helper/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/location/FusedLocationProviderClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/helper/k;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/helper/k;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-static {v0, p1}, Lcom/transsion/room/helper/LocationPlaceHelper;->b(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
