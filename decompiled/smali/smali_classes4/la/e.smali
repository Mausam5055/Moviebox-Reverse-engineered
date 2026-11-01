.class public final synthetic Lla/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/e$h$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/trackselection/e$d;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/e$d;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/e;->a:Lcom/google/android/exoplayer2/trackselection/e$d;

    iput-object p2, p0, Lla/e;->b:[I

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lla/e;->a:Lcom/google/android/exoplayer2/trackselection/e$d;

    iget-object v1, p0, Lla/e;->b:[I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/e;->p(Lcom/google/android/exoplayer2/trackselection/e$d;[IILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
