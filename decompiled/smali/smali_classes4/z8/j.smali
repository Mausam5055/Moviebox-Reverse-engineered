.class public final synthetic Lz8/j;
.super Ljava/lang/Object;

# interfaces
.implements Lb9/a$a;


# instance fields
.field public final synthetic a:Lz8/o;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lcom/google/android/datatransport/runtime/o;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lz8/o;Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/o;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/j;->a:Lz8/o;

    iput-object p2, p0, Lz8/j;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Lz8/j;->c:Lcom/google/android/datatransport/runtime/o;

    iput-wide p4, p0, Lz8/j;->d:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lz8/j;->a:Lz8/o;

    iget-object v1, p0, Lz8/j;->b:Ljava/lang/Iterable;

    iget-object v2, p0, Lz8/j;->c:Lcom/google/android/datatransport/runtime/o;

    iget-wide v3, p0, Lz8/j;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lz8/o;->b(Lz8/o;Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/o;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
