.class Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDispatcher"
.end annotation


# instance fields
.field private final mInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/emoji2/text/EmojiCompat$f;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadState:I

.field private final mThrowable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompat$f;I)V
    .locals 2
    .param p1    # Landroidx/emoji2/text/EmojiCompat$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/i;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/text/EmojiCompat$f;

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/emoji2/text/EmojiCompat$f;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;I)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/emoji2/text/EmojiCompat$f;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;ILjava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/emoji2/text/EmojiCompat$f;",
            ">;I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "initCallbacks cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/i;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    iput p2, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mLoadState:I

    iput-object p3, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mThrowable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mLoadState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/EmojiCompat$f;

    iget-object v2, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mThrowable:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Landroidx/emoji2/text/EmojiCompat$f;->a(Ljava/lang/Throwable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/EmojiCompat$f;

    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiCompat$f;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
