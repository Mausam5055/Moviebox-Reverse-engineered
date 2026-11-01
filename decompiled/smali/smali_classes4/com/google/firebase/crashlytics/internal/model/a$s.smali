.class final Lcom/google/firebase/crashlytics/internal/model/a$s;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "s"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/internal/model/a$s;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;

.field private static final g:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/a$s;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/a$s;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->a:Lcom/google/firebase/crashlytics/internal/model/a$s;

    const-string v0, "batteryLevel"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->b:Lbc/b;

    const-string v0, "batteryVelocity"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->c:Lbc/b;

    const-string v0, "proximityOn"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->d:Lbc/b;

    const-string v0, "orientation"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->e:Lbc/b;

    const-string v0, "ramUsed"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->f:Lbc/b;

    const-string v0, "diskUsed"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->g:Lbc/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$c;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/a$s;->b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$c;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$c;Lbc/d;)V
    .locals 3

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$c;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$c;->c()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$c;->g()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->d(Lbc/b;Z)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$c;->e()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->f:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$c;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$s;->g:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$c;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    return-void
.end method
