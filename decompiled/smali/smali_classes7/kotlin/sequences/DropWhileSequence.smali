.class public final Lkotlin/sequences/DropWhileSequence;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R \u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/sequences/DropWhileSequence;",
        "T",
        "Lkotlin/sequences/Sequence;",
        "",
        "iterator",
        "()Ljava/util/Iterator;",
        "a",
        "Lkotlin/sequences/Sequence;",
        "sequence",
        "Lkotlin/Function1;",
        "",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "predicate",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lkotlin/sequences/Sequence;

.field private final b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public static final synthetic c(Lkotlin/sequences/DropWhileSequence;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lkotlin/sequences/DropWhileSequence;->b:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic d(Lkotlin/sequences/DropWhileSequence;)Lkotlin/sequences/Sequence;
    .locals 0

    iget-object p0, p0, Lkotlin/sequences/DropWhileSequence;->a:Lkotlin/sequences/Sequence;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/sequences/DropWhileSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/DropWhileSequence$iterator$1;-><init>(Lkotlin/sequences/DropWhileSequence;)V

    return-object v0
.end method
