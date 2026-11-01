.class final Lcom/google/firebase/crashlytics/internal/model/a$z;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "z"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/internal/model/a$z;

.field private static final b:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/a$z;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/a$z;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$z;->a:Lcom/google/firebase/crashlytics/internal/model/a$z;

    const-string v0, "identifier"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$z;->b:Lbc/b;

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

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/a$z;->b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f;Lbc/d;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$z;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
