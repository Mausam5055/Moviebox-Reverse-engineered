.class public final synthetic Lz8/n;
.super Ljava/lang/Object;

# interfaces
.implements Lb9/a$a;


# instance fields
.field public final synthetic a:Lz8/o;

.field public final synthetic b:Lcom/google/android/datatransport/runtime/o;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lz8/o;Lcom/google/android/datatransport/runtime/o;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/n;->a:Lz8/o;

    iput-object p2, p0, Lz8/n;->b:Lcom/google/android/datatransport/runtime/o;

    iput-wide p3, p0, Lz8/n;->c:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lz8/n;->a:Lz8/o;

    iget-object v1, p0, Lz8/n;->b:Lcom/google/android/datatransport/runtime/o;

    iget-wide v2, p0, Lz8/n;->c:J

    invoke-static {v0, v1, v2, v3}, Lz8/o;->g(Lz8/o;Lcom/google/android/datatransport/runtime/o;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
