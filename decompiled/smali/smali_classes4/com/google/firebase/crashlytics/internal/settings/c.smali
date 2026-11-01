.class public Lcom/google/firebase/crashlytics/internal/settings/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/settings/c$b;,
        Lcom/google/firebase/crashlytics/internal/settings/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/firebase/crashlytics/internal/settings/c$b;

.field public final b:Lcom/google/firebase/crashlytics/internal/settings/c$a;

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:D

.field public final g:D

.field public final h:I


# direct methods
.method public constructor <init>(JLcom/google/firebase/crashlytics/internal/settings/c$b;Lcom/google/firebase/crashlytics/internal/settings/c$a;IIDDI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/crashlytics/internal/settings/c;->c:J

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/c;->a:Lcom/google/firebase/crashlytics/internal/settings/c$b;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/c;->b:Lcom/google/firebase/crashlytics/internal/settings/c$a;

    iput p5, p0, Lcom/google/firebase/crashlytics/internal/settings/c;->d:I

    iput p6, p0, Lcom/google/firebase/crashlytics/internal/settings/c;->e:I

    iput-wide p7, p0, Lcom/google/firebase/crashlytics/internal/settings/c;->f:D

    iput-wide p9, p0, Lcom/google/firebase/crashlytics/internal/settings/c;->g:D

    iput p11, p0, Lcom/google/firebase/crashlytics/internal/settings/c;->h:I

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/settings/c;->c:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
