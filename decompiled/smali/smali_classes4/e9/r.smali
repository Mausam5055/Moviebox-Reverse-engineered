.class public final synthetic Le9/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/PlaybackException;


# direct methods
.method public synthetic constructor <init>(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/r;->a:Le9/c$a;

    iput-object p2, p0, Le9/r;->b:Lcom/google/android/exoplayer2/PlaybackException;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le9/r;->a:Le9/c$a;

    iget-object v1, p0, Le9/r;->b:Lcom/google/android/exoplayer2/PlaybackException;

    check-cast p1, Le9/c;

    invoke-static {v0, v1, p1}, Le9/p1;->O0(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;Le9/c;)V

    return-void
.end method
