.class public final synthetic Le9/d1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/video/y;


# direct methods
.method public synthetic constructor <init>(Le9/c$a;Lcom/google/android/exoplayer2/video/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/d1;->a:Le9/c$a;

    iput-object p2, p0, Le9/d1;->b:Lcom/google/android/exoplayer2/video/y;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le9/d1;->a:Le9/c$a;

    iget-object v1, p0, Le9/d1;->b:Lcom/google/android/exoplayer2/video/y;

    check-cast p1, Le9/c;

    invoke-static {v0, v1, p1}, Le9/p1;->p0(Le9/c$a;Lcom/google/android/exoplayer2/video/y;Le9/c;)V

    return-void
.end method
