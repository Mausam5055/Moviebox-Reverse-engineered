.class public Lcom/google/firebase/crashlytics/internal/common/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lob/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lob/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/a;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/a;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/common/a;->h:Lob/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lob/f;)Lcom/google/firebase/crashlytics/internal/common/a;
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/g0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v5, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/a;->b(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "0.0"

    :cond_0
    move-object v7, p0

    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/a;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/crashlytics/internal/common/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lob/f;)V

    return-object p0
.end method

.method private static b(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Ld7/a;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
