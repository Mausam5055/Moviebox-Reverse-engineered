.class abstract Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PriorityRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final priority:I


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/Priority;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;->priority:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;-><init>(Lcom/bumptech/glide/Priority;)V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;)I
    .locals 1

    iget p1, p1, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;->priority:I

    iget v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;->priority:I

    if-le p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;->compareTo(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;)I

    move-result p1

    return p1
.end method
