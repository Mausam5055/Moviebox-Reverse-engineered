.class final Lcom/google/firebase/crashlytics/ndk/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/ndk/f$b;,
        Lcom/google/firebase/crashlytics/ndk/f$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/firebase/crashlytics/ndk/f$c;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;

.field public final g:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/ndk/f$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/f$b;->a(Lcom/google/firebase/crashlytics/ndk/f$b;)Lcom/google/firebase/crashlytics/ndk/f$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/f;->a:Lcom/google/firebase/crashlytics/ndk/f$c;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/f$b;->b(Lcom/google/firebase/crashlytics/ndk/f$b;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/f;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/f$b;->c(Lcom/google/firebase/crashlytics/ndk/f$b;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/f;->c:Ljava/io/File;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/f$b;->d(Lcom/google/firebase/crashlytics/ndk/f$b;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/f;->d:Ljava/io/File;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/f$b;->e(Lcom/google/firebase/crashlytics/ndk/f$b;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/f;->e:Ljava/io/File;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/f$b;->f(Lcom/google/firebase/crashlytics/ndk/f$b;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/f;->f:Ljava/io/File;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/f$b;->g(Lcom/google/firebase/crashlytics/ndk/f$b;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/f;->g:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/ndk/f$b;Lcom/google/firebase/crashlytics/ndk/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/ndk/f;-><init>(Lcom/google/firebase/crashlytics/ndk/f$b;)V

    return-void
.end method
