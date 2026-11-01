.class public Lcom/google/firebase/crashlytics/internal/common/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/sessions/api/SessionSubscriber;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/internal/common/d0;

.field private final b:Lcom/google/firebase/crashlytics/internal/common/j;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/d0;Lvb/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->a:Lcom/google/firebase/crashlytics/internal/common/d0;

    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/j;

    invoke-direct {p1, p2}, Lcom/google/firebase/crashlytics/internal/common/j;-><init>(Lvb/g;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->b:Lcom/google/firebase/crashlytics/internal/common/j;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->a:Lcom/google/firebase/crashlytics/internal/common/d0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/d0;->d()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/google/firebase/sessions/api/SessionSubscriber$Name;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->CRASHLYTICS:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    return-object v0
.end method

.method public c(Lcom/google/firebase/sessions/api/SessionSubscriber$a;)V
    .locals 3

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Quality Sessions session changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->b:Lcom/google/firebase/crashlytics/internal/common/j;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/api/SessionSubscriber$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/j;->h(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->b:Lcom/google/firebase/crashlytics/internal/common/j;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->b:Lcom/google/firebase/crashlytics/internal/common/j;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/j;->i(Ljava/lang/String;)V

    return-void
.end method
