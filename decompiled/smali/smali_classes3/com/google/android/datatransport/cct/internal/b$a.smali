.class final Lcom/google/android/datatransport/cct/internal/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$a;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;

.field private static final g:Lbc/b;

.field private static final h:Lbc/b;

.field private static final i:Lbc/b;

.field private static final j:Lbc/b;

.field private static final k:Lbc/b;

.field private static final l:Lbc/b;

.field private static final m:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$a;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$a;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->a:Lcom/google/android/datatransport/cct/internal/b$a;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->b:Lbc/b;

    const-string v0, "model"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->c:Lbc/b;

    const-string v0, "hardware"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->d:Lbc/b;

    const-string v0, "device"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->e:Lbc/b;

    const-string v0, "product"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->f:Lbc/b;

    const-string v0, "osBuild"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->g:Lbc/b;

    const-string v0, "manufacturer"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->h:Lbc/b;

    const-string v0, "fingerprint"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->i:Lbc/b;

    const-string v0, "locale"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->j:Lbc/b;

    const-string v0, "country"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->k:Lbc/b;

    const-string v0, "mccMnc"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->l:Lbc/b;

    const-string v0, "applicationBuild"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->m:Lbc/b;

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

    check-cast p1, Lcom/google/android/datatransport/cct/internal/a;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$a;->b(Lcom/google/android/datatransport/cct/internal/a;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/a;Lbc/d;)V
    .locals 2

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->f:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->g:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->h:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->i:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->j:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->k:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->l:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->m:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
