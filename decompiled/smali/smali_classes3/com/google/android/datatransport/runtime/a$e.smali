.class final Lcom/google/android/datatransport/runtime/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/runtime/a$e;

.field private static final b:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/a$e;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/a$e;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/a$e;->a:Lcom/google/android/datatransport/runtime/a$e;

    const-string v0, "clientMetrics"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/a$e;->b:Lbc/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    check-cast p2, Lbc/d;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/a$e;->b(Lcom/google/android/datatransport/runtime/m;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/runtime/m;Lbc/d;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
