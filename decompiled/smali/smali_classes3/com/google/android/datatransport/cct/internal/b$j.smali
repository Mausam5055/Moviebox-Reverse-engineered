.class final Lcom/google/android/datatransport/cct/internal/b$j;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$j;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$j;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$j;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$j;->a:Lcom/google/android/datatransport/cct/internal/b$j;

    const-string v0, "networkType"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$j;->b:Lbc/b;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$j;->c:Lbc/b;

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

    check-cast p1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$j;->b(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lbc/d;)V
    .locals 2

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$j;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;->c()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$j;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;->b()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
