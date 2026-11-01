.class public final Lcom/google/android/exoplayer2/v1$e;
.super Lcom/google/android/exoplayer2/v1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final h:Lcom/google/android/exoplayer2/v1$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/v1$d$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/v1$d$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v1$d$a;->g()Lcom/google/android/exoplayer2/v1$e;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/v1$e;->h:Lcom/google/android/exoplayer2/v1$e;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/v1$d$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/v1$d;-><init>(Lcom/google/android/exoplayer2/v1$d$a;Lcom/google/android/exoplayer2/v1$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/v1$d$a;Lcom/google/android/exoplayer2/v1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/v1$e;-><init>(Lcom/google/android/exoplayer2/v1$d$a;)V

    return-void
.end method
