.class public Lcom/google/firebase/crashlytics/internal/send/b;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ltb/j;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Lr8/g;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

.field private final b:Lr8/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltb/j;

    invoke-direct {v0}, Ltb/j;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/send/b;->c:Ltb/j;

    const-string v0, "hts/cahyiseot-agolai.o/1frlglgc/aclg"

    const-string v1, "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho"

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/send/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/send/b;->d:Ljava/lang/String;

    const-string v0, "AzSBpY4F0rHiHFdinTvM"

    const-string v1, "IayrSTFL9eJ69YeSUO2"

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/send/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/send/b;->e:Ljava/lang/String;

    new-instance v0, Lcom/google/firebase/crashlytics/internal/send/a;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/send/a;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/send/b;->f:Lr8/g;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/crashlytics/internal/send/ReportQueue;Lr8/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/send/b;->a:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/send/b;->b:Lr8/g;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)[B
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/send/b;->d(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lwb/b;Lcom/google/firebase/crashlytics/internal/common/l0;)Lcom/google/firebase/crashlytics/internal/send/b;
    .locals 4

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/t;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/t;->c()Lcom/google/android/datatransport/runtime/t;

    move-result-object p0

    new-instance v0, Lcom/google/android/datatransport/cct/a;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/send/b;->d:Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/crashlytics/internal/send/b;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/t;->g(Lcom/google/android/datatransport/runtime/f;)Lr8/i;

    move-result-object p0

    const-string v0, "json"

    invoke-static {v0}, Lr8/c;->b(Ljava/lang/String;)Lr8/c;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/crashlytics/internal/send/b;->f:Lr8/g;

    const-string v2, "FIREBASE_CRASHLYTICS_REPORT"

    const-class v3, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    invoke-interface {p0, v2, v3, v0, v1}, Lr8/i;->b(Ljava/lang/String;Ljava/lang/Class;Lr8/c;Lr8/g;)Lr8/h;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    invoke-interface {p1}, Lwb/b;->b()Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/send/ReportQueue;-><init>(Lr8/h;Lcom/google/firebase/crashlytics/internal/settings/c;Lcom/google/firebase/crashlytics/internal/common/l0;)V

    new-instance p0, Lcom/google/firebase/crashlytics/internal/send/b;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/send/b;-><init>(Lcom/google/firebase/crashlytics/internal/send/ReportQueue;Lr8/g;)V

    return-object p0
.end method

.method private static synthetic d(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)[B
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/send/b;->c:Ltb/j;

    invoke-virtual {v0, p0}, Ltb/j;->M(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input received"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c(Lcom/google/firebase/crashlytics/internal/common/a0;Z)Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/send/b;->a:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/send/ReportQueue;->i(Lcom/google/firebase/crashlytics/internal/common/a0;Z)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
