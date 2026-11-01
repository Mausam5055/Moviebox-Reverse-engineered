.class public final Lcom/google/firebase/analytics/connector/internal/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lkb/a$b;

.field private b:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private c:Lcom/google/firebase/analytics/connector/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lkb/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->a:Lkb/a$b;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/f;->b:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance p1, Lcom/google/firebase/analytics/connector/internal/e;

    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/connector/internal/e;-><init>(Lcom/google/firebase/analytics/connector/internal/f;)V

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/f;->c:Lcom/google/firebase/analytics/connector/internal/e;

    iget-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->b:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/google/firebase/analytics/connector/internal/f;)Lkb/a$b;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/f;->a:Lkb/a$b;

    return-object p0
.end method
