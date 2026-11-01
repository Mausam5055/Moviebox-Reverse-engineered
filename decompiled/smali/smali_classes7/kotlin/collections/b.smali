.class public final synthetic Lkotlin/collections/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/collections/AbstractMap;


# direct methods
.method public synthetic constructor <init>(Lkotlin/collections/AbstractMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/b;->a:Lkotlin/collections/AbstractMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/b;->a:Lkotlin/collections/AbstractMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lkotlin/collections/AbstractMap;->e(Lkotlin/collections/AbstractMap;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
