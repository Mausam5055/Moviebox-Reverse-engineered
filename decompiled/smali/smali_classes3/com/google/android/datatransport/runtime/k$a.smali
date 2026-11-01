.class abstract Lcom/google/android/datatransport/runtime/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/k;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/k;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/k$a;->a:Lcom/google/android/datatransport/runtime/k;

    return-void
.end method

.method static synthetic a()Lcom/google/android/datatransport/runtime/k;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/k$a;->a:Lcom/google/android/datatransport/runtime/k;

    return-object v0
.end method
