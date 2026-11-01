.class final Lcom/google/android/datatransport/cct/internal/f$b;
.super Lcom/google/android/datatransport/cct/internal/ComplianceData$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/android/datatransport/cct/internal/p;

.field private b:Lcom/google/android/datatransport/cct/internal/ComplianceData$ProductIdOrigin;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/ComplianceData$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/cct/internal/ComplianceData;
    .locals 4

    new-instance v0, Lcom/google/android/datatransport/cct/internal/f;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/f$b;->a:Lcom/google/android/datatransport/cct/internal/p;

    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/f$b;->b:Lcom/google/android/datatransport/cct/internal/ComplianceData$ProductIdOrigin;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/cct/internal/f;-><init>(Lcom/google/android/datatransport/cct/internal/p;Lcom/google/android/datatransport/cct/internal/ComplianceData$ProductIdOrigin;Lcom/google/android/datatransport/cct/internal/f$a;)V

    return-object v0
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/p;)Lcom/google/android/datatransport/cct/internal/ComplianceData$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/f$b;->a:Lcom/google/android/datatransport/cct/internal/p;

    return-object p0
.end method

.method public c(Lcom/google/android/datatransport/cct/internal/ComplianceData$ProductIdOrigin;)Lcom/google/android/datatransport/cct/internal/ComplianceData$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/f$b;->b:Lcom/google/android/datatransport/cct/internal/ComplianceData$ProductIdOrigin;

    return-object p0
.end method
