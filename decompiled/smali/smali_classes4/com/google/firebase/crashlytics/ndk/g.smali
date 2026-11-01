.class Lcom/google/firebase/crashlytics/ndk/g;
.super Ljava/lang/Object;

# interfaces
.implements Lob/h;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/ndk/f;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/ndk/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->f:Ljava/io/File;

    return-object v0
.end method

.method public b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->a:Lcom/google/firebase/crashlytics/ndk/f$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f$c;->b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->a:Lcom/google/firebase/crashlytics/ndk/f$c;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f$c;->a:Ljava/io/File;

    return-object v0
.end method

.method public d()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->c:Ljava/io/File;

    return-object v0
.end method

.method public e()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->e:Ljava/io/File;

    return-object v0
.end method

.method public f()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->g:Ljava/io/File;

    return-object v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->d:Ljava/io/File;

    return-object v0
.end method
