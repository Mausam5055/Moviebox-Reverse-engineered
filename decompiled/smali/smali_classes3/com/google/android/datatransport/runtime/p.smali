.class final Lcom/google/android/datatransport/runtime/p;
.super Ljava/lang/Object;

# interfaces
.implements Lr8/i;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lcom/google/android/datatransport/runtime/o;

.field private final c:Lcom/google/android/datatransport/runtime/s;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/p;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/p;->b:Lcom/google/android/datatransport/runtime/o;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/p;->c:Lcom/google/android/datatransport/runtime/s;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Lr8/g;)Lr8/h;
    .locals 1

    const-string v0, "proto"

    invoke-static {v0}, Lr8/c;->b(Ljava/lang/String;)Lr8/c;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/datatransport/runtime/p;->b(Ljava/lang/String;Ljava/lang/Class;Lr8/c;Lr8/g;)Lr8/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;Lr8/c;Lr8/g;)Lr8/h;
    .locals 6

    iget-object p2, p0, Lcom/google/android/datatransport/runtime/p;->a:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/datatransport/runtime/r;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/p;->b:Lcom/google/android/datatransport/runtime/o;

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/p;->c:Lcom/google/android/datatransport/runtime/s;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/r;-><init>(Lcom/google/android/datatransport/runtime/o;Ljava/lang/String;Lr8/c;Lr8/g;Lcom/google/android/datatransport/runtime/s;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/google/android/datatransport/runtime/p;->a:Ljava/util/Set;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    const/4 p3, 0x1

    aput-object p2, p4, p3

    const-string p2, "%s is not supported byt this factory. Supported encodings are: %s."

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
