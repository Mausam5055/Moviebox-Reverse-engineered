.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$a;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/c$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()J
.end method

.method public abstract g()I
.end method

.method public abstract h()J
.end method

.method public abstract i()J
.end method

.method public abstract j()Ljava/lang/String;
.end method
