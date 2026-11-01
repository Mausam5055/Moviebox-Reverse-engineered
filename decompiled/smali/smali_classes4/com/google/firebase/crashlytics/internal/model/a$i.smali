.class final Lcom/google/firebase/crashlytics/internal/model/a$i;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/internal/model/a$i;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;

.field private static final g:Lbc/b;

.field private static final h:Lbc/b;

.field private static final i:Lbc/b;

.field private static final j:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/a$i;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/a$i;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->a:Lcom/google/firebase/crashlytics/internal/model/a$i;

    const-string v0, "arch"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->b:Lbc/b;

    const-string v0, "model"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->c:Lbc/b;

    const-string v0, "cores"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->d:Lbc/b;

    const-string v0, "ram"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->e:Lbc/b;

    const-string v0, "diskSpace"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->f:Lbc/b;

    const-string v0, "simulator"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->g:Lbc/b;

    const-string v0, "state"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->h:Lbc/b;

    const-string v0, "manufacturer"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->i:Lbc/b;

    const-string v0, "modelClass"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->j:Lbc/b;

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

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/a$i;->b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;Lbc/d;)V
    .locals 3

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;->c()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->f:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->g:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;->j()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->d(Lbc/b;Z)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->h:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;->i()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->i:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/a$i;->j:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$c;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
