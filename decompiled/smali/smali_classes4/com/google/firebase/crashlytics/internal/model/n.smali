.class final Lcom/google/firebase/crashlytics/internal/model/n;
.super Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/n$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

.field private final c:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

.field private final d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

.field private final e:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/model/n;->b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/model/n;->c:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/model/n;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/model/n;->e:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/n$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/crashlytics/internal/model/n;-><init>(Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/n;->c:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/n;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/n;->b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    return-object v0
.end method

.method public e()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/n;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->a:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->f()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->d()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->d()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->c:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->e()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/n;->a:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/n;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/model/n;->b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/model/n;->c:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execution{threads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appExitInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->c:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", binaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
