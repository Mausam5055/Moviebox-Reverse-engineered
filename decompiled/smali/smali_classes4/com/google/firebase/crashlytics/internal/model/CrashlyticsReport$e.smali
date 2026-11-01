.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$a;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;
    .locals 2

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/h$b;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/h$b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/h$b;->d(Z)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$a;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;
.end method

.method public abstract e()Ljava/lang/Long;
.end method

.method public abstract f()Ljava/util/List;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()I
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public j()[B
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract k()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$e;
.end method

.method public abstract l()J
.end method

.method public abstract m()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f;
.end method

.method public abstract n()Z
.end method

.method public abstract o()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;
.end method

.method p(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->o()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    move-result-object p1

    return-object p1
.end method

.method q(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->o()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;->g(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    move-result-object p1

    return-object p1
.end method

.method r(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->o()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;->f(Ljava/lang/Long;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;

    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;->d(Z)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;->n(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    move-result-object p1

    return-object p1
.end method
