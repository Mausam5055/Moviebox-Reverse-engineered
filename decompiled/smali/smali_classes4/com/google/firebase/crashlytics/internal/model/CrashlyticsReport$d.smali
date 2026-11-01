.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/f$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/f$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
.end method

.method public abstract c()Ljava/lang/String;
.end method
