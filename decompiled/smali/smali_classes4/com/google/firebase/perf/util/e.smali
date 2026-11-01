.class public final Lcom/google/firebase/perf/util/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/perf/util/e;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/firebase/perf/util/e;->a:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value for optional is empty."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lcom/google/firebase/perf/util/e;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/util/e;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/e;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/firebase/perf/util/e;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/firebase/perf/util/e;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/e;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/e;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/util/e;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/util/e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/util/e;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/util/e;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
