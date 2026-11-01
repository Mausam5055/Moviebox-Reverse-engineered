.class public final synthetic Lla/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/e$h$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/trackselection/e;

.field public final synthetic b:Lcom/google/android/exoplayer2/trackselection/e$d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/e;Lcom/google/android/exoplayer2/trackselection/e$d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/f;->a:Lcom/google/android/exoplayer2/trackselection/e;

    iput-object p2, p0, Lla/f;->b:Lcom/google/android/exoplayer2/trackselection/e$d;

    iput-boolean p3, p0, Lla/f;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lla/f;->a:Lcom/google/android/exoplayer2/trackselection/e;

    iget-object v1, p0, Lla/f;->b:Lcom/google/android/exoplayer2/trackselection/e$d;

    iget-boolean v2, p0, Lla/f;->c:Z

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/e;->t(Lcom/google/android/exoplayer2/trackselection/e;Lcom/google/android/exoplayer2/trackselection/e$d;ZILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
