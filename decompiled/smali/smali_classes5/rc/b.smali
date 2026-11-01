.class public final Lrc/b;
.super Ljava/lang/Object;

# interfaces
.implements Luz/a;


# instance fields
.field private final a:Lrc/a;


# direct methods
.method public constructor <init>(Lrc/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrc/b;->a:Lrc/a;

    return-void
.end method

.method public static a(Lrc/a;)Lrc/b;
    .locals 1

    new-instance v0, Lrc/b;

    invoke-direct {v0, p0}, Lrc/b;-><init>(Lrc/a;)V

    return-object v0
.end method

.method public static c(Lrc/a;)Lcom/google/firebase/perf/config/a;
    .locals 0

    invoke-virtual {p0}, Lrc/a;->a()Lcom/google/firebase/perf/config/a;

    move-result-object p0

    invoke-static {p0}, Lhz/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/config/a;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/firebase/perf/config/a;
    .locals 1

    iget-object v0, p0, Lrc/b;->a:Lrc/a;

    invoke-static {v0}, Lrc/b;->c(Lrc/a;)Lcom/google/firebase/perf/config/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lrc/b;->b()Lcom/google/firebase/perf/config/a;

    move-result-object v0

    return-object v0
.end method
