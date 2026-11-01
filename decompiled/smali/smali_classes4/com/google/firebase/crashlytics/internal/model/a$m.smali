.class final Lcom/google/firebase/crashlytics/internal/model/a$m;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/internal/model/a$m;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/a$m;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/a$m;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->a:Lcom/google/firebase/crashlytics/internal/model/a$m;

    const-string v0, "threads"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->b:Lbc/b;

    const-string v0, "exception"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->c:Lbc/b;

    const-string v0, "appExitInfo"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->d:Lbc/b;

    const-string v0, "signal"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->e:Lbc/b;

    const-string v0, "binaries"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->f:Lbc/b;

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

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/a$m;->b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;Lbc/d;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->d()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->e()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$m;->f:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
