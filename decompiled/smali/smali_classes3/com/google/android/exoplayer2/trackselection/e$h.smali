.class abstract Lcom/google/android/exoplayer2/trackselection/e$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/e$h$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/TrackGroup;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/o1;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/TrackGroup;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/e$h;->a:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/e$h;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/e$h;->c:I

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$h;->d:Lcom/google/android/exoplayer2/o1;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lcom/google/android/exoplayer2/trackselection/e$h;)Z
.end method
