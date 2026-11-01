.class public final synthetic Lla/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/n;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/trackselection/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/h;->a:Lcom/google/android/exoplayer2/trackselection/e;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lla/h;->a:Lcom/google/android/exoplayer2/trackselection/e;

    check-cast p1, Lcom/google/android/exoplayer2/o1;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/e;->o(Lcom/google/android/exoplayer2/trackselection/e;Lcom/google/android/exoplayer2/o1;)Z

    move-result p1

    return p1
.end method
