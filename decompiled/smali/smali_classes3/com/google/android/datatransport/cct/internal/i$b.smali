.class final Lcom/google/android/datatransport/cct/internal/i$b;
.super Lcom/google/android/datatransport/cct/internal/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/android/datatransport/cct/internal/o;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/cct/internal/p;
    .locals 3

    new-instance v0, Lcom/google/android/datatransport/cct/internal/i;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/i$b;->a:Lcom/google/android/datatransport/cct/internal/o;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/internal/i;-><init>(Lcom/google/android/datatransport/cct/internal/o;Lcom/google/android/datatransport/cct/internal/i$a;)V

    return-object v0
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/o;)Lcom/google/android/datatransport/cct/internal/p$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/i$b;->a:Lcom/google/android/datatransport/cct/internal/o;

    return-object p0
.end method
