.class public Lcom/google/firebase/crashlytics/internal/settings/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/settings/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->a:Z

    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->b:Z

    iput-boolean p3, p0, Lcom/google/firebase/crashlytics/internal/settings/c$a;->c:Z

    return-void
.end method
